function open({ image }) {
  image ? document.querySelector('.image img').src = image : document.querySelector('.image img').src = "./assets/default.gif";
  document.body.style.display = "block";
}

function close() {
  document.body.style.display = "none";
}

function addVips({ vips }) {
  if (vips === undefined) {
    document.querySelector("footer").innerHTML = "";
  } else {
    document.querySelector("footer").innerHTML = "";
    for (const vip of vips) {
      document.querySelector("footer").innerHTML += `
        <div class="vip">
          <span>VIP |</span>
          <p>${vip}</p>
        </div>
      `
    }
  }
}

function updateInfos(data) {
  document.querySelector("#rg").textContent = data.id 
  document.querySelector("#name").textContent = data.name
  document.querySelector("#birth").textContent = data.birth ?? "22/12/1997"
  document.querySelector("#org").textContent = data.org 
  document.querySelector("#civil-status").textContent = data.civilStatus['tipo'] ?? "Solteiro"
  document.querySelector("#spouse").textContent = data.spouse['name'] ?? "Ninguém"
  document.querySelector("#telephone").textContent = data.telephone 
  document.querySelector("#wallet").textContent = data.wallet 
  document.querySelector("#bank").textContent = data.bank
  document.querySelector("#carry").textContent = data.carry ?? "Não Possui"
  document.querySelector("#staff").textContent = data.staff ?? "Não"
}

window.addEventListener("message", ({data}) => {
  if (data.action === "open") open(data) + updateInfos(data) + addVips(data);
  if (data.action === "close") close();
})