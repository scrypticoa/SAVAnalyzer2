import QtQuick //6.8
import QtQuick.Controls //6.8
import QtQuick.Layouts
import Qt.labs.qmlmodels

ApplicationWindow {
    visible: true
    width: 640
    height: 489

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent

        RowLayout { // file select header
            Layout.preferredHeight: 100
            Layout.fillWidth: true

            Rectangle {
                color: "yellow"
                Layout.fillHeight: true
                Layout.fillWidth: true

                ColumnLayout { // file add / remove
                    anchors.fill: parent
                    Button {
                        text: "Add Files"
                    }

                    Button {
                        text: "Remove Files"
                        enabled: false
                    }
                }
            }

            Rectangle {
                color: "red"

                Layout.fillHeight: true
                Layout.fillWidth: true
                
                ColumnLayout { // selected files list

                    
                    TableView {
                        id: files

                        model: TableModel {
                            id: fileModel

                            TableModelColumn { display: "Distance" }

                            rows: [
                                {
                                    Distance: 50
                                },
                                {
                                    Distance: 40
                                }
                            ]
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "blue"
                ColumnLayout { // Run analysis button
                    
                }
            }
        }

        Rectangle {
            //color: "gray"
            Layout.preferredHeight: 600
            Layout.fillHeight: true
            Layout.fillWidth: true

            RowLayout // rules list
            {
                anchors.fill: parent
                Rectangle // spacing
                {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 100
                }

                Rectangle
                {
                    color: "blue"
                    Layout.fillHeight: true
                    Layout.preferredWidth: 500
                    Layout.fillWidth: true

                    ScrollView {
                        anchors.fill: parent
                        contentWidth: self.availableWidth
                        ColumnLayout {
                            ColumnLayout {
                                id: ruleList
                            }

                            Rectangle
                            {
                                color: "white"
                                Layout.preferredHeight: 30
                                ColumnLayout {
                                    id: newRuleButton
                                }
                            }
                        }
                    }
                }

                Rectangle // spacing
                {
                    Layout.fillHeight: true
                    Layout.preferredWidth: 100
                }
            }
        }
    }
}