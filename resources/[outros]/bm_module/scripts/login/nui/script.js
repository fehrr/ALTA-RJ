var app = {
  open: function (id) {
    // document.body.style.display = 'flex'
    document.querySelector('footer > button').innerText = id
  },

  close: function () {
    document.body.style.display = 'none';
  },

  copyText: function (element) {
    element.classList.add('copy')
    setTimeout(() => element.classList.remove('copy'), 2000)
    var id = Number(element.textContent)
    copyTextToClipboard(id)
  },

  redirectDiscord: function () {
    // emitNotify(1, '', 'O DISCORD FOI ABERTO COM SUCESSO')
    window.invokeNative("openUrl", discordURL)
  },

  acceptId: function () {
    // emitNotify(1, '', 'Você foi aprovado em nosso sistema de whitelist e está liberado na cidade.')
    setTimeout(() => {
      document.body.style.display = 'none';
      fetch('http://bm_module/closeLogin', { method: 'POST' });
    }, 5000);
  },

  confirm: async function () {
    var whitelisted = await fetch(`https://bm_module/checkWhitelist`, { method: 'POST' }).then(response => response.json()).catch(err => console.log(err));
    if (whitelisted === false) {
      // emitNotify(0, '', 'Você ainda não foi liberado, verifique se fez todos os passos corretamente.');
      return;
    }

    app.acceptId();
  },

  requestId: function () {
    fetch('http://bm_module/requestId', { method: 'POST' })
      .then(response => response.json())
      .then(data => {
        app.open(data.user_id)
      }).catch(err => console.log(err));
  }
}

$(document).ready(() => { app.requestId() });

function copyTextToClipboard(text) {
  var copyFrom = document.createElement('textarea');
  copyFrom.innerHTML = text;
  document.body.append(copyFrom);
  copyFrom.select();
  document.execCommand('copy');
  copyFrom.remove();
}

var discordURL = 'https://discord.gg/altarj'


var deleteNotify = (number) => {
  document.querySelector(`#${number}`).remove();
}

var progressBarNotify = (type, number, i, time) => {
  setTimeout(() => {
    $('#' + number + ' .progress-n').css('width', i + '%');
    if (i == 100) $('#' + number).remove()
  }, i * time);
}

// var emitNotify = (type, title, desc) => {
//   var notifyType;
//   var randomNumber = Math.floor(Math.random() * (99999 - 10000) + 99999);

//   if (type === 0) notifyType = 'notify-danger';
//   if (type === 1) notifyType = 'notify-sucess';

//   var div = document.createElement('div');
//   div.setAttribute('id', `${randomNumber}`)
//   div.setAttribute('class', `notify animate__animated animate__fadeInLeft ${notifyType}`)
//   div.innerHTML = `
//     <div class="notify-container">
//       <div class="notify-header">
//         <a class="text">${title}</a>
//         <a class="closeNotify" onclick="deleteNotify(${randomNumber})"><i class="fi fi-close-a"></i></a>
//       </div>
//       <div class="notify-desc">
//         <a>${desc}</a>
//       </div>
//     </div>
//     <div class="progress-notify">
//       <div class="progress-n"></div>
//     </div>
//   `
//   document.querySelector('#notify-list').appendChild(div)

//   for (var i = 0; i <= 100; i++) {
//     progressBarNotify(type, randomNumber, i, 60);
//   }

//   return new Promise((res, rej) => {
//     setTimeout(() => res(), 6000);
//   })
// }