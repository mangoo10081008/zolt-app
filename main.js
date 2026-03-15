const { app, BrowserWindow } = require('electron');
const path = require('path');

function createWindow() {
  const win = new BrowserWindow({
    width: 1200,
    height: 800,
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true,
    }
  });

  // 빌드된 out/index.html을 직접 불러옵니다.
  const indexPath = path.join(__dirname, 'out', 'index.html');
  win.loadFile(indexPath).catch(err => console.error("파일 로드 실패:", err));
}

app.whenReady().then(createWindow);

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});