const titulo = document.getElementById('raca_titulo')
const texto = document.getElementById('raca_texto')
const raca = document.getElementById('raca')
const fechar = document.getElementById('close')

titulo.addEventListener('click', (e) => {
    texto.classList.toggle('show');
    raca.classList.toggle('open');
});

document.addEventListener('click', (e) => {
    if (e.target !== texto && e.target == fechar || e.target == raca) {
        texto.classList.remove('show')
        raca.classList.remove('open')
}
})