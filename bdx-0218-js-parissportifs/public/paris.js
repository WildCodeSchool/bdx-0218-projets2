//Upcoming matchs LOL
fetch('/api/pandascore/upcoming?game=lol')
    .then(res => res.json())
    .then(json => {
    console.log("LOL json", json)
    document.getElementById("lol_match1_opp1").textContent = json[0].opponents[0].opponent.name;
   // document.getElementById("lol_match1_opp1_logo").src = json[0].opponents[0].opponent.image_url;
    document.getElementById("lol_match1_opp2").textContent = json[0].opponents[1].opponent.name;
   document.getElementById("lol_match1_date").textContent = json[0].begin_at;
   document.getElementById("lol_match1_link").href = `game/${json[0].id}`;
   document.getElementById("lol_match2_opp1").textContent = json[1].opponents[0].opponent.name;
   document.getElementById("lol_match2_opp2").textContent = json[1].opponents[1].opponent.name;
   document.getElementById("lol_match2_date").textContent = json[1].begin_at; 
   document.getElementById("lol_match2_link").href = `game/${json[1].id}`;
    document.getElementById("lol_match3_opp1").textContent = json[2].opponents[0].opponent.name;
   document.getElementById("lol_match3_opp2").textContent = json[2].opponents[1].opponent.name;
   document.getElementById("lol_match3_date").textContent = json[2].begin_at;
   document.getElementById("lol_match3_link").href = `game/${json[2].id}`;
   document.getElementById("lol_match4_opp1").textContent = json[9].opponents[0].opponent.name;
   document.getElementById("lol_match4_opp2").textContent = json[9].opponents[1].opponent.name;
   document.getElementById("lol_match4_date").textContent = json[9].begin_at;
   document.getElementById("lol_match4_link").href = `game/${json[9].id}`;
    document.getElementById("lol_match5_opp1").textContent = json[10].opponents[0].opponent.name;
   document.getElementById("lol_match5_opp2").textContent = json[10].opponents[1].opponent.name;
   document.getElementById("lol_match5_date").textContent = json[10].begin_at;
   document.getElementById("lol_match5_link").href = `game/${json[10].id}`;
});


//Upcoming matchs Overwatch
fetch('/api/pandascore/upcoming?game=ow')
    .then(res => res.json())
    .then(json => {
    console.log("OW json", json)
    document.getElementById("ow_match1_opp1").textContent = json[0].opponents[0].opponent.name;
   document.getElementById("ow_match1_opp2").textContent = json[0].opponents[1].opponent.name;
   document.getElementById("ow_match1_date").textContent = json[0].begin_at;
   document.getElementById("ow_match1_link").href = `game/${json[0].id}`;
   document.getElementById("ow_match2_opp1").textContent = json[5].opponents[0].opponent.name;
   document.getElementById("ow_match2_opp2").textContent = json[5].opponents[1].opponent.name;
   document.getElementById("ow_match2_date").textContent = json[5].begin_at; 
   document.getElementById("ow_match2_link").href = `game/${json[5].id}`;
    document.getElementById("ow_match3_opp1").textContent = json[10].opponents[0].opponent.name;
   document.getElementById("ow_match3_opp2").textContent = json[10].opponents[1].opponent.name;
   document.getElementById("ow_match3_date").textContent = json[10].begin_at;
   document.getElementById("ow_match3_link").href = `game/${json[10].id}`;
   document.getElementById("ow_match4_opp1").textContent = json[15].opponents[0].opponent.name;
   document.getElementById("ow_match4_opp2").textContent = json[15].opponents[1].opponent.name;
   document.getElementById("ow_match4_date").textContent = json[15].begin_at;
   document.getElementById("ow_match4_link").href = `game/${json[15].id}`;
    document.getElementById("ow_match5_opp1").textContent = json[20].opponents[0].opponent.name;
   document.getElementById("ow_match5_opp2").textContent = json[20].opponents[1].opponent.name;
   document.getElementById("ow_match5_date").textContent = json[20].begin_at; 
   document.getElementById("ow_match1_link").href = `game/${json[20].id}`;
});

//Upcoming matchs Dota2
fetch('/api/pandascore/upcoming?game=dota2')
    .then(res => res.json())
    .then(json => {
    console.log("Dota2 json", json)
    document.getElementById("dota2_match1_opp1").textContent = json[0].opponents[0].opponent.name;
   document.getElementById("dota2_match1_opp2").textContent = json[0].opponents[1].opponent.name;
   document.getElementById("dota2_match1_date").textContent = json[0].begin_at;
   document.getElementById("dota2_match1_link").href = `game/${json[0].id}`;
   document.getElementById("dota2_match2_opp1").textContent = json[1].opponents[0].opponent.name;
   document.getElementById("dota2_match2_opp2").textContent = json[1].opponents[1].opponent.name;
   document.getElementById("dota2_match2_date").textContent = json[1].begin_at; 
   document.getElementById("dota2_match2_link").href = `game/${json[1].id}`;
    document.getElementById("dota2_match3_opp1").textContent = json[2].opponents[0].opponent.name;
   document.getElementById("dota2_match3_opp2").textContent = json[2].opponents[1].opponent.name;
   document.getElementById("dota2_match3_date").textContent = json[2].begin_at;
   document.getElementById("dota2_match3_link").href = `game/${json[2].id}`;
   document.getElementById("dota2_match4_opp1").textContent = json[3].opponents[0].opponent.name;
   document.getElementById("dota2_match4_opp2").textContent = json[3].opponents[1].opponent.name;
   document.getElementById("dota2_match4_date").textContent = json[3].begin_at;
   document.getElementById("dota2_match4_link").href = `game/${json[3].id}`;
    document.getElementById("dota2_match5_opp1").textContent = json[4].opponents[0].opponent.name;
   document.getElementById("dota2_match5_opp2").textContent = json[4].opponents[1].opponent.name;
   document.getElementById("dota2_match5_date").textContent = json[4].begin_at;    
   document.getElementById("dota2_match5_link").href = `game/${json[4].id}`;
});

