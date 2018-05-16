var ArrayLogo=[
Sciences ='/views/img/red-science.png',
Cinéma ='/views/img/Ci.png',
Musique ='/views/img/red-radio.png',
Santé = '/views/img/red-sante.png',
Sport ='/views/img/red-ski.png',
Amour ='/views/img/red-amour.png',
Société ='/views/img/red-armes.png',
Divers ='/views/img/red-aubergine.png'
];

// var UpCategory=category.toUpperCase();
// var Category='SCIENCES';
// var lien='/views/img/red-science.png'
var category=Cinéma;
var src=''
//
// function source(UpCategory){
// var scr='';


  for (i=0;i<ArrayLogo.length;i++){

    if (category===ArrayLogo[i]){
      console.log(src=ArrayLogo[i]);
    break;
    }
    else{
    console.log('/views/img/red-pingouin.png');
    }

}
