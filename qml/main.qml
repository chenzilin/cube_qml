import "content"
import QtQuick 2.4

Rectangle {
	width: 500
	height: 500
	color: "black"

	focus: true
	Keys.onPressed: {
		switch (event.key) {
		case Qt.Key_1:
			cube.state = "showFrontFace"
			break
		case Qt.Key_2:
			cube.state = "showBottomFace"
			break
		case Qt.Key_3:
			cube.state = "showTopFace"
			break
		case Qt.Key_4:
			cube.state = "showLeftFace"
			break
		case Qt.Key_5:
			cube.state = "showRightFace"
			break
		}
	}

	Cube {
		id: cube
		x: 100
		y: 100
		width: 300
		height: 300
		state: "showFrontFace"
	}

}
