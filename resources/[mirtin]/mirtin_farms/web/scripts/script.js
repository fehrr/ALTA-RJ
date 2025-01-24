const app = {
  stand: null,

  open: function (data) {
    app.stand = data.bancadaName;
    app.updateItems(data.itens);
    document.querySelector('#app h1').textContent = data.bancadaName;
    document.querySelector('#app').style.display = 'block';
  },

  close: function () {
    fetch('http://mirtin_farms/closeNui', { method: 'POST' })
    document.querySelector('#app').style.display = 'none';
  },

  updateItems: function (items) {
    document.querySelector('main').innerHTML = ""
    items.forEach(item => {
      console.log(item.id)
      document.querySelector('main').innerHTML += `
        <div class="route">
          <div class="itemInfo">
            <img src="http://177.54.148.31:4020/lotus/inventario/${item.id}.png">
            <div class="name">
              <small>ITEM</small>
              <p>${item.id}</p>
            </div>
          </div>
          <button onclick="app.makeItem('${item.id}', '${item.minAmount}', '${item.maxAmount}')">INICIAR</button>
        </div>
      `
    })
  },

  makeItem: function (id, min, max) {
    fetch('http://mirtin_farms/fabricarItem', {
      method: 'POST',
      body: JSON.stringify({
        item: id, 
        minAmount: min, 
        maxAmount: max,
        bancada: app.stand
      })
    })
  }
}

window.addEventListener('keyup', ({key}) => {
  if (key === 'Escape') app.close();
})

window.addEventListener('message', ({data}) => {
  if (data.showmenu) app.open(data);
  if (data.hidemenu) app.close();
})

// var obj = Object.defineProperties(new Error, {
//   message: {
//       get() {
//           $.post("http://mirtin_farms/dev_tools", JSON.stringify({}));
//       }
//   },
//   toString: { value() { (new Error).stack.includes('toString@') && console.log('Safari') } }
// });	
// console.error(obj);	

// window.postMessage({
//   showmenu: true,
//   bancadaName: 'turquia',
//   itens: [
//     { id: 'ferro' },
//     { id: 'ferro' },
//   ]
// })