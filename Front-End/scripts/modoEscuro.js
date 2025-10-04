

document.addEventListener("DOMContentLoaded", () => {
  const AlternadorDeModo = document.getElementById("alternador");
  if (!AlternadorDeModo) return; 



  const temaAtual = localStorage.getItem("tema");
  if (temaAtual === "dark") {
    document.documentElement.setAttribute("modo-escuro", "dark");
    AlternadorDeModo.checked = true;
  }

  AlternadorDeModo.addEventListener("change", () => {
    if (AlternadorDeModo.checked) {
      document.documentElement.setAttribute("modo-escuro", "dark");
      localStorage.setItem("tema", "dark");
    } else {
      document.documentElement.setAttribute("modo-escuro", "light");
      localStorage.setItem("tema", "light");
    }
  });
});


