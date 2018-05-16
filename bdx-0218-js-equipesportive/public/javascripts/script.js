function changeText() {
  let bouton = document.getElementById('button-lire-suite');
  if (bouton.innerText === 'Lire la suite ...') {
    bouton.innerText = 'Cacher le texte';
  } else {
    bouton.innerText = 'Lire la suite ...';
  }
}

function submitForm() {
  console.log('test');
  document.getElementById('sendButton').value = 'Message envoyé !'
  alert('Votre message a bien été envoyé.')
}
