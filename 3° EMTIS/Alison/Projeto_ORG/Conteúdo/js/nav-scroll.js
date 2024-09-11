let scrollEvent = null
let clickEvent = null

const nav = document.getElementById('menu')
const navHeight = 60
const navegador = document.getElementById('menu')
let ultimaPosicao = window.scrollY
scrollEvent = window.addEventListener('scroll', () => {
    if (window.scrollY > 100) {
      nav.classList.add('scrolled')
    } else {
      nav.classList.remove('scrolled')
    }
})
clickEvent = document.querySelectorAll('a[href*="#"].link').forEach(anchor => {
  anchor.addEventListener('click', function(e) {
    e.preventDefault()
    const href = this.getAttribute('href');
    if (href !== '#' && href.substring(0, 1) === '#') {
      const targetId = href.substring(1)
      const targetElement = document.getElementById(targetId)
      if (targetElement) {
        const offsetTop = targetElement.offsetTop - navHeight
        window.scrollTo({
          top: offsetTop,
          behavior: 'smooth'
        })
      }
    } else {
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      })
    }
  })
})
window.addEventListener('scroll', () => {
  const posicaoAtual = window.scrollY;
  if (posicaoAtual > ultimaPosicao) {
    navegador.classList.remove('esconder')
  } else if (posicaoAtual === 0) {
    navegador.classList.remove('esconder')
  } else {
    navegador.classList.add('esconder')
  }
  ultimaPosicao = posicaoAtual
})