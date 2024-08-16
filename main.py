import os
import sys
from pathlib import Path
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtQuick import QQuickView

os.environ['PATH'] = str(Path(__file__).resolve().parent / ".qtcreator" / "Python_3_12_4venv" / "Lib" / "site-packages" / "PySide6" / "qml" / "QtQuick" / "Studio" / "DesignEffects") + os.pathsep + os.environ['PATH']

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    # Usando QQuickView para criar uma janela que mostre o Rectangle
    view = QQuickView()
    qml_file = Path(__file__).resolve().parent / "main.qml"
    view.setSource(qml_file.as_uri())

    # Define o tamanho da janela com base no tamanho do Rectangle no QML
    view.setResizeMode(QQuickView.SizeRootObjectToView)
    view.show()

    sys.exit(app.exec())
