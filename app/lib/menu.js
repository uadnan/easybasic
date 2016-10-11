'use strict'

const isDev = (require('electron-is-dev') || global.appSettings.debug)
const { app } = require('electron')
const ipc = require('electron').ipcMain
const BrowserWindow  = require('electron').BrowserWindow;

var menuTemplate = [
  {
    label: '&File',
    submenu: [
      {
        label: 'New File',
        accelerator: 'CmdOrCtrl+N',
        click: function (item, focusedWindow) {
          if (focusedWindow) {
             console.warn('Feaature not impelmented yet.')
          }
        }
      }, {
        label: 'New Window',
        accelerator: 'CmdOrCtrl+Shift+N',
        click: function (item, focusedWindow) {
          if (focusedWindow) {
             console.warn('Feaature not impelmented yet.')
          }
        } 
      }, {
          label:'Open File...',
          accelerator: 'CmdOrCtrl+O',
          click: function (item, focusedWindow) {
          if (focusedWindow) {
             console.warn('Feaature not impelmented yet.')
          }
        }
      }, {type: 'separator'}, {
        label:'Exit',
        click: function (item, focusedWindow) {
          if (focusedWindow) {
             console.warn('Feaature not impelmented yet.')
          }
        }
      }
    ]
  }, {
    label: 'View',
    submenu: [{
        label:'Toggle Full Screen',
        accelerator: 'F11'
      }, {
        label:'Show Command palette',
        accelerator: 'CmdOrCtrl+P',
        click: function (item, focusedWindow) {
          if (focusedWindow) {
              focusedWindow.webContents.send('openCmdPalette');
          }
        }
      }, {
        label:'Toggle Menubar',
        accelerator: 'CmdorCtrl+ALt+M',
        click: function(){
          mainWindow.setMenuBarVisibility(mainWindow.isMenuBarVisible() == true ? false :true);
        }
      }, {
        label:'Toggle Status Bar',
        accelerator: 'CmdorCtrl+Alt+S',
        click: function(){
          mainWindow.webContents.send('togglebar', 'status');
        }
      },  {
        label:'Toggle Sidebar',
        accelerator: 'CmdorCtrl+B',
        click: function(){
          mainWindow.webContents.send('togglebar', 'side');
        }
      }, {type: 'separator'}, {
      label: 'Reload',
      accelerator: 'CmdOrCtrl+R',
      click: function (item, focusedWindow) {
        if (focusedWindow) {
          if (focusedWindow.id === 1) {
            BrowserWindow.getAllWindows().forEach(function (win) {
              if (win.id > 1) {
                win.close()
              }
            })
          }
          focusedWindow.reload()
        }
      }
    }, {
      label: 'Toggle Full Screen',
      accelerator: (function () {
        if (process.platform === 'darwin') {
          return 'Ctrl+Command+F'
        } else {
          return 'F11'
        }
      })(),
      click: function (item, focusedWindow) {
        if (focusedWindow) {
          console.log(focusedWindow.getParentWindow());
          focusedWindow.isMenuBarAutoHide? focusedWindow.setAutoHideMenuBar(false) :focusedWindow.setAutoHideMenuBar(true);
          focusedWindow.setFullScreen(!focusedWindow.isFullScreen())
        }
      }
    }, {
      label: 'Toggle Developer Tools',
      accelerator: (function () {
        if (process.platform === 'darwin') {
          return 'Alt+Command+I'
        } else {
          return 'Ctrl+Shift+I'
        }
      })(),
      click: function (item, focusedWindow) {
        if (focusedWindow) {
          focusedWindow.toggleDevTools()
        }
      }
    }]
  }, {
    label: 'Help',
    role: 'help',
    submenu: [{
      label: 'About',
      click: function () {
        
      }
    }, {
      label: 'Learn More',
      click: function () {
        electron.shell.openExternal('http://electron.atom.io')
      }
    }]
  }
]

module.exports = menuTemplate
