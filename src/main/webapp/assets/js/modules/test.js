define(function (require) {

    var $         = require('jquery'),
        mediator  = require('mediator'),
        bsp_utils = require('bsp-utils'),

    module = {

      '_install': function() {
            var plugin = this;

            console.log('----_install------------------');
            console.log('This gets called whenever the plugin is installed, which means as soon as bsp_utils.plugin() is called. This could be before doc ready.');
        },

        '_init': function(document, selector) {
            var plugin = this;

            console.log('----_init------------------');
            console.log('This gets called whenever the plugin is actually initialized by bsp-utils after document ready. This will get the DOM and the selector via which you could try to reference your module.');
            console.log(document);
            console.log(selector);
        },

        '_each': function(item) {

            console.log('----_each------------------');
            console.log('This gets called whenever the plugin is actually called PER ELEMENT. It gets passed the actual DOM element.');
            console.log(item);
            console.log($(item).text());
        },

        '_all': function(items) {

            console.log('----_all------------------');
            console.log('This gets called whenever the plugin is actually called, but once, after all of the _eaches are done. It gets passed an array of DOM element.');
            console.log(items);
        },
    };

    return bsp_utils.plugin(false, 'namespace', 'testPlugin', module);

});