import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible:true
    width: 400
    height: 300
    title: "CheckBox"

        Column {
            spacing: 20
            anchors.centerIn: parent
                CheckBox {
                    id: myCheckBox
                    text:"Kontrol Et"
                    checked: false
                    font.pixelSize: 20

                    background: Rectangle {
                        implicitHeight: 50
                        implicitWidth: 20
                        radius: 3
                        border.color: myCheckBox.checked ? "green" :"blue"
                        color: myCheckBox.checked ?  "lightgreen" : "lightblue"
                    }
                    onClicked: {
                        if ( myCheckBox.checked === false) {
                            console.log("Kontrol yapilmadi")
                        }
                        else {
                            console.log("Kontrol basari ile yapildi")
                        }
                    }
                }
        }


}
