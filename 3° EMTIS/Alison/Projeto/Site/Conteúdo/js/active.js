// Adiciona um evento de clique aos elementos do menu
document.querySelectorAll('.nav-link').forEach((navLink) => {
    navLink.addEventListener('click', (event) => {
      // Remove a classe active de todos os elementos do menu
      document.querySelectorAll('.nav .active').forEach((activeElement) => {
        activeElement.classList.remove('active')
      })
      // Adiciona a classe active ao elemento clicado
      event.target.classList.add('active')
    })
})

// Adiciona um evento de clique ao documento para remover a classe active quando o usuário clica fora do menu
document.addEventListener('click', (event) => {
  // Verifica se o clique foi fora do menu
  if (!event.target.closest('.nav-link')) {
    // Remove a classe active de todos os elementos do menu
    document.querySelectorAll('.nav .active').forEach((activeElement) => {
      activeElement.classList.remove('active');
    })
  }
})