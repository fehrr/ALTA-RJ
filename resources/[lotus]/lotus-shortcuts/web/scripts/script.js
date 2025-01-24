const open = () => {
  shortcuts.forEach(shortcut => {
    document.querySelector('main').innerHTML += `
      <div class="info">
        <h4>${shortcut.command}</h4>
        <p>${shortcut.message}</p>
      </div>
    `
  })
  document.body.style.display = 'flex';
}

const close = () => {
  document.querySelector('main').innerHTML = ''; 
  document.body.style.display = 'none';
}

window.addEventListener('keyup', ({key}) => {
  if (key === 'Escape') {
    fetch('http://lotus-shortcuts/close', { method: 'POST' })
    close()
  }
})

window.addEventListener('message', ({data}) => {
  if (data.action === 'open') open()
  if (data.action === 'close') close()
})
