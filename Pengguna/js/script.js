// toggle class active
const navbarNav = document.querySelector('.navbar-nav');
//menu diklik
document.querySelector('#hamburger-menu').onclick = () => {
    navbarNav.classList.toggle('active')
};


const Profil = document.querySelector('.profil');
document.querySelector('#user').onclick = (e) => {
  Profil.classList.toggle('active');
  e.preventDefault();
};


const Shopping = document.querySelector('.shopping');
document.querySelector('#shopping-cart').onclick = (e) => {
  Shopping.classList.toggle('active');
  e.preventDefault();
};


// klik diluar sidebar untuk menghilangkan navbar
const hm = document.querySelector('#hamburger-menu');
const ur = document.querySelector('#user');
const sc = document.querySelector('#shopping-cart');

// const sc = document.querySelector('#shopping-cart-button');

document.addEventListener('click', function (e) {
  if (!hm.contains(e.target) && !navbarNav.contains(e.target)) {
    navbarNav.classList.remove('active');
  }

  if (!ur.contains(e.target) && !Profil.contains(e.target)) {
    Profil.classList.remove('active');
  }

  if (!sc.contains(e.target) && !Shopping.contains(e.target)) {
    Shopping.classList.remove('active');
  }
});

const menuCards = document.querySelectorAll(".menu-card");
const section = document.querySelector("#menu");
const overlay = document.querySelector(".overlay");
const closeBtn = document.querySelector(".close-btn");

menuCards.forEach((card) => {
  card.addEventListener("click", (event) => {
    event.preventDefault();
    section.classList.add("active");
  });
});

overlay.addEventListener("click", () => {
  section.classList.remove("active");
});

closeBtn.addEventListener("click", () => {
  section.classList.remove("active");
});
// const menuCards = document.querySelectorAll(".menu-card");
// const section = document.querySelector("#menu");
// const overlay = document.querySelector(".overlay");
// const closeBtn = document.querySelector(".close-btn");

// menuCards.forEach((card) => {
//   card.addEventListener("click", (event) => {
//     event.preventDefault();
//     const menuId = card.getAttribute("data-menu-id");
//     tampilkanPopup(menuId);
//   });
// });

// overlay.addEventListener("click", () => {
//   section.classList.remove("active");
// });

// closeBtn.addEventListener("click", () => {
//   section.classList.remove("active");
// });
// function tampilkanPopup(menuId) {
//   console.log('Mengambil data menu untuk ID:', menuId);

//   // Menggunakan Fetch API untuk mengambil data menu dari server
//   fetch(`get_data_menu.php?id=${menuId}`)
//     .then(response => response.json())
//     .then(dataMenu => {
//       console.log('Data menu yang diterima:', dataMenu);

//       // Update konten popup dengan data yang diterima
//       document.getElementById('popup-gambar').src = 'img/' + dataMenu.gambar;
//       document.getElementById('popup-nama').textContent = dataMenu.nama_menu;
//       document.getElementById('popup-harga').textContent = 'Rp. ' + dataMenu.harga;
//       document.getElementById('popup-status').textContent = dataMenu.status;

//       // Tampilkan popup
//       section.classList.add('active');
//     })
//     .catch(error => {
//       console.error('Error fetching data:', error);
//     });
// };


// chekout

const MakananIni = document.querySelector('#makanan-ini');
const CheckOut = document.querySelector('.item-conf-btn');

CheckOut.onclick = (e) => {
  MakananIni.style.display = 'flex';
  e.preventDefault();
}

// klik tombol bata
document.querySelector('.beli .beli-container .batal-btn').onclick = (e) => {
  MakananIni.style.display = 'none';
  e.preventDefault();
}

const CloseBeli = document.querySelector('#makanan-ini');
window.onclick = (e) => {
  if (e.target === CloseBeli) {
    CloseBeli.style.display = 'none'
  }
}