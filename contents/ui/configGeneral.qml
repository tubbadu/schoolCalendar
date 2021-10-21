import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import org.kde.kirigami 2.4 as Kirigami

Kirigami.FormLayout {
	id: page

	property alias cfg_setImage: setImage.text
	property alias cfg_setIcon: setIcon.text
	property alias cfg_setHeight: setHeight.value
	property alias cfg_setWidth: setWidth.value

	TextField {
		id: setIcon
		Kirigami.FormData.label: i18n("Icon full path")
	}
	TextField {
		id: setImage
		Kirigami.FormData.label: i18n("Image to be displayed (path)")
	}
	
	Label{
		text: i18n("choose custom height and width. If set to 0, it will be automatic")
	}
	RowLayout {
		id: setSize
		spacing: 6
		Label{
			text: i18n("Height")
		}
		SpinBox {
			id: setHeight
			//maximumValue: 3000
			//value: 0
			//Kirigami.FormData.label: i18n("Height")
		}
		Label{
			text: i18n("Width")
		}
		SpinBox {
			id: setWidth
			//maximumValue: 3000.0
			//value: 0
			//Kirigami.FormData.label: i18n("Width")
		}
	}
}
