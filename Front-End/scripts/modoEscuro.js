document.addEventListener("DOMContentLoaded", () => {
  const toggleSwitch = document.getElementById("alternador");
  if (!toggleSwitch) return; 


  

  const temaAtual = localStorage.getItem("tema");
  if (temaAtual === "dark") {
    document.documentElement.setAttribute("modo-escuro", "dark");
    toggleSwitch.checked = true;
  }

  toggleSwitch.addEventListener("change", () => {
    if (toggleSwitch.checked) {
      document.documentElement.setAttribute("modo-escuro", "dark");
      localStorage.setItem("tema", "dark");
    } else {
      document.documentElement.setAttribute("modo-escuro", "light");
      localStorage.setItem("tema", "light");
    }
  });
});


