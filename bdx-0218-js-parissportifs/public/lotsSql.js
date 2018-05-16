$(document).ready(function() {
    fetch('/paris/api/laroutedansmonrouter')
      .then(res => res.json())
      .then(json => {
        const gifts = json.map(gift => gift.gifts.replace(/_/g, " "));
  
        // modifier le dropdown
        const dropdown = document.getElementById("listlots");
        dropdown.textContent = "";
  
        // boucler sur le résultat
        for (let i = 0; i < gifts.length; i++) {
          let li = document.createElement('li');
          li.className = "gift";
  
          dropdown.appendChild(li);
          li.innerText = gifts[i];
        }
      });
  
      $(".dropdown").on("click", ".gift", function() {
        const text = $(this).text();
        $("#dropdownMenuButton").text(text);
      });
  });
  
    // ecrire une requete ajax avec jQuery ou XMLHttpRequest vers le router nodeJs
  
  
    // TRAITEMENT de la response du serveur DU SERVEUR
  
    // modifier le DOM jeu.ejs