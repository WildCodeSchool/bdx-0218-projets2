function calcTime(_date) {
    var now = new Date();
    var nextYear = new Date(_date).getTime();
    var diffMs = nextYear - now;
    var days = Math.floor(diffMs / 1000 / 60 / (60 * 24));
    var diff = new Date(diffMs);
    var dw = days == 1 ? " jour " : " jours ";
    var hw = diff.getHours() == 1 ? " heure " : " heures ";

    return days + dw +
        diff.getHours() + hw +
        diff.getMinutes() + " min ";
}

function setTime() {
    const demoNode = document.getElementById("demo");
    const currentDate = demoNode.getAttribute("data-current-date");
    demoNode.innerText = calcTime(currentDate);
}

setInterval(setTime, 1000);