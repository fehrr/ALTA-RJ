const bank = {
  type: null,

  open: ({ money, name }) => {
    document.querySelector('.card p').innerHTML = name
    document.querySelector('.value p').innerHTML =  Number(money).toLocaleString('pt-br')
    document.body.style.display = 'block';
  },

  close: () => {
    fetch('https://lotus_bank/close', { method: 'POST' });
    // document.body.style.display = 'none';
  },

  typeSelected: (type, element) => {
    document.querySelectorAll('svg').forEach(e => e.classList.remove('selected'));
    document.querySelectorAll('svg path').forEach(e => e.style.fill = '#161616');
    document.querySelectorAll('.type p').forEach(p => p.style.opacity = '0');
    element.querySelectorAll('path').forEach(e => e.style.fill = 'rgb(160 0 0)');
    element.parentElement.querySelector('p').style.opacity = '1';
    element.classList.add('selected');
    document.querySelector('.deposit > h2').textContent = type.toUpperCase()

    if (type === 'Transferir') {
      document.querySelector('.deposit .input.passport').style.display = 'flex'
    } else {
      document.querySelector('.deposit .input.passport').style.display = 'none'
    }

    this.type = type
  },

  mouseEnter: (element) => {
    if (element.querySelector('svg').classList.contains('selected')) return;
    element.querySelectorAll('svg path').forEach(e => e.style.fill = 'rgb(160 0 0)');
    element.querySelector('p').style.opacity = '1';
  },

  mouseLeave: (element) => {
    if (element.querySelector('svg').classList.contains('selected')) return;
    element.querySelectorAll('svg path').forEach(e => e.style.fill = '#161616');
    element.querySelector('p').style.opacity = '0';
  },
  
  confirm: () => {
    const inputs = document.querySelectorAll('.input input')
    if (!Math.sign(inputs[0].value)) return
    if (inputs[1].value === '' && type === 'Transferir') return;
    if (this.type === 'Transferir') {
      fetch('https://lotus_bank/transferSubmit', {
        method: 'POST',
        body: JSON.stringify({
          type: this.type,
          id: Number(document.querySelector('#passport').value) ?? null,
          amount: Number(document.querySelector('#value').value)
        })
      })
    } else if (this.type === 'Depositar') {
      fetch('https://lotus_bank/depositSubmit', {
        method: 'POST',
        body: JSON.stringify({
          type: this.type,
          amount: Number(document.querySelector('#value').value)
        })
      })
    } else if (this.type === 'Sacar') {
      fetch('https://lotus_bank/withdrawSubmit', {
        method: 'POST',
        body: JSON.stringify({
          type: this.type,
          amount: Number(document.querySelector('#value').value)
        })
      })
    } else if (this.type === 'Pagar') {
      fetch('https://lotus_bank/multasSubmit', {
        method: 'POST',
        body: JSON.stringify({
          type: this.type,
          amount: Number(document.querySelector('#value').value)
        })
      })
    }
    bank.close();
  },

  cancel: () => {
    bank.close();
  }
}

window.addEventListener('keydown', ({ key }) => {
  if (key === 'Escape') bank.close();
})

window.addEventListener('message', ({ data }) => {
  if (data.openBank === true) bank.open(data);
  if (data.action === 'close') document.body.style.display = 'none';
  if (data.openBank === false) document.body.style.display = 'none';
})

bank.typeSelected('Sacar', document.querySelectorAll('section#buttons .type svg')[1])