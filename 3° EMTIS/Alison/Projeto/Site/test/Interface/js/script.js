const signContainer = document.querySelector('.sign-container');
const sign1 = document.querySelector('#sign-1');
const sign2 = document.querySelector('#sign-2');
const modal = document.querySelector('.janela-modal');

sign1.addEventListener('click', () => {
  modal.classList.add('abrir');
  sign1.style.top = `${modal.offsetTop + 45}px`;
  sign1.style.right = `${modal.offsetLeft}px`;
});

sign2.addEventListener('click', () => {
  modal.classList.add('abrir');
  sign2.style.top = `${modal.offsetTop}px`;
  sign2.style.right = `${modal.offsetLeft + 45}px`;
});