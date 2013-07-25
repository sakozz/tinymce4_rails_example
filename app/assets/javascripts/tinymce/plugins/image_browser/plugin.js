tinymce.PluginManager.add('image_browser', function(editor, url) {
    // Add a button that opens a window
    editor.addButton('image_browser', {
        text: 'Insert image',
        icon: false,
        onclick: open_image_browser        
    });    
    
    // Opens browser window
    function open_image_browser() {
        editor.windowManager.open({
            title: 'Image Manager',
            id: 'file_manager',
            url: '/filemanagers/',
            width: 800,
            height: 600,
            buttons: [{
                text: 'Insert',
                classes: 'btn primary',
                onclick: 'submit'
            },{
                text: 'Close',
                onclick: 'close'
            }],
            onsubmit: insert_images           
        });
    }
   
    // Finds and inserts selected images 
   function insert_images(){
        var content=document.getElementsByClassName('mce-floatpanel')[0]
        var iframe=content.getElementsByTagName('iframe')[0]
        var body=iframe.contentWindow.document.body;
        var selected_img=body.getElementsByClassName('active')
        var range = editor.selection.getRng();
        var len=selected_img.length;  
        for(var i=0; i<len ; i++){
            image_node=selected_img[i].getElementsByClassName('media')[0]
            range.insertNode(image_node);  
        }
    }
});
