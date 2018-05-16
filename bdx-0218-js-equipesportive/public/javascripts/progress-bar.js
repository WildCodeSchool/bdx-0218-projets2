let dataLength = document.getElementById('players-tab').getAttribute('data-length');
for (let i = 0; i < dataLength; i++) {
    
    let playedMatches = document.querySelector('.pl_match'+ i).getAttribute('data-stats');
    let scoredGoals = document.querySelector('.pl_goals'+ i).getAttribute('data-stats');
    let doneAssists = document.querySelector('.pl_assists'+ i).getAttribute('data-stats');
    let playerPoints = document.querySelector('.pl_points'+ i).getAttribute('data-stats');
    let playerPenalty = document.querySelector('.pl_penalty'+ i).getAttribute('data-stats');
    let playerShoots = document.querySelector('.pl_shoots'+ i).getAttribute('data-stats');
    let playerEfficiency = document.querySelector('.pl_efficiency'+ i).getAttribute('data-stats');
    let doneShutouts = document.querySelector('.pl_shutouts'+ i).getAttribute('data-stats');
    let doneSaves = document.querySelector('.pl_saves'+ i).getAttribute('data-stats');
    let savesPercent = document.querySelector('.pl_saves_percent'+ i).getAttribute('data-stats');

    
    var barPl = new ldBar(".pl_match" + i);    
    barPl.set((playedMatches*100)/44);
    if (playedMatches == 0) {
        document.getElementById('ldBar-match'+ i).style.display = 'none';
    }
    document.querySelector(".pl_match"+i+" .ldBar-label").innerHTML = `${playedMatches} Matchs Joués`;

    var barG = new ldBar(".pl_goals" + i);
    if (scoredGoals == 0) {
        document.getElementById('ldBar-goals' + i).className += ' d-none';
    }
    barG.set((scoredGoals*100)/108);    
    document.querySelector(".pl_goals"+i+" .ldBar-label").innerHTML = `${scoredGoals} Buts`;
    
    var barA = new ldBar(".pl_assists" + i);
    if (doneAssists == 0) {
        document.getElementById('ldBar-assists'+ i).style.display = 'none';
    }
    barA.set((doneAssists*100)/150);
    document.querySelector(".pl_assists"+i+" .ldBar-label").innerHTML = `${doneAssists} Passes Décisives`;

    var barP = new ldBar(".pl_points" + i);
    if (playerPoints == 0) {
        document.getElementById('ldBar-points'+ i).style.display = 'none';
    }
    barP.set((playerPoints*100)/20);
    document.querySelector(".pl_points"+i+" .ldBar-label").innerHTML = `${playerPoints} Passes Décisives`;

    var barPl = new ldBar(".pl_penalty" + i);
    if (playerPenalty == 0) {
        document.getElementById('ldBar-penalty'+ i).style.display = 'none';
    }
    barPl.set((playerPenalty*100)/800);
    document.querySelector(".pl_penalty"+i+" .ldBar-label").innerHTML = `${playerPenalty} Pénalités`;

    var barS = new ldBar(".pl_shoots" + i);
    if (playerShoots == 0) {
        document.getElementById('ldBar-shoots'+ i).style.display = 'none';
    }
    barS.set((playerShoots*100)/80);
    document.querySelector(".pl_shoots"+i+" .ldBar-label").innerHTML = `${playerShoots} Tirs`;

    var barEff = new ldBar(".pl_efficiency" + i);
    if (playerEfficiency == 0) {
        document.getElementById('ldBar-efficiency'+ i).style.display = 'none';
    }
    barEff.set(playerEfficiency);
    document.querySelector(".pl_efficiency"+i+" .ldBar-label").innerHTML = `${playerEfficiency} Tis%`;

    var barShut = new ldBar(".pl_shutouts" + i);
    if (doneShutouts == 0) {
        document.getElementById('ldBar-shutouts'+ i).style.display = 'none';
    }
    barShut.set((doneShutouts*100)/1);
    document.querySelector(".pl_shutouts"+i+" .ldBar-label").innerHTML = ` ${doneShutouts} Blanchissage(s)`;

    var barSaves = new ldBar(".pl_saves" + i);
    if (doneSaves == 0) {
        document.getElementById('ldBar-saves'+ i).style.display = 'none';
    }
    barSaves.set((doneSaves*100)/1000);
    document.querySelector(".pl_saves"+i+" .ldBar-label").innerHTML = `${doneSaves} Arrêts`;

    var barSavesPercent = new ldBar(".pl_saves_percent" + i);
    if (savesPercent == 0) {
        document.getElementById('ldBar-saves-percent'+ i).style.display = 'none';
    }
    barSavesPercent.set((savesPercent*100)/1000);
    document.querySelector(".pl_saves_percent"+i+" .ldBar-label").innerHTML = `${savesPercent} Pénalités`;
}
