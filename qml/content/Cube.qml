import QtQuick 2.4
Item {
	id: cube
	clip: true

	Item {
		id: container
		anchors.fill: parent

		Item {
			id: frontFaceContainer
			width: parent.width
			height: parent.height

			transform: Rotation {
				id: frontFaceRot
				axis.z: 0
			}

//			Loader { id: frontFaceLoader; anchors.fill: parent }
			Image {
				id: frontFaceLoader
				anchors.fill: parent
				source: "qrc:/images/images/logo.jpg"
			}
		}

		Item {
			id: rightFaceContainer
			anchors.left: frontFaceContainer.right
			width: parent.width
			height: parent.height

			transform: Rotation {
				id: rightFaceRot
				axis { y: 1; z: 0 }
				angle: 90
				origin { x: 0; y: height/2 }
			}

//			Loader { id: rightFaceLoader; anchors.fill: parent }
			Image {
				id: rightFaceLoader
				anchors.fill: parent
				source: "qrc:/images/images/logo.jpg"
			}
		}

		Item {
			id: leftFaceContainer
			anchors.right: frontFaceContainer.left
			width: parent.width
			height: parent.height

			transform: Rotation {
				id: leftFaceRot
				axis { y: 1; z: 0 }
				angle: 270
				origin { x: width; y: height/2 }
			}

//			Loader { id: leftFaceLoader; anchors.fill: parent }
			Image {
				id: leftFaceLoader
				anchors.fill: parent
				source: "qrc:/images/images/logo.jpg"
			}
		}

		Item {
			id: topFaceContainer
			anchors.bottom: frontFaceContainer.top
			width: parent.width
			height: parent.height

			transform: Rotation {
				id: topFaceRot
				axis { x: 1; y: 0; z: 0 }
				angle: 90
				origin { x: width / 2; y: height }
			}

//			Loader { id: topFaceLoader; anchors.fill: parent }
			Image {
				id: topFaceLoader
				anchors.fill: parent
				source: "qrc:/images/images/logo.jpg"
			}
		}

		Item {
			id: bottomFaceContainer
			anchors.top: frontFaceContainer.bottom
			width: parent.width
			height: parent.height

			transform: Rotation {
				id: bottomFaceRot
				axis { x: 1; y: 0; z: 0 }
				angle: 270
				origin { x: width / 2; y: 0 }
			}

//			Loader { id: bottomFaceLoader; anchors.fill: parent }
			Image {
				id: bottompFaceLoader
				anchors.fill: parent
				source: "qrc:/images/images/logo.jpg"
			}
		}
	}

	states: [
		State {
			name: "showFrontFace"
			PropertyChanges { target: frontFaceRot; angle: 0 }
			PropertyChanges { target: frontFaceContainer; x: 0; y: 0}

			PropertyChanges { target: rightFaceRot; angle: 90 }
			PropertyChanges { target: rightFaceContainer; x: 0 }

			PropertyChanges { target: leftFaceRot; angle: 270 }
			PropertyChanges { target: leftFaceContainer; x: 0 }

			PropertyChanges { target: topFaceRot; angle: 90 }
			PropertyChanges { target: topFaceContainer; y: 0 }

			PropertyChanges { target: bottomFaceRot; angle: 270 }
			PropertyChanges { target: bottomFaceContainer; y: 0 }
		},

		State {
			name: "showLeftFace"
			PropertyChanges { target: frontFaceRot; angle: 90 }
			PropertyChanges { target: frontFaceContainer; x: width }
			PropertyChanges { target: leftFaceRot; angle: 360 }
			PropertyChanges { target: leftFaceContainer; x: 0 }
		},

		State {
			name: "showRightFace"
			PropertyChanges { target: frontFaceRot; angle: -90 }
			PropertyChanges { target: frontFaceContainer; x: -width }
			PropertyChanges { target: rightFaceRot; angle: 0 }
			PropertyChanges { target: rightFaceContainer; x: -width }
		},

		State {
			name: "showTopFace"
			PropertyChanges { target: frontFaceRot; angle: -90 }
			PropertyChanges { target: frontFaceContainer; y: height }
			PropertyChanges { target: topFaceRot; angle: 0 }
			PropertyChanges { target: topFaceContainer; y: height}
		},

		State {
			name: "showBottomFace"
			PropertyChanges { target: frontFaceRot; angle: 90 }
			PropertyChanges { target: frontFaceContainer; y: -height }
			PropertyChanges { target: bottomFaceRot; angle: 360 }
			PropertyChanges { target: bottomFaceContainer; y: -height}
		}

	]

	transitions: [
		Transition {
			SequentialAnimation {
				PropertyAnimation { properties: "angle,x,y"; duration: 300 }
			}
		}
	]
}
