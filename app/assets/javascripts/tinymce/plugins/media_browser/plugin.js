tinymce.PluginManager.add('media_browser', function(editor, url) {
    // Add a button that opens a window
    editor.addButton('media_browser', {
        text: 'Insert media',
        icon: false,
        onclick: open_media_browser        
    });    
    
    // Opens browser window
    function open_media_browser() {
        editor.windowManager.open({
            title: 'media Manager',
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
            onsubmit: insert_media           
        });
    }
   
    // Finds and inserts selected media 
   function insert_media(){
        var content=document.getElementsByClassName('mce-floatpanel')[0]
        var iframe=content.getElementsByTagName('iframe')[0]
        var body=iframe.contentWindow.document.body;
        var selected_img=body.getElementsByClassName('active')
        var range = editor.selection.getRng();
        var len=selected_img.length;  
        for(var i=0; i<len ; i++){
            media_node=selected_img[i].getElementsByClassName('media')[0]
            range.insertNode(media_node);  
        }
    }
});
