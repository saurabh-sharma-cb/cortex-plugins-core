$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "cortex/plugins/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "cortex-plugins-core"
  s.version = Cortex::Plugins::Core::VERSION
  s.authors = ['CareerBuilder Employer Site & Content Products']
  s.email = 'toastercup@gmail.com'

  s.summary = %q{The combined set of Core FieldTypes for the Cortex CMS platform}
  s.homepage = "https://github.com/cortex-cms/cortex-plugins-core"
  s.license = "Apache-2.0"

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.test_files = Dir["spec/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 5"
  s.add_dependency "cells", "~> 5.0"
  s.add_dependency "cells-rails", "~> 1.0"
  s.add_dependency "cells-haml", "~> 1.0"
  s.add_dependency "jsonb_accessor", "~> 2.0"

  # AssetFieldType
  s.add_dependency "shrine", "~> 3.0"
  s.add_dependency "aws-sdk-s3", "~> 2.0"
  s.add_dependency "mimemagic", "~> 1.0"
  s.add_dependency "image_processing", "~> 2.0"
  s.add_dependency "mini_magick", "~> 5.0"
  s.add_dependency "fastimage", "~> 3.0"
  s.add_dependency "image_optim", "~> 2.0"
  s.add_dependency "image_optim_pack", "~> 1.0"
end
