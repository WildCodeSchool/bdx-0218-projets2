// $(document).ready(function () {
//     fetch('/paris/api/laroutedansmonrouter')
//         .then(res => res.json())
//         .then(json => {

//             console.log("match", json)
//             var select = document.getElementById("opp1").textContent = json.opponents[0].opponent.name;
//             var select1 = document.getElementById("opp2").textContent = json.opponents[1].opponent.name;
//             select.onclick = showAlert;
//             select1.onclick = showAlert;

//             function showAlert() {
//                 alert("Evènement de click détecté");
//             }
//         })

// })