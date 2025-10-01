
document.addEventListener("DOMContentLoaded", function () {
    const navElement = document.querySelector('nav');

    if (navElement) {
        navElement.innerHTML = `

            <div class="nav cl">
                <div class="nav-content rw">

                    <div class="nav-left rw">

                        <img src="../../public/imagens/logo.png" alt="logo" class="nav-logo">
                        <div class="nav-options rw">
                            <a href="alunos.html"><span class="icon-nav users"></span></a>
                            <a href="documentos.html"><span class="icon-nav file-text"></span></a>
                            <a href="modelos.html"><span class="icon-nav square-pencil"></span></a>
                        </div>

                    </div>
                    <a href="perfil.html">
                        <div class="nav-perfil rw">

                            <div class="cl">
                                <p class="name">Teste Nome</p>
                                <p class="email">emailteste@teste.com</p>
                            </div>
                            <img src="../../public/imagens/ft-perfil.png" alt="foto de perfil" class="foto-perfil">

                        </div>
                    </a>
                </div>
            </div>
        
        `;
    } 
    
    else {
        console.log('A tag <nav> NÃO foi encontrada no documento.');
    }

})
