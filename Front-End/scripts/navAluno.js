
document.addEventListener("DOMContentLoaded", function () {
    const navElement = document.querySelector('nav');

    if (navElement) {
        navElement.innerHTML = `

  <div class="nav cl">
    <div class="nav-content rw">
      <div class="nav-left rw">
        <img src="arquivos/imagens/logo.png" alt="logo" class="nav-logo">
        <div class="nav-options rw">
          <a href="area_aluno.html"><span class="icon-nav users"></span></a>
          <a href="enviados.html"><span class="icon-nav file-text"></span></a>
        </div>
      </div>

      <div class="wrapper">
        <a href="perfilAluno.html">
          <div class="nav-perfil rw">
            <div class="cl">
              <p class="name">Carlos Roberto Pinheiro</p>
              <p class="email">Carlos.pinheiro8@fatec.sp.gov.br</p>
            </div>
            <img src="arquivos/imagens/user.jpg" alt="foto de perfil" class="foto-perfil">
            <img src="arquivos/icons/graduation-cap.png" alt="">
          </div>
        </a>
        <label class="switch rw">
          <input type="checkbox" id="alternador">
          <span class="slider round"></span>
        </label>
      </div>
    </div>
  </div>
        
        `;
    } 
    
    else {
        console.log('A tag <nav> NÃO foi encontrada no documento.');
    }

})
