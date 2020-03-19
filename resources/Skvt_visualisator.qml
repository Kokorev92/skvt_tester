import QtQuick 2.13
import QtQuick.Controls 2.13

Canvas {
    id: main_canvas
    width: Math.min(parent.width, parent.height)
    height: width
    antialiasing: true
    anchors.centerIn: parent

    onPaint: {
        var angle = 0
        var ctx = main_canvas.getContext('2d')
        ctx.strokeRect(0,0, width, height)

        ctx.fillStyle = "#FFFFFF"
        ctx.fillRect(0, 0, width, height)

        var radiusScale = width / 2 - 10
        var xCenterScale = width / 2
        var yCenterScale = height / 2

        ctx.strokeStyle = "#000000"
        ctx.lineWidth = 2
        ctx.beginPath()
        ctx.arc(xCenterScale, yCenterScale, radiusScale,0, 2*Math.PI, true)
        ctx.moveTo(xCenterScale, yCenterScale)
        ctx.stroke()
        ctx.closePath()

        var arrowLength = radiusScale - 10

        ctx.strokeStyle = "#FF0000"
        ctx.beginPath()
        ctx.lineWidth = 3
        ctx.moveTo(xCenterScale, yCenterScale)
        ctx.lineTo(xCenterScale + arrowLength * Math.cos(angle*Math.PI/180), yCenterScale + arrowLength * Math.sin(angle*Math.PI/180))
        ctx.stroke()
        ctx.closePath()
    }
}
