# nimmap

Toy project to test nimqml+futhark

Reads geographical vector data sources at command line and displays an interactive Qt Map of their contents

[X] Generate GDAL C API bindings via Futhark
[X] Read sources at command line via GDAL
[X] Build QAbstractListModel for each vector layer
[X] Pass models to QML via QVariantList
[X] Display Map via QML
[] Check memory for leaks