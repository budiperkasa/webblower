(function(doc, script) {
    var js, 
        fjs = doc.getElementsByTagName(script)[0],
        add = function(url, id) {
            if (doc.getElementById(id)) {return;}
            js = doc.createElement(script);
            js.src = url;
            id && (js.id = id);
            fjs.parentNode.insertBefore(js, fjs);
        };
    add('//connect.facebook.net/en_US/all.js#xfbml=1', 'facebook-jssdk');
}(document, 'script'));