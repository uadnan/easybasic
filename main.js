const electron = require('electron');
const app = electron.app;
const BrowserWindow = electron.BrowserWindow;

let mainWindow

function createWindow () {
  
  mainWindow = new BrowserWindow({minWidth:768, frame:false, minHeight: 600})
  mainWindow.loadURL(`file://${__dirname}/src/index.html`)
  mainWindow.maximize(true);

  mainWindow.on('closed', function () {
    mainWindow = null
  })
}

app.on('ready', createWindow)

app.on('window-all-closed', function () {
  if (process.platform !== 'darwin') {
    app.quit()
  }
})

app.on('activate', function () {
  if (mainWindow === null) {
    createWindow()
  }
})

//Custom code

const ipc = require('electron').ipcMain
const dialog = require('electron').dialog

ipc.on('open-file-dialog', function (event) {
  dialog.showOpenDialog({
    properties: ['openFile'],
    filters: [
      {name: 'GwBasic file', extensions: ['bas']},
      {name: 'Plain Text', extensions: ['txt']},
      {name: 'All Files', extensions: ['*']}
    ]
  }, function (files) {
    if (files) event.sender.send('opened-file', files)
  })
})

ipc.on('open-file-o-dialog', function (event) {
  dialog.showOpenDialog({
    properties: ['openFile'],
    filters: [
      {name: 'GwBasic file', extensions: ['bas']},
      {name: 'Plain Text', extensions: ['txt']},
      {name: 'All Files', extensions: ['*']}
    ]
  }, function (files) {
    if (files) event.sender.send('opened-o-file', files)
  })
})

ipc.on('open-file-m-dialog', function (event) {
  dialog.showOpenDialog({
    properties: ['openFile'],
    filters: [
      {name: 'GwBasic file', extensions: ['bas']},
      {name: 'Plain Text', extensions: ['txt']},
      {name: 'All Files', extensions: ['*']}
    ]
  }, function (files) {
    if (files) event.sender.send('opened-m-file', files)
  })
})

ipc.on('save-file-dialog', function (event) {
  dialog.showSaveDialog({
    properties: ['openFile'],
    filters: [
      {name: 'Basic file format', extensions: ['bas']},
      {name: 'Plain Text', extensions: ['txt']},
      {name: 'All Files', extensions: ['*']}
    ]
  }, function (files, Text) {
    if (files) event.sender.send('saved-file', files)
  })
})

ipc.on('open-dev', function (event) {
  mainWindow.openDevTools();
})

ipc.on('open-information-dialog', function (event) {
  const options = {
    type: 'info',
    title: 'Information',
    message: "You haven't saved the document. Do you want save it?",
    buttons: ['Save', "Don't Save", "Cancel"]
  }
  dialog.showMessageBox(options, function (index) {
    event.sender.send('information-dialog-selection', index)
  })
})