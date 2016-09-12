module.exports = function(grunt) {
  grunt.initConfig({
    'create-windows-installer': {
      ia32: {
        appDirectory: './EasyBasic-win32-ia32',
        outputDirectory: './dist',
        name: 'EasyBasic',
        description: 'An IDE for GwBasic',
        authors: 'Nauman Umer',
        exe: 'EasyBasic.exe'
      }
    }
  });

  grunt.loadNpmTasks('grunt-electron-installer');
};