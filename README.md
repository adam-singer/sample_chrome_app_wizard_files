`web/dart.js` is a modified version of dart.js stored locally. Its modified to 
cause of minor differences in window.localStore. vsmenon knows about this and 
might be planning a proper patch at some point. It has to be stored locally to 
the project and sourced in the html.  

`web/dart_interop.js` is the js file directly copied from js-interop package. 
It has to be stored locally to the project and sourced in the html. This is needed
if the user wants to call any of the chrome.* APIs, otherwise its not needed. 

`web/sample_chrome_app_wizard_files.html` script tags included and modified 
since chrome apps dont have dart support, only javascript should be loaded. 

`web/main.js` required background file that launches web/sample_chrome_app_wizard_files.html

`web/manifest.json` required manifest file [developers_guide](https://developers.google.com/chrome/apps/docs/developers_guide)

`compile.sh` script to compile web/sample_chrome_app_wizard_files.dart

`chrome_load_test.sh` is an example script of how to load the extension from commandline
and launch the chrome web browser. 

Build and Run

```
~/dart/sample_chrome_app_wizard_files
$ ./compile.sh && ./chrome_load_test.sh 
```