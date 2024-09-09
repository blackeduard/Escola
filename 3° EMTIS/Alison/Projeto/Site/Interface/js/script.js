function abrirModal(){
    const modal = document.getElementById('janela-modal')
    modal.classList.add('abrir')


    modal.addEventListener('click', (e) => {
        if(e.target.id == 'janela-modal' || e.target.id == 'fechar-1' || e.target.id == 'fechar-2'){
            modal.classList.remove('abrir')
        }
    })
}