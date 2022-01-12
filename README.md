# nimmap

Toy project to test nimqml+futhark

Reads geographical vector data sources at command line and displays an interactive Qt Map of their contents

![screenshot](res/screen.png?raw=true "screenshot")

- [x] Generate GDAL C API bindings via Futhark
- [x] Read sources at command line via GDAL
- [x] Build QAbstractListModel for each vector layer
- [x] Pass models to QML via QVariantList
- [x] Display Map via QML :tada:
- [ ] Check memory for leaks