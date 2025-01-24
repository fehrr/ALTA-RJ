const app = {
  open: function () {
    document.querySelector('#app').style.display = 'block';
  },

  close: function () {
    fetch('http://vrp_empregos/closeNui', { method: 'POST' });
    document.querySelector('#app').style.display = 'none';
  },

  start: function (type) {
    fetch(`http://vrp_empregos/${type}`, { method: 'POST' });
    app.close();
  }
}

window.addEventListener('keyup', ({key}) => {
  if (key === 'Escape') app.close();
})

window.addEventListener('message', ({data}) => {
  if (data.showmenu) app.open(data);
  if (data.hidemenu) app.close();
})