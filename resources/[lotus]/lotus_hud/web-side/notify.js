const INotify = {
  ['success']: { icon: 'sucess.svg', colorPrimary: 'rgba(41, 255, 127, 0.65)' },
  ['important']: { icon: 'important.svg', colorPrimary: 'rgba(255, 255, 255, 0.65)' },
  ['refused']: { icon: 'refused.svg', colorPrimary: 'rgba(224, 0, 0, 0.65)' },
  ['hospital']: { icon: 'hospital.svg', colorPrimary: 'rgba(253, 120, 120, 0.65)' },
  ['police']: { icon: 'police.svg', colorPrimary: 'rgba(104, 154, 228, 0.65)' },
  ['mechanic']: { icon: 'mechanic.svg', colorPrimary: 'rgba(255, 122, 0, 0.65)' },
  ['admin']: { icon: 'admin.svg', colorPrimary: 'rgba(224, 0, 0, 0.65)' },
}

/**
 * @param {{
 *   type: 'sucess';
 *   title: string;
 *   message: string;
 *   time: number;
 * }} param0 
 */
function renderNotify({ type, title, message, time }) {
  let fontSize = '11px'
  if (message.length > 750) fontSize = '9px' 

  const config = INotify[type]

  if (!config) return

  const div = document.createElement("div")
  div.classList.add("notify")
  div.style.background = `linear-gradient(90deg, ${config.colorPrimary} 0%, rgba(0, 0, 0, 0) 100%), rgba(0, 0, 0, 0.55)`

  div.innerHTML = `
    <img src="./images/notify/${config.icon}" alt="">
    <div class = "message">
      <h1>${title}</h1>
      <p style = "font-size: ${fontSize};">${message}</p>
    </div>
    <div class = "progress">
      <div class = "value" style = "animation-duration: ${time - 350}ms; background-color: ${config.colorPrimary};"></div>
    </div>
  `;

  document.querySelector("#notify").appendChild(div)

  setTimeout(() => {
    div.classList.add('fadeOut')
  }, time - 400);

  setTimeout(() => {
    div.remove()
  }, time)
}