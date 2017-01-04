(function (global) {
  'use strict';

  global.CKEDITOR.plugins.add('cortex_media_insert', {
    init: function (editor) {
      editor.addCommand('insertMedia', {
        exec: function (editor) {
          window.MODALS.wysiwyg.open();

          global.media_select = {};
          global.media_select_defer = $.Deferred();
          global.media_select_defer.promise(global.media_select);

          global.media_select.done(function (media) {
            window.MODALS.wysiwyg.close();

            var mediaTag = editor.document.createElement('media');
            mediaTag.setAttribute('id', media.id);
            mediaTag.setText(" " + media.title);

            editor.insertElement(mediaTag);
          });
        }
      });

      editor.ui.addButton('cortexMediaInsert', {
        label: 'Insert Media',
        command: 'insertMedia',
        toolbar: 'insert,0',
        icon: 'image'
      });
    }
  });
}(this));
