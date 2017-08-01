var soldiers = []
soldiers['fighters'] = []
soldiers['archers'] = []

function generateSoldiers() {
    var fighter = Qt.createComponent("./Fighter.qml")
    var archer = Qt.createComponent("./Archer.qml")

    for (var i = 0; i < 5000; i++) {
        var soldier
        if(Math.round(Math.random()) == 0){
            soldier = fighter.createObject(window);
            soldiers['fighters'].push(soldier)
        } else if(Math.round(Math.random()) == 1){
            soldier = archer.createObject(window);
            soldiers['archers'].push(soldier)
        }
    }
}

function moveTo(destination) {
    soldiers['fighters'].forEach(function(soldier) {
        soldier.x = Math.random()*1360
        soldier.y = Math.random()*700
    })
    soldiers['archers'].forEach(function(soldier) {
        soldier.x = Math.random()*1360
        soldier.y = Math.random()*700
    })
}
