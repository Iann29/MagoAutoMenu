# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['main.py'],
    pathex=[],
    binaries=[],
    datas=[('main.qml', '.'), ('E:\\Codes\\AutoMago\\MagoMenu\\.qtcreator\\Python_3_12_4venv\\Lib\\site-packages\\PySide6\\qml', 'PySide6\\qml'), ('E:\\Codes\\AutoMago\\MagoMenu\\.qtcreator\\Python_3_12_4venv\\Lib\\site-packages\\PySide6\\plugins', 'PySide6\\plugins')],
    hiddenimports=['PySide6.QtQuick', 'PySide6.QtQml', 'PySide6.QtGui', 'PySide6.QtCore'],
    hookspath=['.'],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='main',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='main',
)
