module Plugins
  module Core
    class UserCell < Plugins::Core::Cell
      def dropdown
        render
      end

      private

      def value
        data&.[]('user_id') || @options[:default_value]
      end

      def render_select
        @options[:form].select 'data[user_id]', user_data_for_select, {selected: value}
      end

      def user_data_for_select
        @options[:user_data].map{ |user| ["#{user.fullname} (#{user.email})", user.id] }
      end
    end
  end
end
