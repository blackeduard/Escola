document.querySelectorAll('.nav-link').forEach((navLink) => {
    navLink.addEventListener('click', (event) => {
      document.querySelectorAll('.nav .active').forEach((activeElement) => {
        activeElement.classList.remove('active')
      })
      event.target.classList.add('active')
    })
})

document.addEventListener('click', (event) => {
  if (!event.target.closest('.nav-link')) {
    document.querySelectorAll('.nav .active').forEach((activeElement) => {
      activeElement.classList.remove('active');
    })
  }
})