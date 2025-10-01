document.addEventListener("DOMContentLoaded", function () {
    const navElement = document.querySelector('nav');

    if (navElement) {
        navElement.innerHTML = `

            <div class="nav cl">
                <div class="nav-content rw">

                    <div class="nav-left rw">

                        <img src="../../public/imagens/logo.png" alt="logo" class="nav-logo">

                        <div class="nav-options rw">
                            <a href="area_aluno.html"><span class="icon-nav home"></span></a>
                            <a href="enviados.html"><span class="icon-nav file-text"></span></a>
                            <a id="open-popup"><span class="icon-nav question"></span></a>
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
        console.warn('A tag <nav> NÃO foi encontrada no documento.');
    }

})
