import QtQuick.Layouts 1.0
import QtQuick 2.0
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
		id: root

		Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation
		property string setImage: Plasmoid.configuration.setImage
		property string setIcon: Plasmoid.configuration.setIcon
		property int setHeight: Plasmoid.configuration.setHeight
		property int setWidth: Plasmoid.configuration.setWidth


		Image {
			id: image2
			anchors.fill: parent
			source: setImage
			opacity: 0.5
			z: -1
		}
	
		PlasmaCore.IconItem {
			anchors.fill: parent
			source: iconPath
		}

		
		
		Plasmoid.backgroundHints: showBackground ? PlasmaCore.Types.DefaultBackground : PlasmaCore.Types.NoBackground
		
		Layout.maximumHeight: setHeight == 0 ? parent.Height : setHeight*10
		Layout.minimumHeight: setHeight == 0 ? parent.Height : setHeight*10
		
		Layout.maximumWidth: setWidth == 0 ? parent.Width : setWidth*10
		Layout.minimumWidth: setWidth == 0 ? parent.Width : setWidth*10
}
