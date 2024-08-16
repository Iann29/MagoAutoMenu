# -*- mode: python ; coding: utf-8 -*-
from PyInstaller.utils.hooks import collect_all

datas = [('main.qml', '.'), ('E:\\Codes\\AutoMago\\MagoMenu\\.qtcreator\\Python_3_12_4venv\\*', '.'), ('E:\\Codes\\AutoMago\\MagoMenu\\.qtcreator\\Python_3_12_4venv\\Lib\\site-packages\\*', '.')]
binaries = []
hiddenimports = ['PySide6', 'PySide6.QtQuick', 'PySide6.QtQml', 'PySide6.QtGui', 'PySide6.QtCore']
tmp_ret = collect_all('PySide6')
datas += tmp_ret[0]; binaries += tmp_ret[1]; hiddenimports += tmp_ret[2]


a = Analysis(
    ['main.py'],
    pathex=[],
    binaries=binaries,
    datas=datas,
    hiddenimports=hiddenimports,
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
    name='MagoMenu',
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
    name='MagoMenu',
)
