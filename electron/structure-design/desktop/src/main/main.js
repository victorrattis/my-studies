const { app, BrowserWindow } = require('electron');

// TODO: Get page tile from CLI arguments using `process.argv` if exist --page
// const DEFAULT_WEB_PAGE_FILE = 'dist/index.html'
const DEFAULT_WEB_PAGE_FILE = 'index.html'

function createWindow () {
  // Create the browser window.
  let win = new BrowserWindow({ 
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true
    }
  })

  win.loadFile(DEFAULT_WEB_PAGE_FILE)
}
 
app.on('ready', createWindow)

app.allowRendererProcessReuse = false
