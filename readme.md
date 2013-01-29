BBMVCExampleProject-Haxe
========================

This is a Haxified version of Matthew Wallace's AS3 BBMVCExample.

https://github.com/matthewswallace/BBMVCExampleProject

After changing the name access in IBBView to the following...

    #if (cpp || neko)
        var name(get_name, set_name):String;
    #else	
        var name:String;
    #end

...it seems to compile and run as expected for Flash, Html5, Neko, Windows and Android.

All credits to Matthew!

