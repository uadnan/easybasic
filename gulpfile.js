// get the dependencies
var gulp = require('gulp'),
  childProcess = require('child_process'),
  electron = require('electron-prebuilt'),
  electronInstaller = require('electron-winstaller'),
  packager = require('electron-packager'),
  fs = require('fs'),
  ncp = require('ncp').ncp,
  rimraf = require('rimraf');

var release_windows = require('./build.windows'); 
var os = require('os'); 

var failed = false;
var copyJson = fs.readFileSync("Copy.json", "utf8");
var copyFile2 = JSON.parse(copyJson).files;

// create the gulp task
gulp.task('run', function () {
  childProcess.spawn(electron, ['--debug=5858', '.'], { stdio: 'inherit' });
});

gulp.task('cleanForGithub', function () {
  var folders = [
    "..\\easybasic\\Examples",
    "..\\easybasic\\src"
  ]
  var files = [
    "..\\easybasic\\gulpfile.js",
    "..\\easybasic\\main.js",
    "..\\easybasic\\package.json"
  ]
  toCopy = [
    {"source": "Examples", "dist": "..\\easybasic\\Examples"},
    {"source": "src", "dist": "..\\easybasic\\src"},

    {"source": "Copy.json", "dist": "..\\easybasic\\Copy.json"},
    {"source": "gulpfile.js", "dist": "..\\easybasic\\gulpfile.js"},
    {"source": "main.js", "dist": "..\\easybasic\\main.js"},
    {"source": "package.json", "dist": "..\\easybasic\\package.json"}
  ]
  folders.forEach(function(folder){
    rimraf(folder, function(err){
      if (err) throw err;
      else console.log(`successfully deleted ${folder}`);
    });
  })
  files.forEach(function(file){
    fs.unlink(file, (err) => {
      if (err) console.log("Unable to delete: ", file);
      else console.log(`successfully deleted ${file}`);
    });
  })

    var n =0;
    var e =0;
  setTimeout(function(){
    for (var i = 0; i < toCopy.length; i++) {      
      var source = toCopy[i].source;
      var destination = toCopy[i].dist;
      ncp(source, destination, function (err) {
        if (err) e++;
        else n ++;
      });
    }
  }, 200)
  setTimeout(function(){
    console.log(`${n} copied, ${e} failed`)
  },2000);
});

gulp.task('package', function () {
  //var packager = childProcess.spawn('node', ['--version']);
  var packager = childProcess.spawn('electron-packager.cmd', ['.', '--platform=win32', '--arch=ia32', '--icon="resources/windows/icon.ico"']);

  packager.stderr.on('data', (data) => {
  failed = true;
    console.log(`${data}`);
  });

  packager.stdout.on('data', (data) => {
    console.log(`${data}`);
  });

  packager.on('close', (code) => {
    if (code !== 0) {
      console.log(`electron packager exited with code ${code}`);
    }
    clearExtraFiles();
    addRequiredFiles();
  });
});

gulp.task('build', function () {
  resultPromise = electronInstaller.createWindowsInstaller({
    appDirectory: 'EasyBasic-win32-ia32/',
    outputDirectory: 'dist/',
    authors: 'Nauman Umer',
    exe: 'EasyBasic.exe'
  });
 
  resultPromise.then(() => {
    
  }, 
  (e) => console.log(`No dice: ${e.message}`));
});

function clearExtraFiles(){
  var files = [
    'EasyBasic-win32-ia32\\resources\\app\\gulpfile.js',
    'EasyBasic-win32-ia32\\resources\\app\\New Text Document.txt',
    'EasyBasic-win32-ia32\\resources\\app\\gulpfile.js',
    'EasyBasic-win32-ia32\\resources\\app\\Copy.json',

    'EasyBasic-win32-ia32\\resources\\app\\src\\Doc.json',
    'EasyBasic-win32-ia32\\resources\\app\\src\\Examples.json',
    'EasyBasic-win32-ia32\\resources\\app\\src\\Recent.json',
    'EasyBasic-win32-ia32\\resources\\app\\src\\shortcuts.json',
    'EasyBasic-win32-ia32\\resources\\app\\src\\assets\\Detail.json'
  ];
  var folders = [
    'EasyBasic-win32-ia32\\resources\\app\\.vscode',
    'EasyBasic-win32-ia32\\resources\\app\\Examples'
  ];

  fs.stat("EasyBasic-win32-ia32", function (err, stats) {
      if (err) return;     
      else{
        console.log('Clearing Extra Files\n');

        files.forEach(function(file){
          fs.stat(file, function (err, stats) {
            if (err) console.log("File not found: ",file);
            else{
              fs.unlink(file, (err) => {
                if (err) console.log("Unable to delete: ", file);
                else console.log(`successfully deleted ${file}`);
              });
            }
          })
        })

        folders.forEach(function(folder){
          fs.stat(folder, function (err, stats) {
            if (err) console.log("Directory not found: ",folder);
            else{
              fs.readdir(folder, (err, files) =>{
                files.forEach(function(file){
                  fs.unlink((folder+"\\"+file), (err) => {
                    if (err) console.log("Unable to delete: ", (folder+"\\"+file));
                    else console.log(`successfully deleted ${(folder+"\\"+file)}`);
                  });
                })
              })
              fs.rmdir(folder, function(err){
                if (err) console.log("Unable to delete directory: ",folder);
                else console.log(`successfully deleted ${folder}`);
              })
            }
          });
        })
      }
  })
}

function addRequiredFiles(){
  if (!fs.existsSync("EasyBasic-win32-ia32")){
    fs.mkdir("EasyBasic-win32-ia32");
  }
  
  fs.mkdir("EasyBasic-win32-ia32\\json");
  fs.writeFile("EasyBasic-win32-ia32\\json\\Recent.json", '{"name":"Recent Files","files":[]}', function(err) {
    if(err) return console.log('Unable to write: EasyBasic-win32-ia32\\json\\Recent.json');
    else console.log('Successfully written: EasyBasic-win32-ia32\\json\\Recent.json');
  });
  for (var i = 0; i < copyFile2.length; i++) {
    source = copyFile2[i].source;
    destination = "EasyBasic-win32-ia32\\"+copyFile2[i].dist;
    ncp(source, destination, function (err) {
      if (err) {
        return console.error(err);
      }
      console.log('done!');
    });
  }
}

gulp.task('build-electron', ['build'], function () { 
     switch (os.platform()) { 
         case 'darwin': 
         // execute build.osx.js 
         break; 
         case 'linux': 
         //execute build.linux.js 
         break; 
         case 'win32': 
         return release_windows.build(); 
     } 
}); 