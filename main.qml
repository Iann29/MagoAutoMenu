import QtQuick
import QtQuick.Controls
import QtQuick.Studio.DesignEffects
import QtQuick.Timeline 1.0

Item {
    id: _item
    width: 640
    height: 480

    Image {
        id: image
        x: 0
        y: 0
        width: 640
        height: 480
        source: "0_0.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle {
            id: rectangle
            x: 42
            y: 33
            width: 557
            height: 415
            color: "#41ffffff"
            radius: 40
            border.color: "#ffffff"
            border.width: 3

            DesignEffect {
                backgroundLayer: image
                backgroundBlurRadius: 18
                backgroundBlurVisible: true
            }
        }
    }

    Rectangle {
        id: retangulomago
        x: 99
        y: -33
        width: 443
        height: 104
        color: "#ffffff"
        radius: 41
        border.width: 0

        Text {
            id: _text
            x: 27
            y: 36
            color: "#f75bfd"
            text: qsTr("MagoDoHayDay")
            font.pixelSize: 53
            font.family: "Courier"
            font.weight: Font.Black
            font.bold: true
            font.italic: true

            DesignEffect {
                effects: [
                    DesignDropShadow {
                        visible: true
                        blur: 6
                        offsetX: 3
                        offsetY: 3
                    }
                ]
            }
        }

        Text {
            id: _text1
            x: 32
            y: 39
            opacity: 1
            color: "#f75bfd"
            text: qsTr("MagoDoHayDay")
            font.pixelSize: 53
            font.weight: Font.Bold
            font.italic: true
            font.family: "Courier"
            font.bold: true

            DesignEffect {
                layerBlurRadius: 41
                layerBlurVisible: true
            }
        }
    }

    Text {
        id: byian
        x: 466
        y: 31
        color: "#00b2ff"
        text: qsTr("By Iann")
        font.pixelSize: 28
        scale: 1
        font.strikeout: false
        font.underline: true
        font.bold: true
        font.italic: true
        font.weight: Font.Black
        rotation: -45
    }

    Text {
        id: byian1
        x: 466
        y: 31
        color: "#00b2ff"
        text: qsTr("By Iann")
        font.pixelSize: 28
        scale: 1
        rotation: -45
        font.weight: Font.Black
        font.underline: true
        font.strikeout: false
        font.italic: true
        font.bold: true

        DesignEffect {
            layerBlurRadius: 16
            layerBlurVisible: true
        }
    }

    Timeline {
        id: timelinemain
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: -1
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true

        KeyframeGroup {
            target: byian
            property: "scale"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 0.5
                frame: 500
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: byian1
            property: "scale"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 0.5
                frame: 500
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }
    }

    Rectangle {
        id: coordbotton
        x: 200
        y: 77
        width: 242
        height: 34
        color: "#ffffff"
        radius: 17

        Text {
            id: _text2
            anchors.centerIn: parent
            text: qsTr("Selecionar coordenadas")
            font.pixelSize: 17
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                _item.state = "translucido";  // Muda para o estado translucido ao passar o mouse
            }

            onExited: {
                _item.state = "";  // Volta ao estado padrão ao sair o mouse
            }

            onClicked: {
                _item.state = "State1";  // Muda para o estado State1 ao clicar
            }
        }

        DesignEffect {
            id: designEffect
        }
    }

    Image {
        id: back
        x: 442
        y: 313
        width: 100
        height: 100
        source: ""
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: mouseArea1
            anchors.fill: parent  // Preenche toda a área da imagem para detectar o mouse
            hoverEnabled: true  // Garante que os eventos de hover sejam capturados

            onEntered: {  // Verifica se o evento onEntered é disparado
                timelineAnimation1.running = true;  // Inicia a animação
            }

            onExited: { // Verifica se o evento onExited é disparado
                timelineAnimation1.running = false;  // Reseta a animação ao sair o mouse
            }

            onClicked: {
                _item.state = "Base State";
            }
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation1
                running: false
                loops: -1
                duration: 600
                to: 600
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 600
        enabled: false

        KeyframeGroup {
            target: back
            property: "x"
            Keyframe {
                value: 546
                frame: 0
            }

            Keyframe {
                value: 545
                frame: 50
            }

            Keyframe {
                value: 545
                frame: 101
            }

            Keyframe {
                value: 544
                frame: 151
            }

            Keyframe {
                value: 545
                frame: 199
            }

            Keyframe {
                value: 545
                frame: 249
            }

            Keyframe {
                value: 544
                frame: 300
            }

            Keyframe {
                value: 544
                frame: 350
            }

            Keyframe {
                value: 545
                frame: 400
            }

            Keyframe {
                value: 544
                frame: 450
            }

            Keyframe {
                value: 543
                frame: 500
            }

            Keyframe {
                value: 544
                frame: 550
            }

            Keyframe {
                value: 546
                frame: 600
            }
        }

        KeyframeGroup {
            target: back
            property: "y"
            Keyframe {
                value: 395
                frame: 0
            }

            Keyframe {
                value: 394
                frame: 50
            }

            Keyframe {
                value: 394
                frame: 101
            }

            Keyframe {
                value: 395
                frame: 151
            }

            Keyframe {
                value: 396
                frame: 199
            }

            Keyframe {
                value: 395
                frame: 249
            }

            Keyframe {
                value: 395
                frame: 300
            }

            Keyframe {
                value: 395
                frame: 350
            }

            Keyframe {
                value: 396
                frame: 400
            }

            Keyframe {
                value: 397
                frame: 450
            }

            Keyframe {
                value: 396
                frame: 500
            }

            Keyframe {
                value: 395
                frame: 550
            }

            Keyframe {
                value: 395
                frame: 600
            }
        }
    }

    RoundButton {
        id: roundButton
        x: 300
        y: 77
        visible: false
        text: "+"
        icon.source: "icons8-fazer-upload-50.png"
        display: AbstractButton.IconOnly
    }

    states: [
        State {
            name: "translucido"

            PropertyChanges {
                target: coordbotton
                color: "#59ffffff"
                border.color: "#ffffff"
                border.width: 3
                visible: true
            }

            PropertyChanges {
                target: designEffect
                backgroundLayer: retangulomago
                backgroundBlurRadius: 7
                backgroundBlurVisible: true
            }

            PropertyChanges {
                target: timeline
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }
        },
        State {
            name: "State1"

            PropertyChanges {
                target: coordbotton
                visible: false  // O botão "Selecionar coordenadas" é oculto no estado "State1"
            }

            PropertyChanges {
                target: back
                x: 546
                y: 394
                width: 37
                height: 37
                source: "icons8-à-esquerda-dentro-de-um-círculo-50.png"
            }

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: timelineAnimation1
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }

            PropertyChanges {
                target: mouseArea1
                x: 0
                y: 0
                width: 37
                height: 37
            }

            PropertyChanges {
                target: roundButton
                visible: true
                flat: true
                icon.color: "#00ffffff"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0}D{i:13;invisible:true}D{i:27}
}
##^##*/
