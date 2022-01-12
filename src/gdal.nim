
from macros import hint

when not declared(Gdaldatatype):
  type
    Gdaldatatype* {.size: sizeof(cuint).} = enum
      Gdtunknown = 0, Gdtbyte = 1, Gdtuint16 = 2, Gdtint16 = 3, Gdtuint32 = 4,
      Gdtint32 = 5, Gdtfloat32 = 6, Gdtfloat64 = 7, Gdtcint16 = 8,
      Gdtcint32 = 9, Gdtcfloat32 = 10, Gdtcfloat64 = 11, Gdttypecount = 12
else:
  static :
    hint("Declaration of " & "GDALDataType" & " already exists, not redeclaring")
when not declared(Ogrwkbgeometrytype):
  type
    Ogrwkbgeometrytype* {.size: sizeof(cuint).} = enum
      wkbpoint25d = -2147483647, wkblinestring25d = -2147483646,
      wkbpolygon25d = -2147483645, wkbmultipoint25d = -2147483644,
      wkbmultilinestring25d = -2147483643, wkbmultipolygon25d = -2147483642,
      wkbgeometrycollection25d = -2147483641, wkbunknown = 0, wkbpoint = 1,
      wkblinestring = 2, wkbpolygon = 3, wkbmultipoint = 4,
      wkbmultilinestring = 5, wkbmultipolygon = 6, wkbgeometrycollection = 7,
      wkbcircularstring = 8, wkbcompoundcurve = 9, wkbcurvepolygon = 10,
      wkbmulticurve = 11, wkbmultisurface = 12, wkbcurve = 13, wkbsurface = 14,
      wkbpolyhedralsurface = 15, wkbtin = 16, wkbtriangle = 17, wkbnone = 100,
      wkblinearring = 101, wkbcircularstringz = 1008, wkbcompoundcurvez = 1009,
      wkbcurvepolygonz = 1010, wkbmulticurvez = 1011, wkbmultisurfacez = 1012,
      wkbcurvez = 1013, wkbsurfacez = 1014, wkbpolyhedralsurfacez = 1015,
      wkbtinz = 1016, wkbtrianglez = 1017, wkbpointm = 2001,
      wkblinestringm = 2002, wkbpolygonm = 2003, wkbmultipointm = 2004,
      wkbmultilinestringm = 2005, wkbmultipolygonm = 2006,
      wkbgeometrycollectionm = 2007, wkbcircularstringm = 2008,
      wkbcompoundcurvem = 2009, wkbcurvepolygonm = 2010, wkbmulticurvem = 2011,
      wkbmultisurfacem = 2012, wkbcurvem = 2013, wkbsurfacem = 2014,
      wkbpolyhedralsurfacem = 2015, wkbtinm = 2016, wkbtrianglem = 2017,
      wkbpointzm = 3001, wkblinestringzm = 3002, wkbpolygonzm = 3003,
      wkbmultipointzm = 3004, wkbmultilinestringzm = 3005,
      wkbmultipolygonzm = 3006, wkbgeometrycollectionzm = 3007,
      wkbcircularstringzm = 3008, wkbcompoundcurvezm = 3009,
      wkbcurvepolygonzm = 3010, wkbmulticurvezm = 3011,
      wkbmultisurfacezm = 3012, wkbcurvezm = 3013, wkbsurfacezm = 3014,
      wkbpolyhedralsurfacezm = 3015, wkbtinzm = 3016, wkbtrianglezm = 3017
else:
  static :
    hint("Declaration of " & "OGRwkbGeometryType" &
        " already exists, not redeclaring")
when not declared(Gdalaccess):
  type
    Gdalaccess* {.size: sizeof(cuint).} = enum
      Gareadonly = 0, Gaupdate = 1
else:
  static :
    hint("Declaration of " & "GDALAccess" & " already exists, not redeclaring")
when not declared(Gdalrwflag):
  type
    Gdalrwflag* {.size: sizeof(cuint).} = enum
      Gfread = 0, Gfwrite = 1
else:
  static :
    hint("Declaration of " & "GDALRWFlag" & " already exists, not redeclaring")
when not declared(ogrstyletoolparambrushid):
  type
    ogrstyletoolparambrushid* {.size: sizeof(cuint).} = enum
      Ogrstbrushfcolor = 0, Ogrstbrushbcolor = 1, Ogrstbrushid = 2,
      Ogrstbrushangle = 3, Ogrstbrushsize = 4, Ogrstbrushdx = 5,
      Ogrstbrushdy = 6, Ogrstbrushpriority = 7, Ogrstbrushlast = 8
else:
  static :
    hint("Declaration of " & "ogr_style_tool_param_brush_id" &
        " already exists, not redeclaring")
when not declared(ogrstyletoolparamlabelid):
  type
    ogrstyletoolparamlabelid* {.size: sizeof(cuint).} = enum
      Ogrstlabelfontname = 0, Ogrstlabelsize = 1, Ogrstlabeltextstring = 2,
      Ogrstlabelangle = 3, Ogrstlabelfcolor = 4, Ogrstlabelbcolor = 5,
      Ogrstlabelplacement = 6, Ogrstlabelanchor = 7, Ogrstlabeldx = 8,
      Ogrstlabeldy = 9, Ogrstlabelperp = 10, Ogrstlabelbold = 11,
      Ogrstlabelitalic = 12, Ogrstlabelunderline = 13, Ogrstlabelpriority = 14,
      Ogrstlabelstrikeout = 15, Ogrstlabelstretch = 16, Ogrstlabeladjhor = 17,
      Ogrstlabeladjvert = 18, Ogrstlabelhcolor = 19, Ogrstlabelocolor = 20,
      Ogrstlabellast = 21
else:
  static :
    hint("Declaration of " & "ogr_style_tool_param_label_id" &
        " already exists, not redeclaring")
when not declared(Ogrfieldtype):
  type
    Ogrfieldtype* {.size: sizeof(cuint).} = enum
      Oftinteger = 0, Oftintegerlist = 1, Oftreal = 2, Oftreallist = 3,
      Oftstring = 4, Oftstringlist = 5, Oftwidestring = 6,
      Oftwidestringlist = 7, Oftbinary = 8, Oftdate = 9, Ofttime = 10,
      Oftdatetime = 11, Oftinteger64 = 12, Oftinteger64list = 13
else:
  static :
    hint("Declaration of " & "OGRFieldType" & " already exists, not redeclaring")
const
  Oftmaxtype* = Oftinteger64list
when not declared(Ogrfieldsubtype):
  type
    Ogrfieldsubtype* {.size: sizeof(cuint).} = enum
      Ofstnone = 0, Ofstboolean = 1, Ofstint16 = 2, Ofstfloat32 = 3,
      Ofstjson = 4
else:
  static :
    hint("Declaration of " & "OGRFieldSubType" &
        " already exists, not redeclaring")
const
  Ofstmaxsubtype* = Ofstjson
when not declared(Gdalratfieldusage):
  type
    Gdalratfieldusage* {.size: sizeof(cuint).} = enum
      Gfugeneric = 0, Gfupixelcount = 1, Gfuname = 2, Gfumin = 3, Gfumax = 4,
      Gfuminmax = 5, Gfured = 6, Gfugreen = 7, Gfublue = 8, Gfualpha = 9,
      Gfuredmin = 10, Gfugreenmin = 11, Gfubluemin = 12, Gfualphamin = 13,
      Gfuredmax = 14, Gfugreenmax = 15, Gfubluemax = 16, Gfualphamax = 17,
      Gfumaxcount = 18
else:
  static :
    hint("Declaration of " & "GDALRATFieldUsage" &
        " already exists, not redeclaring")
when not declared(ogrstyletoolparampenid):
  type
    ogrstyletoolparampenid* {.size: sizeof(cuint).} = enum
      Ogrstpencolor = 0, Ogrstpenwidth = 1, Ogrstpenpattern = 2, Ogrstpenid = 3,
      Ogrstpenperoffset = 4, Ogrstpencap = 5, Ogrstpenjoin = 6,
      Ogrstpenpriority = 7, Ogrstpenlast = 8
else:
  static :
    hint("Declaration of " & "ogr_style_tool_param_pen_id" &
        " already exists, not redeclaring")
when not declared(ogrstyletoolunitsid):
  type
    ogrstyletoolunitsid* {.size: sizeof(cuint).} = enum
      Ogrstuground = 0, Ogrstupixel = 1, Ogrstupoints = 2, Ogrstumm = 3,
      Ogrstucm = 4, Ogrstuinches = 5
else:
  static :
    hint("Declaration of " & "ogr_style_tool_units_id" &
        " already exists, not redeclaring")
when not declared(Cplerr):
  type
    Cplerr* {.size: sizeof(cuint).} = enum
      Cenone = 0, Cedebug = 1, Cewarning = 2, Cefailure = 3, Cefatal = 4
else:
  static :
    hint("Declaration of " & "CPLErr" & " already exists, not redeclaring")
when not declared(Ogrwkbbyteorder):
  type
    Ogrwkbbyteorder* {.size: sizeof(cuint).} = enum
      wkbxdr = 0, wkbndr = 1
else:
  static :
    hint("Declaration of " & "OGRwkbByteOrder" &
        " already exists, not redeclaring")
when not declared(ogrstyletoolclassid):
  type
    ogrstyletoolclassid* {.size: sizeof(cuint).} = enum
      Ogrstcnone = 0, Ogrstcpen = 1, Ogrstcbrush = 2, Ogrstcsymbol = 3,
      Ogrstclabel = 4, Ogrstcvector = 5
else:
  static :
    hint("Declaration of " & "ogr_style_tool_class_id" &
        " already exists, not redeclaring")
when not declared(Ogrwkbvariant):
  type
    Ogrwkbvariant* {.size: sizeof(cuint).} = enum
      wkbvariantoldogc = 0, wkbvariantiso = 1, wkbvariantpostgis1 = 2
else:
  static :
    hint("Declaration of " & "OGRwkbVariant" &
        " already exists, not redeclaring")
when not declared(ogrstyletoolparamsymbolid):
  type
    ogrstyletoolparamsymbolid* {.size: sizeof(cuint).} = enum
      Ogrstsymbolid = 0, Ogrstsymbolangle = 1, Ogrstsymbolcolor = 2,
      Ogrstsymbolsize = 3, Ogrstsymboldx = 4, Ogrstsymboldy = 5,
      Ogrstsymbolstep = 6, Ogrstsymbolperp = 7, Ogrstsymboloffset = 8,
      Ogrstsymbolpriority = 9, Ogrstsymbolfontname = 10, Ogrstsymbolocolor = 11,
      Ogrstsymbollast = 12
else:
  static :
    hint("Declaration of " & "ogr_style_tool_param_symbol_id" &
        " already exists, not redeclaring")
when not declared(Gdalrioresamplealg):
  type
    Gdalrioresamplealg* {.size: sizeof(cuint).} = enum
      Grioranearestneighbour = 0, Griorabilinear = 1, Grioracubic = 2,
      Grioracubicspline = 3, Grioralanczos = 4, Grioraaverage = 5,
      Grioramode = 6, Grioragauss = 7
else:
  static :
    hint("Declaration of " & "GDALRIOResampleAlg" &
        " already exists, not redeclaring")
when not declared(Ogrjustification):
  type
    Ogrjustification* {.size: sizeof(cuint).} = enum
      Ojundefined = 0, Ojleft = 1, Ojright = 2
else:
  static :
    hint("Declaration of " & "OGRJustification" &
        " already exists, not redeclaring")
when not declared(Gdalratfieldtype):
  type
    Gdalratfieldtype* {.size: sizeof(cuint).} = enum
      Gftinteger = 0, Gftreal = 1, Gftstring = 2
else:
  static :
    hint("Declaration of " & "GDALRATFieldType" &
        " already exists, not redeclaring")
when not declared(Gdalrattabletype):
  type
    Gdalrattabletype* {.size: sizeof(cuint).} = enum
      Grttthematic = 0, Grttathematic = 1
else:
  static :
    hint("Declaration of " & "GDALRATTableType" &
        " already exists, not redeclaring")
when not declared(Cplxmlnodetype):
  type
    Cplxmlnodetype* {.size: sizeof(cuint).} = enum
      Cxtelement = 0, Cxttext = 1, Cxtattribute = 2, Cxtcomment = 3,
      Cxtliteral = 4
else:
  static :
    hint("Declaration of " & "CPLXMLNodeType" &
        " already exists, not redeclaring")
when not declared(Gdalcolorinterp):
  type
    Gdalcolorinterp* {.size: sizeof(cuint).} = enum
      Gciundefined = 0, Gcigrayindex = 1, Gcipaletteindex = 2, Gciredband = 3,
      Gcigreenband = 4, Gciblueband = 5, Gcialphaband = 6, Gcihueband = 7,
      Gcisaturationband = 8, Gcilightnessband = 9, Gcicyanband = 10,
      Gcimagentaband = 11, Gciyellowband = 12, Gciblackband = 13,
      Gciycbcryband = 14, Gciycbcrcbband = 15, Gciycbcrcrband = 16
else:
  static :
    hint("Declaration of " & "GDALColorInterp" &
        " already exists, not redeclaring")
const
  Gcimax* = Gciycbcrcrband
when not declared(Gdalpaletteinterp):
  type
    Gdalpaletteinterp* {.size: sizeof(cuint).} = enum
      Gpigray = 0, Gpirgb = 1, Gpicmyk = 2, Gpihls = 3
else:
  static :
    hint("Declaration of " & "GDALPaletteInterp" &
        " already exists, not redeclaring")
when not declared(Gdaltileorganization):
  type
    Gdaltileorganization* {.size: sizeof(cuint).} = enum
      Gtotip = 0, Gtobit = 1, Gtobsq = 2
else:
  static :
    hint("Declaration of " & "GDALTileOrganization" &
        " already exists, not redeclaring")
when not declared(Gdalasyncstatustype):
  type
    Gdalasyncstatustype* {.size: sizeof(cuint).} = enum
      Gariopending = 0, Garioupdate = 1, Garioerror = 2, Gariocomplete = 3,
      Gariotypecount = 4
else:
  static :
    hint("Declaration of " & "GDALAsyncStatusType" &
        " already exists, not redeclaring")
when not declared(Cplvirtualmem):
  type
    Cplvirtualmem* = distinct object
else:
  static :
    hint("Declaration of " & "CPLVirtualMem" &
        " already exists, not redeclaring")
when not declared(internaliowidedata):
  type
    internaliowidedata* = distinct object
else:
  static :
    hint("Declaration of " & "_IO_wide_data" &
        " already exists, not redeclaring")
when not declared(internaliocodecvt):
  type
    internaliocodecvt* = distinct object
else:
  static :
    hint("Declaration of " & "_IO_codecvt" & " already exists, not redeclaring")
when not declared(Ogrgeomfielddefnhs):
  type
    Ogrgeomfielddefnhs* = distinct object
else:
  static :
    hint("Declaration of " & "OGRGeomFieldDefnHS" &
        " already exists, not redeclaring")
when not declared(internaliomarker):
  type
    internaliomarker* = distinct object
else:
  static :
    hint("Declaration of " & "_IO_marker" & " already exists, not redeclaring")
type
  Gint16_452985075* = cshort ## Generated based on /usr/include/gdal/cpl_port.h:211:25
  Ogrgeomfielddefnh_452985077* = ptr Ogrgeomfielddefnhs ## Generated based on /usr/include/gdal/ogr_api.h:307:36
  compilerofft_452985084* = clong ## Generated based on /usr/include/x86_64-linux-gnu/bits/types.h:152:25
  Ogrstsymbolparam_452985086* = ogrstyletoolparamsymbolid_452985155 ## Generated based on /usr/include/gdal/ogr_core.h:881:3
  Ogrstyletableh_452985090* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:304:15
  Ogrdatasourceh_452985092* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:511:15
  Gdaldataseth_452985106* = pointer ## Generated based on /usr/include/gdal/gdal.h:255:15
  Ogrcoordinatetransformationh_452985114* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:76:15
  Gspacing_452985118* = Gintbig_452985145 ## Generated based on /usr/include/gdal/gdal.h:273:17
  Ogrfielddefnh_452985120* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:298:15
  Gdalcolortableh_452985122* = pointer ## Generated based on /usr/include/gdal/gdal.h:264:15
  Gdalmajorobjecth_452985124* = pointer ## Generated based on /usr/include/gdal/gdal.h:252:15
  Gdaldriverh_452985126* = pointer ## Generated based on /usr/include/gdal/gdal.h:261:15
  Ogrspatialreferenceh_452985128* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:74:15
  Ogrstyletoolh_452985130* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:706:15
  Ogrlayerh_452985132* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:509:15
  internaliofile_452985134* = object
    internalflags*: cint     ## Generated based on /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:49:8
    internalioreadptr*: cstring
    internalioreadend*: cstring
    internalioreadbase*: cstring
    internaliowritebase*: cstring
    internaliowriteptr*: cstring
    internaliowriteend*: cstring
    internaliobufbase*: cstring
    internaliobufend*: cstring
    internaliosavebase*: cstring
    internaliobackupbase*: cstring
    internaliosaveend*: cstring
    internalmarkers*: ptr internaliomarker
    internalchain*: ptr internaliofile_452985135
    internalfileno*: cint
    internalflags2*: cint
    internaloldoffset*: compilerofft_452985085
    internalcurcolumn*: cushort
    internalvtableoffset*: cschar
    internalshortbuf*: array[1'i64, cschar]
    internallock*: pointer
    internaloffset*: compileroff64t_452985137
    internalcodecvt*: ptr internaliocodecvt
    internalwidedata*: ptr internaliowidedata
    internalfreereslist*: ptr internaliofile_452985135
    internalfreeresbuf*: pointer
    compilerpad5*: csize_t
    internalmode*: cint
    internalunused2*: array[20'i64, cschar]

  compileroff64t_452985136* = clong ## Generated based on /usr/include/x86_64-linux-gnu/bits/types.h:153:27
  Gdalcolorentry_452985138* = object
    c1*: cshort              ## Generated based on /usr/include/gdal/gdal.h:1059:9
    c2*: cshort
    c3*: cshort
    c4*: cshort

  Ogrstpenparam_452985142* = ogrstyletoolparampenid_452985109 ## Generated based on /usr/include/gdal/ogr_core.h:840:3
  Gintbig_452985144* = clonglong ## Generated based on /usr/include/gdal/cpl_port.h:248:26
  Ogrstlabelparam_452985146* = ogrstyletoolparamlabelid_452985097 ## Generated based on /usr/include/gdal/ogr_core.h:912:3
  Cslconstlist_452985150* = ptr ptr cschar ## Generated based on /usr/include/gdal/cpl_port.h:1194:16
  Ogrstbrushparam_452985152* = ogrstyletoolparambrushid_452985095 ## Generated based on /usr/include/gdal/ogr_core.h:859:3
  Gdalasyncreaderh_452985165* = pointer ## Generated based on /usr/include/gdal/gdal.h:270:15
  Gdalrasterbandh_452985167* = pointer ## Generated based on /usr/include/gdal/gdal.h:258:15
  Ogrgeometryh_452985169* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:60:15
  Ogrenvelope_452985171* = object
    Minx*: cdouble           ## Generated based on /usr/include/gdal/ogr_core.h:142:9
    Maxx*: cdouble
    Miny*: cdouble
    Maxy*: cdouble

  Ogrboolean_452985173* = cint ## Generated based on /usr/include/gdal/ogr_core.h:306:17
  Ogrfeaturedefnh_452985175* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:300:15
  Cplxmlnode_452985177* = object
    etype*: Cplxmlnodetype_452985192 ## Generated based on /usr/include/gdal/cpl_minixml.h:66:16
    pszvalue*: cstring
    psnext*: ptr Cplxmlnode_452985178
    pschild*: ptr Cplxmlnode_452985178

  Gdalrasterioextraarg_452985183* = object
    nversion*: cint          ## Generated based on /usr/include/gdal/gdal.h:147:9
    eresamplealg*: Gdalrioresamplealg_452985164
    pfnprogress*: Gdalprogressfunc_452985210
    pprogressdata*: pointer
    bfloatingpointwindowvalidity*: cint
    dfxoff*: cdouble
    dfyoff*: cdouble
    dfxsize*: cdouble
    dfysize*: cdouble

  Ogrstylemgrh_452985185* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:704:15
  Gdalderivedpixelfunc_452985189* = proc (a0: ptr pointer; a1: cint;
      a2: pointer; a3: cint; a4: cint; a5: Gdaldatatype_452985072;
      a6: Gdaldatatype_452985072; a7: cint; a8: cint): Cplerr_452985113 {.cdecl.} ## Generated based on /usr/include/gdal/gdal.h:774:3
  Ogrstunitid_452985193* = ogrstyletoolunitsid_452985111 ## Generated based on /usr/include/gdal/ogr_core.h:822:3
  Ogrfeatureh_452985195* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:302:15
  Ogrerr_452985197* = cint   ## Generated based on /usr/include/gdal/ogr_core.h:290:13
  Gdalrasterattributetableh_452985199* = pointer ## Generated based on /usr/include/gdal/gdal.h:267:15
  Gdalrpcinfo_452985201* = object
    dflineoff*: cdouble      ## Generated based on /usr/include/gdal/gdal.h:1027:9
    dfsampoff*: cdouble
    dflatoff*: cdouble
    dflongoff*: cdouble
    dfheightoff*: cdouble
    dflinescale*: cdouble
    dfsampscale*: cdouble
    dflatscale*: cdouble
    dflongscale*: cdouble
    dfheightscale*: cdouble
    adflinenumcoeff*: array[20'i64, cdouble]
    adflinedencoeff*: array[20'i64, cdouble]
    adfsampnumcoeff*: array[20'i64, cdouble]
    adfsampdencoeff*: array[20'i64, cdouble]
    dfminlong*: cdouble
    dfminlat*: cdouble
    dfmaxlong*: cdouble
    dfmaxlat*: cdouble

  Ogrstclassid_452985203* = ogrstyletoolclassid_452985141 ## Generated based on /usr/include/gdal/ogr_core.h:809:3
  Gbyte_452985207* = cuchar  ## Generated based on /usr/include/gdal/cpl_port.h:215:25
  Gdalprogressfunc_452985209* = proc (a0: cdouble; a1: cstring; a2: pointer): cint {.
      cdecl.}                ## Generated based on /usr/include/gdal/cpl_progress.h:37:27
  Ogrenvelope3d_452985211* = object
    Minx*: cdouble           ## Generated based on /usr/include/gdal/ogr_core.h:251:9
    Maxx*: cdouble
    Miny*: cdouble
    Maxy*: cdouble
    Minz*: cdouble
    Maxz*: cdouble

  Ogrfield_Integerlist_t* = object
    ncount*: cint
    palist*: ptr cint

  Ogrfield_Integer64list_t* = object
    ncount*: cint
    palist*: ptr Gintbig_452985145

  Ogrfield_Reallist_t* = object
    ncount*: cint
    palist*: ptr cdouble

  Ogrfield_Stringlist_t* = object
    ncount*: cint
    palist*: ptr ptr cschar

  Ogrfield_Binary_t* = object
    ncount*: cint
    padata*: ptr Gbyte_452985208

  Ogrfield_Set_t* = object
    nmarker1*: cint
    nmarker2*: cint
    nmarker3*: cint

  Ogrfield_Date_t* = object
    Year*: Gint16_452985076
    Month*: Gbyte_452985208
    Day*: Gbyte_452985208
    Hour*: Gbyte_452985208
    Minute*: Gbyte_452985208
    Tzflag*: Gbyte_452985208
    Reserved*: Gbyte_452985208
    Second*: cfloat

  Ogrfield_452985213* {.union.} = object
    Integer*: cint           ## Generated based on /usr/include/gdal/ogr_core.h:683:9
    Integer64*: Gintbig_452985145
    Real*: cdouble
    String*: cstring
    Integerlist*: Ogrfield_Integerlist_t
    Integer64list*: Ogrfield_Integer64list_t
    Reallist*: Ogrfield_Reallist_t
    Stringlist*: Ogrfield_Stringlist_t
    Binary*: Ogrfield_Binary_t
    Set*: Ogrfield_Set_t
    Date*: Ogrfield_Date_t

  Guintbig_452985215* = culonglong ## Generated based on /usr/include/gdal/cpl_port.h:251:28
  Gdalgcp_452985221* = object
    pszid*: cstring          ## Generated based on /usr/include/gdal/gdal.h:563:9
    pszinfo*: cstring
    dfgcppixel*: cdouble
    dfgcpline*: cdouble
    dfgcpx*: cdouble
    dfgcpy*: cdouble
    dfgcpz*: cdouble

  Gptrdifft_452985223* = Gintbig_452985145 ## Generated based on /usr/include/gdal/cpl_port.h:286:26
  Ogrsfdriverh_452985225* = pointer ## Generated based on /usr/include/gdal/ogr_api.h:513:15
  File_452985229* = internaliofile_452985135 ## Generated based on /usr/include/x86_64-linux-gnu/bits/types/FILE.h:7:25
  Cplxmlnode_452985178* = (when declared(Cplxmlnode):
    Cplxmlnode
   else:
    Cplxmlnode_452985177)
  Ogrfield_452985214* = (when declared(Ogrfield):
    Ogrfield
   else:
    Ogrfield_452985213)
  Ogrstunitid_452985194* = (when declared(Ogrstunitid):
    Ogrstunitid
   else:
    Ogrstunitid_452985193)
  Ogrjustification_452985180* = (when declared(Ogrjustification):
    Ogrjustification
   else:
    Ogrjustification_452985179)
  Gdalratfieldtype_452985182* = (when declared(Gdalratfieldtype):
    Gdalratfieldtype
   else:
    Gdalratfieldtype_452985181)
  Gdalcolorentry_452985139* = (when declared(Gdalcolorentry):
    Gdalcolorentry
   else:
    Gdalcolorentry_452985138)
  Gdalaccess_452985080* = (when declared(Gdalaccess):
    Gdalaccess
   else:
    Gdalaccess_452985079)
  Ogrstyletoolh_452985131* = (when declared(Ogrstyletoolh):
    Ogrstyletoolh
   else:
    Ogrstyletoolh_452985130)
  Ogrstbrushparam_452985153* = (when declared(Ogrstbrushparam):
    Ogrstbrushparam
   else:
    Ogrstbrushparam_452985152)
  ogrstyletoolparambrushid_452985095* = (when declared(ogrstyletoolparambrushid):
    ogrstyletoolparambrushid
   else:
    ogrstyletoolparambrushid_452985094)
  compilerofft_452985085* = (when declared(compilerofft):
    compilerofft
   else:
    compilerofft_452985084)
  ogrstyletoolparamsymbolid_452985155* = (when declared(
      ogrstyletoolparamsymbolid):
    ogrstyletoolparamsymbolid
   else:
    ogrstyletoolparamsymbolid_452985154)
  Gdaldatatype_452985072* = (when declared(Gdaldatatype):
    Gdaldatatype
   else:
    Gdaldatatype_452985070)
  Ogrstsymbolparam_452985087* = (when declared(Ogrstsymbolparam):
    Ogrstsymbolparam
   else:
    Ogrstsymbolparam_452985086)
  Ogrlayerh_452985133* = (when declared(Ogrlayerh):
    Ogrlayerh
   else:
    Ogrlayerh_452985132)
  Gptrdifft_452985224* = (when declared(Gptrdifft):
    Gptrdifft
   else:
    Gptrdifft_452985223)
  ogrstyletoolclassid_452985141* = (when declared(ogrstyletoolclassid):
    ogrstyletoolclassid
   else:
    ogrstyletoolclassid_452985140)
  Gdalrioresamplealg_452985164* = (when declared(Gdalrioresamplealg):
    Gdalrioresamplealg
   else:
    Gdalrioresamplealg_452985163)
  Gdalrpcinfo_452985202* = (when declared(Gdalrpcinfo):
    Gdalrpcinfo
   else:
    Gdalrpcinfo_452985201)
  Gdalasyncreaderh_452985166* = (when declared(Gdalasyncreaderh):
    Gdalasyncreaderh
   else:
    Gdalasyncreaderh_452985165)
  ogrstyletoolparamlabelid_452985097* = (when declared(ogrstyletoolparamlabelid):
    ogrstyletoolparamlabelid
   else:
    ogrstyletoolparamlabelid_452985096)
  internaliofile_452985135* = (when declared(internaliofile):
    internaliofile
   else:
    internaliofile_452985134)
  compileroff64t_452985137* = (when declared(compileroff64t):
    compileroff64t
   else:
    compileroff64t_452985136)
  Ogrstpenparam_452985143* = (when declared(Ogrstpenparam):
    Ogrstpenparam
   else:
    Ogrstpenparam_452985142)
  Ogrfeatureh_452985196* = (when declared(Ogrfeatureh):
    Ogrfeatureh
   else:
    Ogrfeatureh_452985195)
  Guintbig_452985216* = (when declared(Guintbig):
    Guintbig
   else:
    Guintbig_452985215)
  Ogrsfdriverh_452985226* = (when declared(Ogrsfdriverh):
    Ogrsfdriverh
   else:
    Ogrsfdriverh_452985225)
  Ogrstclassid_452985204* = (when declared(Ogrstclassid):
    Ogrstclassid
   else:
    Ogrstclassid_452985203)
  ogrstyletoolunitsid_452985111* = (when declared(ogrstyletoolunitsid):
    ogrstyletoolunitsid
   else:
    ogrstyletoolunitsid_452985110)
  Ogrstylemgrh_452985186* = (when declared(Ogrstylemgrh):
    Ogrstylemgrh
   else:
    Ogrstylemgrh_452985185)
  Ogrerr_452985198* = (when declared(Ogrerr):
    Ogrerr
   else:
    Ogrerr_452985197)
  Ogrwkbgeometrytype_452985074* = (when declared(Ogrwkbgeometrytype):
    Ogrwkbgeometrytype
   else:
    Ogrwkbgeometrytype_452985073)
  Gdalrwflag_452985089* = (when declared(Gdalrwflag):
    Gdalrwflag
   else:
    Gdalrwflag_452985088)
  Gdalmajorobjecth_452985125* = (when declared(Gdalmajorobjecth):
    Gdalmajorobjecth
   else:
    Gdalmajorobjecth_452985124)
  Gdalrasterattributetableh_452985200* = (when declared(
      Gdalrasterattributetableh):
    Gdalrasterattributetableh
   else:
    Gdalrasterattributetableh_452985199)
  Cplerr_452985113* = (when declared(Cplerr):
    Cplerr
   else:
    Cplerr_452985112)
  Ogrfieldtype_452985099* = (when declared(Ogrfieldtype):
    Ogrfieldtype
   else:
    Ogrfieldtype_452985098)
  Ogrstyletableh_452985091* = (when declared(Ogrstyletableh):
    Ogrstyletableh
   else:
    Ogrstyletableh_452985090)
  Ogrfieldsubtype_452985101* = (when declared(Ogrfieldsubtype):
    Ogrfieldsubtype
   else:
    Ogrfieldsubtype_452985100)
  Gintbig_452985145* = (when declared(Gintbig):
    Gintbig
   else:
    Gintbig_452985144)
  Gdalrasterbandh_452985168* = (when declared(Gdalrasterbandh):
    Gdalrasterbandh
   else:
    Gdalrasterbandh_452985167)
  Gdaldataseth_452985107* = (when declared(Gdaldataseth):
    Gdaldataseth
   else:
    Gdaldataseth_452985106)
  Gdalpaletteinterp_452985218* = (when declared(Gdalpaletteinterp):
    Gdalpaletteinterp
   else:
    Gdalpaletteinterp_452985217)
  Gdaltileorganization_452985220* = (when declared(Gdaltileorganization):
    Gdaltileorganization
   else:
    Gdaltileorganization_452985219)
  Gdalasyncstatustype_452985228* = (when declared(Gdalasyncstatustype):
    Gdalasyncstatustype
   else:
    Gdalasyncstatustype_452985227)
  Gdalratfieldusage_452985103* = (when declared(Gdalratfieldusage):
    Gdalratfieldusage
   else:
    Gdalratfieldusage_452985102)
  Ogrcoordinatetransformationh_452985115* = (when declared(
      Ogrcoordinatetransformationh):
    Ogrcoordinatetransformationh
   else:
    Ogrcoordinatetransformationh_452985114)
  Ogrstlabelparam_452985147* = (when declared(Ogrstlabelparam):
    Ogrstlabelparam
   else:
    Ogrstlabelparam_452985146)
  File_452985230* = (when declared(File):
    File
   else:
    File_452985229)
  Gdalcolorinterp_452985206* = (when declared(Gdalcolorinterp):
    Gdalcolorinterp
   else:
    Gdalcolorinterp_452985205)
  Ogrgeometryh_452985170* = (when declared(Ogrgeometryh):
    Ogrgeometryh
   else:
    Ogrgeometryh_452985169)
  Ogrenvelope_452985172* = (when declared(Ogrenvelope):
    Ogrenvelope
   else:
    Ogrenvelope_452985171)
  Ogrboolean_452985174* = (when declared(Ogrboolean):
    Ogrboolean
   else:
    Ogrboolean_452985173)
  Gdalrasterioextraarg_452985184* = (when declared(Gdalrasterioextraarg):
    Gdalrasterioextraarg
   else:
    Gdalrasterioextraarg_452985183)
  Gbyte_452985208* = (when declared(Gbyte):
    Gbyte
   else:
    Gbyte_452985207)
  Gdalgcp_452985222* = (when declared(Gdalgcp):
    Gdalgcp
   else:
    Gdalgcp_452985221)
  Gdaldriverh_452985127* = (when declared(Gdaldriverh):
    Gdaldriverh
   else:
    Gdaldriverh_452985126)
  Gdalrattabletype_452985188* = (when declared(Gdalrattabletype):
    Gdalrattabletype
   else:
    Gdalrattabletype_452985187)
  Ogrwkbbyteorder_452985117* = (when declared(Ogrwkbbyteorder):
    Ogrwkbbyteorder
   else:
    Ogrwkbbyteorder_452985116)
  Gdalderivedpixelfunc_452985190* = (when declared(Gdalderivedpixelfunc):
    Gdalderivedpixelfunc
   else:
    Gdalderivedpixelfunc_452985189)
  Gdalprogressfunc_452985210* = (when declared(Gdalprogressfunc):
    Gdalprogressfunc
   else:
    Gdalprogressfunc_452985209)
  Gint16_452985076* = (when declared(Gint16):
    Gint16
   else:
    Gint16_452985075)
  Gspacing_452985119* = (when declared(Gspacing):
    Gspacing
   else:
    Gspacing_452985118)
  Ogrfielddefnh_452985121* = (when declared(Ogrfielddefnh):
    Ogrfielddefnh
   else:
    Ogrfielddefnh_452985120)
  Ogrspatialreferenceh_452985129* = (when declared(Ogrspatialreferenceh):
    Ogrspatialreferenceh
   else:
    Ogrspatialreferenceh_452985128)
  Gdalcolortableh_452985123* = (when declared(Gdalcolortableh):
    Gdalcolortableh
   else:
    Gdalcolortableh_452985122)
  Ogrfeaturedefnh_452985176* = (when declared(Ogrfeaturedefnh):
    Ogrfeaturedefnh
   else:
    Ogrfeaturedefnh_452985175)
  Ogrenvelope3d_452985212* = (when declared(Ogrenvelope3d):
    Ogrenvelope3d
   else:
    Ogrenvelope3d_452985211)
  ogrstyletoolparampenid_452985109* = (when declared(ogrstyletoolparampenid):
    ogrstyletoolparampenid
   else:
    ogrstyletoolparampenid_452985108)
  Ogrwkbvariant_452985149* = (when declared(Ogrwkbvariant):
    Ogrwkbvariant
   else:
    Ogrwkbvariant_452985148)
  Cplxmlnodetype_452985192* = (when declared(Cplxmlnodetype):
    Cplxmlnodetype
   else:
    Cplxmlnodetype_452985191)
  Ogrgeomfielddefnh_452985078* = (when declared(Ogrgeomfielddefnh):
    Ogrgeomfielddefnh
   else:
    Ogrgeomfielddefnh_452985077)
  Ogrdatasourceh_452985093* = (when declared(Ogrdatasourceh):
    Ogrdatasourceh
   else:
    Ogrdatasourceh_452985092)
  Cslconstlist_452985151* = (when declared(Cslconstlist):
    Cslconstlist
   else:
    Cslconstlist_452985150)
when not declared(Cplxmlnode):
  type
    Cplxmlnode* = Cplxmlnode_452985177
else:
  static :
    hint("Declaration of " & "CPLXMLNode" & " already exists, not redeclaring")
when not declared(Ogrfield):
  type
    Ogrfield* = Ogrfield_452985213
else:
  static :
    hint("Declaration of " & "OGRField" & " already exists, not redeclaring")
when not declared(Ogrstunitid):
  type
    Ogrstunitid* = Ogrstunitid_452985193
else:
  static :
    hint("Declaration of " & "OGRSTUnitId" & " already exists, not redeclaring")
when not declared(Gdalcolorentry):
  type
    Gdalcolorentry* = Gdalcolorentry_452985138
else:
  static :
    hint("Declaration of " & "GDALColorEntry" &
        " already exists, not redeclaring")
when not declared(Ogrstyletoolh):
  type
    Ogrstyletoolh* = Ogrstyletoolh_452985130
else:
  static :
    hint("Declaration of " & "OGRStyleToolH" &
        " already exists, not redeclaring")
when not declared(Ogrstbrushparam):
  type
    Ogrstbrushparam* = Ogrstbrushparam_452985152
else:
  static :
    hint("Declaration of " & "OGRSTBrushParam" &
        " already exists, not redeclaring")
when not declared(compilerofft):
  type
    compilerofft* = compilerofft_452985084
else:
  static :
    hint("Declaration of " & "__off_t" & " already exists, not redeclaring")
when not declared(Ogrstsymbolparam):
  type
    Ogrstsymbolparam* = Ogrstsymbolparam_452985086
else:
  static :
    hint("Declaration of " & "OGRSTSymbolParam" &
        " already exists, not redeclaring")
when not declared(Ogrlayerh):
  type
    Ogrlayerh* = Ogrlayerh_452985132
else:
  static :
    hint("Declaration of " & "OGRLayerH" & " already exists, not redeclaring")
when not declared(Gptrdifft):
  type
    Gptrdifft* = Gptrdifft_452985223
else:
  static :
    hint("Declaration of " & "GPtrDiff_t" & " already exists, not redeclaring")
when not declared(Gdalrpcinfo):
  type
    Gdalrpcinfo* = Gdalrpcinfo_452985201
else:
  static :
    hint("Declaration of " & "GDALRPCInfo" & " already exists, not redeclaring")
when not declared(Gdalasyncreaderh):
  type
    Gdalasyncreaderh* = Gdalasyncreaderh_452985165
else:
  static :
    hint("Declaration of " & "GDALAsyncReaderH" &
        " already exists, not redeclaring")
when not declared(internaliofile):
  type
    internaliofile* = internaliofile_452985134
else:
  static :
    hint("Declaration of " & "_IO_FILE" & " already exists, not redeclaring")
when not declared(compileroff64t):
  type
    compileroff64t* = compileroff64t_452985136
else:
  static :
    hint("Declaration of " & "__off64_t" & " already exists, not redeclaring")
when not declared(Ogrstpenparam):
  type
    Ogrstpenparam* = Ogrstpenparam_452985142
else:
  static :
    hint("Declaration of " & "OGRSTPenParam" &
        " already exists, not redeclaring")
when not declared(Ogrfeatureh):
  type
    Ogrfeatureh* = Ogrfeatureh_452985195
else:
  static :
    hint("Declaration of " & "OGRFeatureH" & " already exists, not redeclaring")
when not declared(Guintbig):
  type
    Guintbig* = Guintbig_452985215
else:
  static :
    hint("Declaration of " & "GUIntBig" & " already exists, not redeclaring")
when not declared(Ogrsfdriverh):
  type
    Ogrsfdriverh* = Ogrsfdriverh_452985225
else:
  static :
    hint("Declaration of " & "OGRSFDriverH" & " already exists, not redeclaring")
when not declared(Ogrstclassid):
  type
    Ogrstclassid* = Ogrstclassid_452985203
else:
  static :
    hint("Declaration of " & "OGRSTClassId" & " already exists, not redeclaring")
when not declared(Ogrstylemgrh):
  type
    Ogrstylemgrh* = Ogrstylemgrh_452985185
else:
  static :
    hint("Declaration of " & "OGRStyleMgrH" & " already exists, not redeclaring")
when not declared(Ogrerr):
  type
    Ogrerr* = Ogrerr_452985197
else:
  static :
    hint("Declaration of " & "OGRErr" & " already exists, not redeclaring")
when not declared(Gdalmajorobjecth):
  type
    Gdalmajorobjecth* = Gdalmajorobjecth_452985124
else:
  static :
    hint("Declaration of " & "GDALMajorObjectH" &
        " already exists, not redeclaring")
when not declared(Gdalrasterattributetableh):
  type
    Gdalrasterattributetableh* = Gdalrasterattributetableh_452985199
else:
  static :
    hint("Declaration of " & "GDALRasterAttributeTableH" &
        " already exists, not redeclaring")
when not declared(Ogrstyletableh):
  type
    Ogrstyletableh* = Ogrstyletableh_452985090
else:
  static :
    hint("Declaration of " & "OGRStyleTableH" &
        " already exists, not redeclaring")
when not declared(Gintbig):
  type
    Gintbig* = Gintbig_452985144
else:
  static :
    hint("Declaration of " & "GIntBig" & " already exists, not redeclaring")
when not declared(Gdalrasterbandh):
  type
    Gdalrasterbandh* = Gdalrasterbandh_452985167
else:
  static :
    hint("Declaration of " & "GDALRasterBandH" &
        " already exists, not redeclaring")
when not declared(Gdaldataseth):
  type
    Gdaldataseth* = Gdaldataseth_452985106
else:
  static :
    hint("Declaration of " & "GDALDatasetH" & " already exists, not redeclaring")
when not declared(Ogrcoordinatetransformationh):
  type
    Ogrcoordinatetransformationh* = Ogrcoordinatetransformationh_452985114
else:
  static :
    hint("Declaration of " & "OGRCoordinateTransformationH" &
        " already exists, not redeclaring")
when not declared(Ogrstlabelparam):
  type
    Ogrstlabelparam* = Ogrstlabelparam_452985146
else:
  static :
    hint("Declaration of " & "OGRSTLabelParam" &
        " already exists, not redeclaring")
when not declared(File):
  type
    File* = File_452985229
else:
  static :
    hint("Declaration of " & "FILE" & " already exists, not redeclaring")
when not declared(Ogrgeometryh):
  type
    Ogrgeometryh* = Ogrgeometryh_452985169
else:
  static :
    hint("Declaration of " & "OGRGeometryH" & " already exists, not redeclaring")
when not declared(Ogrenvelope):
  type
    Ogrenvelope* = Ogrenvelope_452985171
else:
  static :
    hint("Declaration of " & "OGREnvelope" & " already exists, not redeclaring")
when not declared(Ogrboolean):
  type
    Ogrboolean* = Ogrboolean_452985173
else:
  static :
    hint("Declaration of " & "OGRBoolean" & " already exists, not redeclaring")
when not declared(Gdalrasterioextraarg):
  type
    Gdalrasterioextraarg* = Gdalrasterioextraarg_452985183
else:
  static :
    hint("Declaration of " & "GDALRasterIOExtraArg" &
        " already exists, not redeclaring")
when not declared(Gbyte):
  type
    Gbyte* = Gbyte_452985207
else:
  static :
    hint("Declaration of " & "GByte" & " already exists, not redeclaring")
when not declared(Gdalgcp):
  type
    Gdalgcp* = Gdalgcp_452985221
else:
  static :
    hint("Declaration of " & "GDAL_GCP" & " already exists, not redeclaring")
when not declared(Gdaldriverh):
  type
    Gdaldriverh* = Gdaldriverh_452985126
else:
  static :
    hint("Declaration of " & "GDALDriverH" & " already exists, not redeclaring")
when not declared(Gdalderivedpixelfunc):
  type
    Gdalderivedpixelfunc* = Gdalderivedpixelfunc_452985189
else:
  static :
    hint("Declaration of " & "GDALDerivedPixelFunc" &
        " already exists, not redeclaring")
when not declared(Gdalprogressfunc):
  type
    Gdalprogressfunc* = Gdalprogressfunc_452985209
else:
  static :
    hint("Declaration of " & "GDALProgressFunc" &
        " already exists, not redeclaring")
when not declared(Gint16):
  type
    Gint16* = Gint16_452985075
else:
  static :
    hint("Declaration of " & "GInt16" & " already exists, not redeclaring")
when not declared(Gspacing):
  type
    Gspacing* = Gspacing_452985118
else:
  static :
    hint("Declaration of " & "GSpacing" & " already exists, not redeclaring")
when not declared(Ogrfielddefnh):
  type
    Ogrfielddefnh* = Ogrfielddefnh_452985120
else:
  static :
    hint("Declaration of " & "OGRFieldDefnH" &
        " already exists, not redeclaring")
when not declared(Ogrspatialreferenceh):
  type
    Ogrspatialreferenceh* = Ogrspatialreferenceh_452985128
else:
  static :
    hint("Declaration of " & "OGRSpatialReferenceH" &
        " already exists, not redeclaring")
when not declared(Gdalcolortableh):
  type
    Gdalcolortableh* = Gdalcolortableh_452985122
else:
  static :
    hint("Declaration of " & "GDALColorTableH" &
        " already exists, not redeclaring")
when not declared(Ogrfeaturedefnh):
  type
    Ogrfeaturedefnh* = Ogrfeaturedefnh_452985175
else:
  static :
    hint("Declaration of " & "OGRFeatureDefnH" &
        " already exists, not redeclaring")
when not declared(Ogrenvelope3d):
  type
    Ogrenvelope3d* = Ogrenvelope3d_452985211
else:
  static :
    hint("Declaration of " & "OGREnvelope3D" &
        " already exists, not redeclaring")
when not declared(Ogrgeomfielddefnh):
  type
    Ogrgeomfielddefnh* = Ogrgeomfielddefnh_452985077
else:
  static :
    hint("Declaration of " & "OGRGeomFieldDefnH" &
        " already exists, not redeclaring")
when not declared(Ogrdatasourceh):
  type
    Ogrdatasourceh* = Ogrdatasourceh_452985092
else:
  static :
    hint("Declaration of " & "OGRDataSourceH" &
        " already exists, not redeclaring")
when not declared(Cslconstlist):
  type
    Cslconstlist* = Cslconstlist_452985150
else:
  static :
    hint("Declaration of " & "CSLConstList" & " already exists, not redeclaring")
when not declared(Ogrgremovegeometry):
  proc Ogrgremovegeometry*(a0: Ogrgeometryh_452985170; a1: cint; a2: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_RemoveGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_RemoveGeometry" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetrollbacktransaction):
  proc Gdaldatasetrollbacktransaction*(hds: Gdaldataseth_452985107): Ogrerr_452985198 {.
      cdecl, importc: "GDALDatasetRollbackTransaction".}
else:
  static :
    hint("Declaration of " & "GDALDatasetRollbackTransaction" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldinteger64):
  proc Ogrfsetfieldinteger64*(a0: Ogrfeatureh_452985196; a1: cint; a2: Gintbig_452985145): void {.
      cdecl, importc: "OGR_F_SetFieldInteger64".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldInteger64" &
        " already exists, not redeclaring")
when not declared(Ogrlcreatefeature):
  proc Ogrlcreatefeature*(a0: Ogrlayerh_452985133; a1: Ogrfeatureh_452985196): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_CreateFeature".}
else:
  static :
    hint("Declaration of " & "OGR_L_CreateFeature" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastersampleoverviewex):
  proc Gdalgetrastersampleoverviewex*(a0: Gdalrasterbandh_452985168;
                                      a1: Guintbig_452985216): Gdalrasterbandh_452985168 {.
      cdecl, importc: "GDALGetRasterSampleOverviewEx".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterSampleOverviewEx" &
        " already exists, not redeclaring")
when not declared(Ogrgaddgeometry):
  proc Ogrgaddgeometry*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_AddGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_AddGeometry" &
        " already exists, not redeclaring")
when not declared(Gdalsetmetadata):
  proc Gdalsetmetadata*(a0: Gdalmajorobjecth_452985125; a1: Cslconstlist_452985151;
                        a2: cstring): Cplerr_452985113 {.cdecl,
      importc: "GDALSetMetadata".}
else:
  static :
    hint("Declaration of " & "GDALSetMetadata" &
        " already exists, not redeclaring")
when not declared(Ogrlreorderfield):
  proc Ogrlreorderfield*(a0: Ogrlayerh_452985133; ioldfieldpos: cint;
                         inewfieldpos: cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_L_ReorderField".}
else:
  static :
    hint("Declaration of " & "OGR_L_ReorderField" &
        " already exists, not redeclaring")
when not declared(Gdalsetdefaulthistogram):
  proc Gdalsetdefaulthistogram*(hband: Gdalrasterbandh_452985168;
                                dfmin: cdouble; dfmax: cdouble; nbuckets: cint;
                                panhistogram: ptr cint): Cplerr_452985113 {.
      cdecl, importc: "GDALSetDefaultHistogram".}
else:
  static :
    hint("Declaration of " & "GDALSetDefaultHistogram" &
        " already exists, not redeclaring")
when not declared(Gdalgetmetadata):
  proc Gdalgetmetadata*(a0: Gdalmajorobjecth_452985125; a1: cstring): ptr ptr cschar {.
      cdecl, importc: "GDALGetMetadata".}
else:
  static :
    hint("Declaration of " & "GDALGetMetadata" &
        " already exists, not redeclaring")
when not declared(Ogrgfldgetspatialref):
  proc Ogrgfldgetspatialref*(a0: Ogrgeomfielddefnh_452985078): Ogrspatialreferenceh_452985129 {.
      cdecl, importc: "OGR_GFld_GetSpatialRef".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_GetSpatialRef" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetrasterio):
  proc Gdaldatasetrasterio*(hds: Gdaldataseth_452985107; erwflag: Gdalrwflag_452985089;
                            ndsxoff: cint; ndsyoff: cint; ndsxsize: cint;
                            ndsysize: cint; pbuffer: pointer; nbxsize: cint;
                            nbysize: cint; ebdatatype: Gdaldatatype_452985072;
                            nbandcount: cint; panbandcount: ptr cint;
                            npixelspace: cint; nlinespace: cint;
                            nbandspace: cint): Cplerr_452985113 {.cdecl,
      importc: "GDALDatasetRasterIO".}
else:
  static :
    hint("Declaration of " & "GDALDatasetRasterIO" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetresetreading):
  proc Gdaldatasetresetreading*(a0: Gdaldataseth_452985107): void {.cdecl,
      importc: "GDALDatasetResetReading".}
else:
  static :
    hint("Declaration of " & "GDALDatasetResetReading" &
        " already exists, not redeclaring")
when not declared(Gdaldeletedataset):
  proc Gdaldeletedataset*(a0: Gdaldriverh_452985127; a1: cstring): Cplerr_452985113 {.
      cdecl, importc: "GDALDeleteDataset".}
else:
  static :
    hint("Declaration of " & "GDALDeleteDataset" &
        " already exists, not redeclaring")
when not declared(Gdalreadworldfile):
  proc Gdalreadworldfile*(a0: cstring; a1: cstring; a2: ptr cdouble): cint {.
      cdecl, importc: "GDALReadWorldFile".}
else:
  static :
    hint("Declaration of " & "GDALReadWorldFile" &
        " already exists, not redeclaring")
when not declared(Ogrgfldisignored):
  proc Ogrgfldisignored*(hdefn: Ogrgeomfielddefnh_452985078): cint {.cdecl,
      importc: "OGR_GFld_IsIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_IsIgnored" &
        " already exists, not redeclaring")
when not declared(Gdalgetmetadatadomainlist):
  proc Gdalgetmetadatadomainlist*(hobject: Gdalmajorobjecth_452985125): ptr ptr cschar {.
      cdecl, importc: "GDALGetMetadataDomainList".}
else:
  static :
    hint("Declaration of " & "GDALGetMetadataDomainList" &
        " already exists, not redeclaring")
when not declared(Ogrstgetrgbfromstring):
  proc Ogrstgetrgbfromstring*(hst: Ogrstyletoolh_452985131; pszcolor: cstring;
                              pnred: ptr cint; pngreen: ptr cint;
                              pnblue: ptr cint; pnalpha: ptr cint): cint {.
      cdecl, importc: "OGR_ST_GetRGBFromString".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetRGBFromString" &
        " already exists, not redeclaring")
when not declared(Gdalgetpaletteinterpretationname):
  proc Gdalgetpaletteinterpretationname*(a0: Gdalpaletteinterp_452985218): cstring {.
      cdecl, importc: "GDALGetPaletteInterpretationName".}
else:
  static :
    hint("Declaration of " & "GDALGetPaletteInterpretationName" &
        " already exists, not redeclaring")
when not declared(Gdalcopydatasetfiles):
  proc Gdalcopydatasetfiles*(a0: Gdaldriverh_452985127; psznewname: cstring;
                             pszoldname: cstring): Cplerr_452985113 {.cdecl,
      importc: "GDALCopyDatasetFiles".}
else:
  static :
    hint("Declaration of " & "GDALCopyDatasetFiles" &
        " already exists, not redeclaring")
when not declared(Ogrstrdup):
  proc Ogrstrdup*(a0: cstring): cstring {.cdecl, importc: "OGRStrdup".}
else:
  static :
    hint("Declaration of " & "OGRStrdup" & " already exists, not redeclaring")
when not declared(Ogrfsetstylestring):
  proc Ogrfsetstylestring*(a0: Ogrfeatureh_452985196; a1: cstring): void {.
      cdecl, importc: "OGR_F_SetStyleString".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetStyleString" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpoints):
  proc Ogrgsetpoints*(hgeom: Ogrgeometryh_452985170; npointsin: cint;
                      pabyx: pointer; nxstride: cint; pabyy: pointer;
                      nystride: cint; pabyz: pointer; nzstride: cint): void {.
      cdecl, importc: "OGR_G_SetPoints".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPoints" &
        " already exists, not redeclaring")
when not declared(Ogrlsetfeature):
  proc Ogrlsetfeature*(a0: Ogrlayerh_452985133; a1: Ogrfeatureh_452985196): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_SetFeature".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetFeature" &
        " already exists, not redeclaring")
when not declared(Ogrfddestroy):
  proc Ogrfddestroy*(a0: Ogrfeaturedefnh_452985176): void {.cdecl,
      importc: "OGR_FD_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_FD_Destroy" &
        " already exists, not redeclaring")
when not declared(Ogrstcreate):
  proc Ogrstcreate*(eclassid: Ogrstclassid_452985204): Ogrstyletoolh_452985131 {.
      cdecl, importc: "OGR_ST_Create".}
else:
  static :
    hint("Declaration of " & "OGR_ST_Create" &
        " already exists, not redeclaring")
when not declared(Gmfnodata):
  const
    Gmfnodata* = 8           ## Generated based on /usr/include/gdal/gdal.h:918:9
else:
  static :
    hint("Declaration of " & "GMF_NODATA" & " already exists, not redeclaring")
when not declared(Gdalratgetlinearbinning):
  proc Gdalratgetlinearbinning*(a0: Gdalrasterattributetableh_452985200;
                                a1: ptr cdouble; a2: ptr cdouble): cint {.cdecl,
      importc: "GDALRATGetLinearBinning".}
else:
  static :
    hint("Declaration of " & "GDALRATGetLinearBinning" &
        " already exists, not redeclaring")
when not declared(Ogrgdumpreadable):
  proc Ogrgdumpreadable*(a0: Ogrgeometryh_452985170; a1: ptr File_452985230;
                         a2: cstring): void {.cdecl,
      importc: "OGR_G_DumpReadable".}
else:
  static :
    hint("Declaration of " & "OGR_G_DumpReadable" &
        " already exists, not redeclaring")
when not declared(Ogrgcreategeometryfromjson):
  proc Ogrgcreategeometryfromjson*(a0: cstring): Ogrgeometryh_452985170 {.cdecl,
      importc: "OGR_G_CreateGeometryFromJson".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateGeometryFromJson" &
        " already exists, not redeclaring")
when not declared(Ogrstgetparamnum):
  proc Ogrstgetparamnum*(hst: Ogrstyletoolh_452985131; eparam: cint;
                         bvalueisnull: ptr cint): cint {.cdecl,
      importc: "OGR_ST_GetParamNum".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetParamNum" &
        " already exists, not redeclaring")
when not declared(Ogrgeometrytypetoname):
  proc Ogrgeometrytypetoname*(etype: Ogrwkbgeometrytype_452985074): cstring {.
      cdecl, importc: "OGRGeometryTypeToName".}
else:
  static :
    hint("Declaration of " & "OGRGeometryTypeToName" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasstring):
  proc Ogrfgetfieldasstring*(a0: Ogrfeatureh_452985196; a1: cint): cstring {.
      cdecl, importc: "OGR_F_GetFieldAsString".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsString" &
        " already exists, not redeclaring")
when not declared(Ogrstblfind):
  proc Ogrstblfind*(hstyletable: Ogrstyletableh_452985091; pszname: cstring): cstring {.
      cdecl, importc: "OGR_STBL_Find".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_Find" &
        " already exists, not redeclaring")
when not declared(Gdalgetspatialref):
  proc Gdalgetspatialref*(a0: Gdaldataseth_452985107): Ogrspatialreferenceh_452985129 {.
      cdecl, importc: "GDALGetSpatialRef".}
else:
  static :
    hint("Declaration of " & "GDALGetSpatialRef" &
        " already exists, not redeclaring")
when not declared(Ogrfsetgeomfield):
  proc Ogrfsetgeomfield*(hfeat: Ogrfeatureh_452985196; ifield: cint;
                         hgeom: Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_F_SetGeomField".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetGeomField" &
        " already exists, not redeclaring")
when not declared(Ogrldeletefeature):
  proc Ogrldeletefeature*(a0: Ogrlayerh_452985133; a1: Gintbig_452985145): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_DeleteFeature".}
else:
  static :
    hint("Declaration of " & "OGR_L_DeleteFeature" &
        " already exists, not redeclaring")
when not declared(Gdalcomputerasterminmax):
  proc Gdalcomputerasterminmax*(hband: Gdalrasterbandh_452985168;
                                bapproxok: cint;
                                adfminmax: array[2'i64, cdouble]): void {.cdecl,
      importc: "GDALComputeRasterMinMax".}
else:
  static :
    hint("Declaration of " & "GDALComputeRasterMinMax" &
        " already exists, not redeclaring")
when not declared(Ogrgtgetcurve):
  proc Ogrgtgetcurve*(etype: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GT_GetCurve".}
else:
  static :
    hint("Declaration of " & "OGR_GT_GetCurve" &
        " already exists, not redeclaring")
when not declared(Ogrfgetgeomfieldindex):
  proc Ogrfgetgeomfieldindex*(hfeat: Ogrfeatureh_452985196; pszname: cstring): cint {.
      cdecl, importc: "OGR_F_GetGeomFieldIndex".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetGeomFieldIndex" &
        " already exists, not redeclaring")
when not declared(Gdalsetcachemax):
  proc Gdalsetcachemax*(nbytes: cint): void {.cdecl, importc: "GDALSetCacheMax".}
else:
  static :
    hint("Declaration of " & "GDALSetCacheMax" &
        " already exists, not redeclaring")
when not declared(Ogrgtsetmodifier):
  proc Ogrgtsetmodifier*(etype: Ogrwkbgeometrytype_452985074; bsetz: cint;
                         bsetm: cint): Ogrwkbgeometrytype_452985074 {.cdecl,
      importc: "OGR_GT_SetModifier".}
else:
  static :
    hint("Declaration of " & "OGR_GT_SetModifier" &
        " already exists, not redeclaring")
when not declared(Gdalgetprojectionref):
  proc Gdalgetprojectionref*(a0: Gdaldataseth_452985107): cstring {.cdecl,
      importc: "GDALGetProjectionRef".}
else:
  static :
    hint("Declaration of " & "GDALGetProjectionRef" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetfieldcount):
  proc Ogrfdgetfieldcount*(a0: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_GetFieldCount".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetFieldCount" &
        " already exists, not redeclaring")
when not declared(Ogrlgetgeometrycolumn):
  proc Ogrlgetgeometrycolumn*(a0: Ogrlayerh_452985133): cstring {.cdecl,
      importc: "OGR_L_GetGeometryColumn".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetGeometryColumn" &
        " already exists, not redeclaring")
when not declared(Gdalrasterbandgetvirtualmem):
  proc Gdalrasterbandgetvirtualmem*(hband: Gdalrasterbandh_452985168;
                                    erwflag: Gdalrwflag_452985089; nxoff: cint;
                                    nyoff: cint; nxsize: cint; nysize: cint;
                                    nbufxsize: cint; nbufysize: cint;
                                    ebuftype: Gdaldatatype_452985072;
                                    npixelspace: cint; nlinespace: Gintbig_452985145;
                                    ncachesize: csize_t; npagesizehint: csize_t;
                                    bsinglethreadusage: cint;
                                    papszoptions: Cslconstlist_452985151): ptr Cplvirtualmem {.
      cdecl, importc: "GDALRasterBandGetVirtualMem".}
else:
  static :
    hint("Declaration of " & "GDALRasterBandGetVirtualMem" &
        " already exists, not redeclaring")
when not declared(Gdalsetrastercategorynames):
  proc Gdalsetrastercategorynames*(a0: Gdalrasterbandh_452985168;
                                   a1: Cslconstlist_452985151): Cplerr_452985113 {.
      cdecl, importc: "GDALSetRasterCategoryNames".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterCategoryNames" &
        " already exists, not redeclaring")
when not declared(Gdalrasterioex):
  proc Gdalrasterioex*(hrband: Gdalrasterbandh_452985168; erwflag: Gdalrwflag_452985089;
                       ndsxoff: cint; ndsyoff: cint; ndsxsize: cint;
                       ndsysize: cint; pbuffer: pointer; nbxsize: cint;
                       nbysize: cint; ebdatatype: Gdaldatatype_452985072;
                       npixelspace: Gspacing_452985119; nlinespace: Gspacing_452985119;
                       psextraarg: ptr Gdalrasterioextraarg_452985184): Cplerr_452985113 {.
      cdecl, importc: "GDALRasterIOEx".}
else:
  static :
    hint("Declaration of " & "GDALRasterIOEx" &
        " already exists, not redeclaring")
when not declared(Gdalwriteworldfile):
  proc Gdalwriteworldfile*(a0: cstring; a1: cstring; a2: ptr cdouble): cint {.
      cdecl, importc: "GDALWriteWorldFile".}
else:
  static :
    hint("Declaration of " & "GDALWriteWorldFile" &
        " already exists, not redeclaring")
when not declared(Ogrggetpointszm):
  proc Ogrggetpointszm*(hgeom: Ogrgeometryh_452985170; pabyx: pointer;
                        nxstride: cint; pabyy: pointer; nystride: cint;
                        pabyz: pointer; nzstride: cint; pabym: pointer;
                        nmstride: cint): cint {.cdecl,
      importc: "OGR_G_GetPointsZM".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetPointsZM" &
        " already exists, not redeclaring")
when not declared(Ogrerrnotenoughdata):
  const
    Ogrerrnotenoughdata* = 1 ## Generated based on /usr/include/gdal/ogr_core.h:293:9
else:
  static :
    hint("Declaration of " & "OGRERR_NOT_ENOUGH_DATA" &
        " already exists, not redeclaring")
when not declared(Ogrstgettype):
  proc Ogrstgettype*(hst: Ogrstyletoolh_452985131): Ogrstclassid_452985204 {.
      cdecl, importc: "OGR_ST_GetType".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetType" &
        " already exists, not redeclaring")
when not declared(Ogrstsetunit):
  proc Ogrstsetunit*(hst: Ogrstyletoolh_452985131; eunit: Ogrstunitid_452985194;
                     dfgroundpaperscale: cdouble): void {.cdecl,
      importc: "OGR_ST_SetUnit".}
else:
  static :
    hint("Declaration of " & "OGR_ST_SetUnit" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterhistogramex):
  proc Gdalgetrasterhistogramex*(hband: Gdalrasterbandh_452985168;
                                 dfmin: cdouble; dfmax: cdouble; nbuckets: cint;
                                 panhistogram: ptr Guintbig_452985216;
                                 bincludeoutofrange: cint; bapproxok: cint;
                                 pfnprogress: Gdalprogressfunc_452985210;
                                 pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALGetRasterHistogramEx".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterHistogramEx" &
        " already exists, not redeclaring")
when not declared(Gdaladdderivedbandpixelfunc):
  proc Gdaladdderivedbandpixelfunc*(pszname: cstring;
                                    pfnpixelfunc: Gdalderivedpixelfunc_452985190): Cplerr_452985113 {.
      cdecl, importc: "GDALAddDerivedBandPixelFunc".}
else:
  static :
    hint("Declaration of " & "GDALAddDerivedBandPixelFunc" &
        " already exists, not redeclaring")
when not declared(Gdalratvaluesioasdouble):
  proc Gdalratvaluesioasdouble*(hrat: Gdalrasterattributetableh_452985200;
                                erwflag: Gdalrwflag_452985089; ifield: cint;
                                istartrow: cint; ilength: cint;
                                pdfdata: ptr cdouble): Cplerr_452985113 {.cdecl,
      importc: "GDALRATValuesIOAsDouble".}
else:
  static :
    hint("Declaration of " & "GDALRATValuesIOAsDouble" &
        " already exists, not redeclaring")
when not declared(Ogrfcreate):
  proc Ogrfcreate*(a0: Ogrfeaturedefnh_452985176): Ogrfeatureh_452985196 {.
      cdecl, importc: "OGR_F_Create".}
else:
  static :
    hint("Declaration of " & "OGR_F_Create" & " already exists, not redeclaring")
when not declared(Ogrfsetfielddatetime):
  proc Ogrfsetfielddatetime*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint;
                             a3: cint; a4: cint; a5: cint; a6: cint; a7: cint;
                             a8: cint): void {.cdecl,
      importc: "OGR_F_SetFieldDateTime".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldDateTime" &
        " already exists, not redeclaring")
when not declared(Ogrlrollbacktransaction):
  proc Ogrlrollbacktransaction*(a0: Ogrlayerh_452985133): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_RollbackTransaction".}
else:
  static :
    hint("Declaration of " & "OGR_L_RollbackTransaction" &
        " already exists, not redeclaring")
when not declared(Gdalfinddatatypeforvalue):
  proc Gdalfinddatatypeforvalue*(dvalue: cdouble; bcomplex: cint): Gdaldatatype_452985072 {.
      cdecl, importc: "GDALFindDataTypeForValue".}
else:
  static :
    hint("Declaration of " & "GDALFindDataTypeForValue" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastercategorynames):
  proc Gdalgetrastercategorynames*(a0: Gdalrasterbandh_452985168): ptr ptr cschar {.
      cdecl, importc: "GDALGetRasterCategoryNames".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterCategoryNames" &
        " already exists, not redeclaring")
when not declared(Gdalcreatedatasetmaskband):
  proc Gdalcreatedatasetmaskband*(hds: Gdaldataseth_452985107; nflags: cint): Cplerr_452985113 {.
      cdecl, importc: "GDALCreateDatasetMaskBand".}
else:
  static :
    hint("Declaration of " & "GDALCreateDatasetMaskBand" &
        " already exists, not redeclaring")
when not declared(Gdaldatacoveragestatusempty):
  const
    Gdaldatacoveragestatusempty* = 4 ## Generated based on /usr/include/gdal/gdal.h:936:9
else:
  static :
    hint("Declaration of " & "GDAL_DATA_COVERAGE_STATUS_EMPTY" &
        " already exists, not redeclaring")
when not declared(Ogrfldset):
  proc Ogrfldset*(a0: Ogrfielddefnh_452985121; a1: cstring; a2: Ogrfieldtype_452985099;
                  a3: cint; a4: cint; a5: Ogrjustification_452985180): void {.
      cdecl, importc: "OGR_Fld_Set".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_Set" & " already exists, not redeclaring")
when not declared(Ogrgfldcreate):
  proc Ogrgfldcreate*(a0: cstring; a1: Ogrwkbgeometrytype_452985074): Ogrgeomfielddefnh_452985078 {.
      cdecl, importc: "OGR_GFld_Create".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_Create" &
        " already exists, not redeclaring")
when not declared(Ogrfldgetsubtype):
  proc Ogrfldgetsubtype*(a0: Ogrfielddefnh_452985121): Ogrfieldsubtype_452985101 {.
      cdecl, importc: "OGR_Fld_GetSubType".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetSubType" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgettiledvirtualmem):
  proc Gdaldatasetgettiledvirtualmem*(hds: Gdaldataseth_452985107;
                                      erwflag: Gdalrwflag_452985089;
                                      nxoff: cint; nyoff: cint; nxsize: cint;
                                      nysize: cint; ntilexsize: cint;
                                      ntileysize: cint; ebuftype: Gdaldatatype_452985072;
                                      nbandcount: cint; panbandmap: ptr cint;
                                      etileorganization: Gdaltileorganization_452985220;
                                      ncachesize: csize_t;
                                      bsinglethreadusage: cint;
                                      papszoptions: Cslconstlist_452985151): ptr Cplvirtualmem {.
      cdecl, importc: "GDALDatasetGetTiledVirtualMem".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetTiledVirtualMem" &
        " already exists, not redeclaring")
when not declared(Ogrstblcreate):
  proc Ogrstblcreate*(): Ogrstyletableh_452985091 {.cdecl,
      importc: "OGR_STBL_Create".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_Create" &
        " already exists, not redeclaring")
when not declared(Ogrgfldsetname):
  proc Ogrgfldsetname*(a0: Ogrgeomfielddefnh_452985078; a1: cstring): void {.
      cdecl, importc: "OGR_GFld_SetName".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_SetName" &
        " already exists, not redeclaring")
when not declared(ogrzmarker):
  const
    ogrzmarker* = 554850065  ## Generated based on /usr/include/gdal/ogr_core.h:464:9
else:
  static :
    hint("Declaration of " & "ogrZMarker" & " already exists, not redeclaring")
when not declared(Gdalhasarbitraryoverviews):
  proc Gdalhasarbitraryoverviews*(a0: Gdalrasterbandh_452985168): cint {.cdecl,
      importc: "GDALHasArbitraryOverviews".}
else:
  static :
    hint("Declaration of " & "GDALHasArbitraryOverviews" &
        " already exists, not redeclaring")
when not declared(Ogrlsetstyletable):
  proc Ogrlsetstyletable*(a0: Ogrlayerh_452985133; a1: Ogrstyletableh_452985091): void {.
      cdecl, importc: "OGR_L_SetStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetStyleTable" &
        " already exists, not redeclaring")
when not declared(Ogrgpointonsurface):
  proc Ogrgpointonsurface*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_PointOnSurface".}
else:
  static :
    hint("Declaration of " & "OGR_G_PointOnSurface" &
        " already exists, not redeclaring")
when not declared(Gdalcheckversion):
  proc Gdalcheckversion*(nversionmajor: cint; nversionminor: cint;
                         pszcallingcomponentname: cstring): cint {.cdecl,
      importc: "GDALCheckVersion".}
else:
  static :
    hint("Declaration of " & "GDALCheckVersion" &
        " already exists, not redeclaring")
when not declared(Ogrstbladdstyle):
  proc Ogrstbladdstyle*(hstyletable: Ogrstyletableh_452985091; pszname: cstring;
                        pszstylestring: cstring): cint {.cdecl,
      importc: "OGR_STBL_AddStyle".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_AddStyle" &
        " already exists, not redeclaring")
when not declared(Ogrerrunsupportedgeometrytype):
  const
    Ogrerrunsupportedgeometrytype* = 3 ## Generated based on /usr/include/gdal/ogr_core.h:295:9
else:
  static :
    hint("Declaration of " & "OGRERR_UNSUPPORTED_GEOMETRY_TYPE" &
        " already exists, not redeclaring")
when not declared(Gdalsetdefaulthistogramex):
  proc Gdalsetdefaulthistogramex*(hband: Gdalrasterbandh_452985168;
                                  dfmin: cdouble; dfmax: cdouble;
                                  nbuckets: cint; panhistogram: ptr Guintbig_452985216): Cplerr_452985113 {.
      cdecl, importc: "GDALSetDefaultHistogramEx".}
else:
  static :
    hint("Declaration of " & "GDALSetDefaultHistogramEx" &
        " already exists, not redeclaring")
when not declared(Ogrlsetnextbyindex):
  proc Ogrlsetnextbyindex*(a0: Ogrlayerh_452985133; a1: Gintbig_452985145): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_SetNextByIndex".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetNextByIndex" &
        " already exists, not redeclaring")
when not declared(Ogrregisterdriver):
  proc Ogrregisterdriver*(a0: Ogrsfdriverh_452985226): void {.cdecl,
      importc: "OGRRegisterDriver".}
else:
  static :
    hint("Declaration of " & "OGRRegisterDriver" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetcommittransaction):
  proc Gdaldatasetcommittransaction*(hds: Gdaldataseth_452985107): Ogrerr_452985198 {.
      cdecl, importc: "GDALDatasetCommitTransaction".}
else:
  static :
    hint("Declaration of " & "GDALDatasetCommitTransaction" &
        " already exists, not redeclaring")
when not declared(Gdalgetmaskflags):
  proc Gdalgetmaskflags*(hband: Gdalrasterbandh_452985168): cint {.cdecl,
      importc: "GDALGetMaskFlags".}
else:
  static :
    hint("Declaration of " & "GDALGetMaskFlags" &
        " already exists, not redeclaring")
when not declared(Gdalratvaluesioasinteger):
  proc Gdalratvaluesioasinteger*(hrat: Gdalrasterattributetableh_452985200;
                                 erwflag: Gdalrwflag_452985089; ifield: cint;
                                 istartrow: cint; ilength: cint;
                                 pndata: ptr cint): Cplerr_452985113 {.cdecl,
      importc: "GDALRATValuesIOAsInteger".}
else:
  static :
    hint("Declaration of " & "GDALRATValuesIOAsInteger" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetdriver):
  proc Ogrdsgetdriver*(a0: Ogrdatasourceh_452985093): Ogrsfdriverh_452985226 {.
      cdecl, importc: "OGR_DS_GetDriver".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetDriver" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastersampleoverview):
  proc Gdalgetrastersampleoverview*(a0: Gdalrasterbandh_452985168; a1: cint): Gdalrasterbandh_452985168 {.
      cdecl, importc: "GDALGetRasterSampleOverview".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterSampleOverview" &
        " already exists, not redeclaring")
when not declared(Ogrghascurvegeometry):
  proc Ogrghascurvegeometry*(a0: Ogrgeometryh_452985170; blookfornonlinear: cint): cint {.
      cdecl, importc: "OGR_G_HasCurveGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_HasCurveGeometry" &
        " already exists, not redeclaring")
when not declared(Gdalratsetvalueasstring):
  proc Gdalratsetvalueasstring*(a0: Gdalrasterattributetableh_452985200;
                                a1: cint; a2: cint; a3: cstring): void {.cdecl,
      importc: "GDALRATSetValueAsString".}
else:
  static :
    hint("Declaration of " & "GDALRATSetValueAsString" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterscale):
  proc Gdalgetrasterscale*(a0: Gdalrasterbandh_452985168; pbsuccess: ptr cint): cdouble {.
      cdecl, importc: "GDALGetRasterScale".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterScale" &
        " already exists, not redeclaring")
when not declared(Ogrdrtestcapability):
  proc Ogrdrtestcapability*(a0: Ogrsfdriverh_452985226; a1: cstring): cint {.
      cdecl, importc: "OGR_Dr_TestCapability".}
else:
  static :
    hint("Declaration of " & "OGR_Dr_TestCapability" &
        " already exists, not redeclaring")
when not declared(Gdalgetdefaultrat):
  proc Gdalgetdefaultrat*(hband: Gdalrasterbandh_452985168): Gdalrasterattributetableh_452985200 {.
      cdecl, importc: "GDALGetDefaultRAT".}
else:
  static :
    hint("Declaration of " & "GDALGetDefaultRAT" &
        " already exists, not redeclaring")
when not declared(Ogrgflattento2d):
  proc Ogrgflattento2d*(a0: Ogrgeometryh_452985170): void {.cdecl,
      importc: "OGR_G_FlattenTo2D".}
else:
  static :
    hint("Declaration of " & "OGR_G_FlattenTo2D" &
        " already exists, not redeclaring")
when not declared(Gdalextractrpcinfo):
  proc Gdalextractrpcinfo*(a0: Cslconstlist_452985151; a1: ptr Gdalrpcinfo_452985202): cint {.
      cdecl, importc: "GDALExtractRPCInfo".}
else:
  static :
    hint("Declaration of " & "GDALExtractRPCInfo" &
        " already exists, not redeclaring")
when not declared(Gdalidentifydriverex):
  proc Gdalidentifydriverex*(pszfilename: cstring; nidentifyflags: cuint;
                             papszalloweddrivers: ptr ptr cschar;
                             papszfilelist: ptr ptr cschar): Gdaldriverh_452985127 {.
      cdecl, importc: "GDALIdentifyDriverEx".}
else:
  static :
    hint("Declaration of " & "GDALIdentifyDriverEx" &
        " already exists, not redeclaring")
when not declared(Ogrgforcetomultilinestring):
  proc Ogrgforcetomultilinestring*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ForceToMultiLineString".}
else:
  static :
    hint("Declaration of " & "OGR_G_ForceToMultiLineString" &
        " already exists, not redeclaring")
when not declared(Gdalofupdate):
  const
    Gdalofupdate* = 1        ## Generated based on /usr/include/gdal/gdal.h:430:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_UPDATE" &
        " already exists, not redeclaring")
when not declared(Ogrerrnotenoughmemory):
  const
    Ogrerrnotenoughmemory* = 2 ## Generated based on /usr/include/gdal/ogr_core.h:294:9
else:
  static :
    hint("Declaration of " & "OGRERR_NOT_ENOUGH_MEMORY" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfid):
  proc Ogrfgetfid*(a0: Ogrfeatureh_452985196): Gintbig_452985145 {.cdecl,
      importc: "OGR_F_GetFID".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFID" & " already exists, not redeclaring")
when not declared(Ogrrawfieldisnull):
  proc Ogrrawfieldisnull*(a0: ptr Ogrfield_452985214): cint {.cdecl,
      importc: "OGR_RawField_IsNull".}
else:
  static :
    hint("Declaration of " & "OGR_RawField_IsNull" &
        " already exists, not redeclaring")
when not declared(wkb25dbit):
  const
    wkb25dbit* = 2147483648'i64 ## Generated based on /usr/include/gdal/ogr_core.h:432:9
else:
  static :
    hint("Declaration of " & "wkb25DBit" & " already exists, not redeclaring")
when not declared(Ogrstbldestroy):
  proc Ogrstbldestroy*(hstbl: Ogrstyletableh_452985091): void {.cdecl,
      importc: "OGR_STBL_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_Destroy" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasinteger64):
  proc Ogrfgetfieldasinteger64*(a0: Ogrfeatureh_452985196; a1: cint): Gintbig_452985145 {.
      cdecl, importc: "OGR_F_GetFieldAsInteger64".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsInteger64" &
        " already exists, not redeclaring")
when not declared(Ogrsmaddstyle):
  proc Ogrsmaddstyle*(hsm: Ogrstylemgrh_452985186; pszstylename: cstring;
                      pszstylestring: cstring): cint {.cdecl,
      importc: "OGR_SM_AddStyle".}
else:
  static :
    hint("Declaration of " & "OGR_SM_AddStyle" &
        " already exists, not redeclaring")
when not declared(Ogrgcloserings):
  proc Ogrgcloserings*(a0: Ogrgeometryh_452985170): void {.cdecl,
      importc: "OGR_G_CloseRings".}
else:
  static :
    hint("Declaration of " & "OGR_G_CloseRings" &
        " already exists, not redeclaring")
when not declared(Ogrggetgeometryref):
  proc Ogrggetgeometryref*(a0: Ogrgeometryh_452985170; a1: cint): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_GetGeometryRef".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetGeometryRef" &
        " already exists, not redeclaring")
when not declared(Ogrgfldsetspatialref):
  proc Ogrgfldsetspatialref*(a0: Ogrgeomfielddefnh_452985078;
                             hsrs: Ogrspatialreferenceh_452985129): void {.
      cdecl, importc: "OGR_GFld_SetSpatialRef".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_SetSpatialRef" &
        " already exists, not redeclaring")
when not declared(Ogrgforcetopolygon):
  proc Ogrgforcetopolygon*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ForceToPolygon".}
else:
  static :
    hint("Declaration of " & "OGR_G_ForceToPolygon" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetrasterioex):
  proc Gdaldatasetrasterioex*(hds: Gdaldataseth_452985107; erwflag: Gdalrwflag_452985089;
                              ndsxoff: cint; ndsyoff: cint; ndsxsize: cint;
                              ndsysize: cint; pbuffer: pointer; nbxsize: cint;
                              nbysize: cint; ebdatatype: Gdaldatatype_452985072;
                              nbandcount: cint; panbandcount: ptr cint;
                              npixelspace: Gspacing_452985119;
                              nlinespace: Gspacing_452985119;
                              nbandspace: Gspacing_452985119;
                              psextraarg: ptr Gdalrasterioextraarg_452985184): Cplerr_452985113 {.
      cdecl, importc: "GDALDatasetRasterIOEx".}
else:
  static :
    hint("Declaration of " & "GDALDatasetRasterIOEx" &
        " already exists, not redeclaring")
when not declared(Gdalwriteblock):
  proc Gdalwriteblock*(a0: Gdalrasterbandh_452985168; a1: cint; a2: cint;
                       a3: pointer): Cplerr_452985113 {.cdecl,
      importc: "GDALWriteBlock".}
else:
  static :
    hint("Declaration of " & "GDALWriteBlock" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeissigned):
  proc Gdaldatatypeissigned*(a0: Gdaldatatype_452985072): cint {.cdecl,
      importc: "GDALDataTypeIsSigned".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeIsSigned" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfielddefnref):
  proc Ogrfgetfielddefnref*(a0: Ogrfeatureh_452985196; a1: cint): Ogrfielddefnh_452985121 {.
      cdecl, importc: "OGR_F_GetFieldDefnRef".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldDefnRef" &
        " already exists, not redeclaring")
when not declared(Ogrfdisgeometryignored):
  proc Ogrfdisgeometryignored*(a0: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_IsGeometryIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_FD_IsGeometryIgnored" &
        " already exists, not redeclaring")
when not declared(Ogrgfldgetnameref):
  proc Ogrgfldgetnameref*(a0: Ogrgeomfielddefnh_452985078): cstring {.cdecl,
      importc: "OGR_GFld_GetNameRef".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_GetNameRef" &
        " already exists, not redeclaring")
when not declared(Ogrgcentroid):
  proc Ogrgcentroid*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Centroid".}
else:
  static :
    hint("Declaration of " & "OGR_G_Centroid" &
        " already exists, not redeclaring")
when not declared(Ogrfvalwidth):
  const
    Ogrfvalwidth* = 4        ## Generated based on /usr/include/gdal/ogr_core.h:559:9
else:
  static :
    hint("Declaration of " & "OGR_F_VAL_WIDTH" &
        " already exists, not redeclaring")
when not declared(Gdalratsetvalueasint):
  proc Gdalratsetvalueasint*(a0: Gdalrasterattributetableh_452985200; a1: cint;
                             a2: cint; a3: cint): void {.cdecl,
      importc: "GDALRATSetValueAsInt".}
else:
  static :
    hint("Declaration of " & "GDALRATSetValueAsInt" &
        " already exists, not redeclaring")
when not declared(Gdalgetgeotransform):
  proc Gdalgetgeotransform*(a0: Gdaldataseth_452985107; a1: ptr cdouble): Cplerr_452985113 {.
      cdecl, importc: "GDALGetGeoTransform".}
else:
  static :
    hint("Declaration of " & "GDALGetGeoTransform" &
        " already exists, not redeclaring")
when not declared(Ogrnullmarker):
  const
    Ogrnullmarker* = -21122  ## Generated based on /usr/include/gdal/ogr_core.h:673:9
else:
  static :
    hint("Declaration of " & "OGRNullMarker" &
        " already exists, not redeclaring")
when not declared(Gdalofvector):
  const
    Gdalofvector* = 4        ## Generated based on /usr/include/gdal/gdal.h:448:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_VECTOR" &
        " already exists, not redeclaring")
when not declared(Ogrlgetlayerdefn):
  proc Ogrlgetlayerdefn*(a0: Ogrlayerh_452985133): Ogrfeaturedefnh_452985176 {.
      cdecl, importc: "OGR_L_GetLayerDefn".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetLayerDefn" &
        " already exists, not redeclaring")
when not declared(Gdalcreate):
  proc Gdalcreate*(hdriver: Gdaldriverh_452985127; a1: cstring; a2: cint;
                   a3: cint; a4: cint; a5: Gdaldatatype_452985072;
                   a6: Cslconstlist_452985151): Gdaldataseth_452985107 {.cdecl,
      importc: "GDALCreate".}
else:
  static :
    hint("Declaration of " & "GDALCreate" & " already exists, not redeclaring")
when not declared(Gdalsetmetadataitem):
  proc Gdalsetmetadataitem*(a0: Gdalmajorobjecth_452985125; a1: cstring;
                            a2: cstring; a3: cstring): Cplerr_452985113 {.cdecl,
      importc: "GDALSetMetadataItem".}
else:
  static :
    hint("Declaration of " & "GDALSetMetadataItem" &
        " already exists, not redeclaring")
when not declared(Ogrggetgeometryname):
  proc Ogrggetgeometryname*(a0: Ogrgeometryh_452985170): cstring {.cdecl,
      importc: "OGR_G_GetGeometryName".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetGeometryName" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfielddouble):
  proc Ogrfsetfielddouble*(a0: Ogrfeatureh_452985196; a1: cint; a2: cdouble): void {.
      cdecl, importc: "OGR_F_SetFieldDouble".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldDouble" &
        " already exists, not redeclaring")
when not declared(Gdalgetdriverhelptopic):
  proc Gdalgetdriverhelptopic*(a0: Gdaldriverh_452985127): cstring {.cdecl,
      importc: "GDALGetDriverHelpTopic".}
else:
  static :
    hint("Declaration of " & "GDALGetDriverHelpTopic" &
        " already exists, not redeclaring")
when not declared(Ogrerrunsupportedoperation):
  const
    Ogrerrunsupportedoperation* = 4 ## Generated based on /usr/include/gdal/ogr_core.h:296:9
else:
  static :
    hint("Declaration of " & "OGRERR_UNSUPPORTED_OPERATION" &
        " already exists, not redeclaring")
when not declared(Ogrfvalnull):
  const
    Ogrfvalnull* = 1         ## Generated based on /usr/include/gdal/ogr_core.h:547:9
else:
  static :
    hint("Declaration of " & "OGR_F_VAL_NULL" &
        " already exists, not redeclaring")
when not declared(Gdalreleasedataset):
  proc Gdalreleasedataset*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALReleaseDataset".}
else:
  static :
    hint("Declaration of " & "GDALReleaseDataset" &
        " already exists, not redeclaring")
when not declared(Ogrderegisterdriver):
  proc Ogrderegisterdriver*(a0: Ogrsfdriverh_452985226): void {.cdecl,
      importc: "OGRDeregisterDriver".}
else:
  static :
    hint("Declaration of " & "OGRDeregisterDriver" &
        " already exists, not redeclaring")
when not declared(Gdalgetcolorentry):
  proc Gdalgetcolorentry*(a0: Gdalcolortableh_452985123; a1: cint): ptr Gdalcolorentry_452985139 {.
      cdecl, importc: "GDALGetColorEntry".}
else:
  static :
    hint("Declaration of " & "GDALGetColorEntry" &
        " already exists, not redeclaring")
when not declared(Ogrgfldsetignored):
  proc Ogrgfldsetignored*(hdefn: Ogrgeomfielddefnh_452985078; a1: cint): void {.
      cdecl, importc: "OGR_GFld_SetIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_SetIgnored" &
        " already exists, not redeclaring")
when not declared(Ogrgfldsettype):
  proc Ogrgfldsettype*(a0: Ogrgeomfielddefnh_452985078; a1: Ogrwkbgeometrytype_452985074): void {.
      cdecl, importc: "OGR_GFld_SetType".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_SetType" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldindex):
  proc Ogrfgetfieldindex*(a0: Ogrfeatureh_452985196; a1: cstring): cint {.cdecl,
      importc: "OGR_F_GetFieldIndex".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldIndex" &
        " already exists, not redeclaring")
when not declared(Gdalgetdatatypename):
  proc Gdalgetdatatypename*(a0: Gdaldatatype_452985072): cstring {.cdecl,
      importc: "GDALGetDataTypeName".}
else:
  static :
    hint("Declaration of " & "GDALGetDataTypeName" &
        " already exists, not redeclaring")
when not declared(Gdalgetgcpprojection):
  proc Gdalgetgcpprojection*(a0: Gdaldataseth_452985107): cstring {.cdecl,
      importc: "GDALGetGCPProjection".}
else:
  static :
    hint("Declaration of " & "GDALGetGCPProjection" &
        " already exists, not redeclaring")
when not declared(Ogrgclone):
  proc Ogrgclone*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.cdecl,
      importc: "OGR_G_Clone".}
else:
  static :
    hint("Declaration of " & "OGR_G_Clone" & " already exists, not redeclaring")
when not declared(Ogrgoverlaps):
  proc Ogrgoverlaps*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Overlaps".}
else:
  static :
    hint("Declaration of " & "OGR_G_Overlaps" &
        " already exists, not redeclaring")
when not declared(Ogrgvalue):
  proc Ogrgvalue*(a0: Ogrgeometryh_452985170; dfdistance: cdouble): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Value".}
else:
  static :
    hint("Declaration of " & "OGR_G_Value" & " already exists, not redeclaring")
when not declared(Ogrreleasedatasource):
  proc Ogrreleasedatasource*(a0: Ogrdatasourceh_452985093): Ogrerr_452985198 {.
      cdecl, importc: "OGRReleaseDataSource".}
else:
  static :
    hint("Declaration of " & "OGRReleaseDataSource" &
        " already exists, not redeclaring")
when not declared(Gdalratgetrowcount):
  proc Gdalratgetrowcount*(a0: Gdalrasterattributetableh_452985200): cint {.
      cdecl, importc: "GDALRATGetRowCount".}
else:
  static :
    hint("Declaration of " & "GDALRATGetRowCount" &
        " already exists, not redeclaring")
when not declared(Ogrdrcopydatasource):
  proc Ogrdrcopydatasource*(a0: Ogrsfdriverh_452985226; a1: Ogrdatasourceh_452985093;
                            a2: cstring; a3: ptr ptr cschar): Ogrdatasourceh_452985093 {.
      cdecl, importc: "OGR_Dr_CopyDataSource".}
else:
  static :
    hint("Declaration of " & "OGR_Dr_CopyDataSource" &
        " already exists, not redeclaring")
when not declared(Gdalcopywords64):
  proc Gdalcopywords64*(psrcdata: pointer; esrctype: Gdaldatatype_452985072;
                        nsrcpixeloffset: cint; pdstdata: pointer;
                        edsttype: Gdaldatatype_452985072; ndstpixeloffset: cint;
                        nwordcount: Gptrdifft_452985224): void {.cdecl,
      importc: "GDALCopyWords64".}
else:
  static :
    hint("Declaration of " & "GDALCopyWords64" &
        " already exists, not redeclaring")
when not declared(Gdaladjustvaluetodatatype):
  proc Gdaladjustvaluetodatatype*(edt: Gdaldatatype_452985072; dfvalue: cdouble;
                                  pbclamped: ptr cint; pbrounded: ptr cint): cdouble {.
      cdecl, importc: "GDALAdjustValueToDataType".}
else:
  static :
    hint("Declaration of " & "GDALAdjustValueToDataType" &
        " already exists, not redeclaring")
when not declared(Ogrlgetstyletable):
  proc Ogrlgetstyletable*(a0: Ogrlayerh_452985133): Ogrstyletableh_452985091 {.
      cdecl, importc: "OGR_L_GetStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetStyleTable" &
        " already exists, not redeclaring")
when not declared(Ogrlgetnextfeature):
  proc Ogrlgetnextfeature*(a0: Ogrlayerh_452985133): Ogrfeatureh_452985196 {.
      cdecl, importc: "OGR_L_GetNextFeature".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetNextFeature" &
        " already exists, not redeclaring")
when not declared(Ogrgisring):
  proc Ogrgisring*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_IsRing".}
else:
  static :
    hint("Declaration of " & "OGR_G_IsRing" & " already exists, not redeclaring")
when not declared(Gdalgetdatasetdriver):
  proc Gdalgetdatasetdriver*(a0: Gdaldataseth_452985107): Gdaldriverh_452985127 {.
      cdecl, importc: "GDALGetDatasetDriver".}
else:
  static :
    hint("Declaration of " & "GDALGetDatasetDriver" &
        " already exists, not redeclaring")
when not declared(Ogrsminitfromfeature):
  proc Ogrsminitfromfeature*(hsm: Ogrstylemgrh_452985186; hfeat: Ogrfeatureh_452985196): cstring {.
      cdecl, importc: "OGR_SM_InitFromFeature".}
else:
  static :
    hint("Declaration of " & "OGR_SM_InitFromFeature" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetstyletable):
  proc Ogrdsgetstyletable*(a0: Ogrdatasourceh_452985093): Ogrstyletableh_452985091 {.
      cdecl, importc: "OGR_DS_GetStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetStyleTable" &
        " already exists, not redeclaring")
when not declared(Gdalpackeddmstodec):
  proc Gdalpackeddmstodec*(a0: cdouble): cdouble {.cdecl,
      importc: "GDALPackedDMSToDec".}
else:
  static :
    hint("Declaration of " & "GDALPackedDMSToDec" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterdatatype):
  proc Gdalgetrasterdatatype*(a0: Gdalrasterbandh_452985168): Gdaldatatype_452985072 {.
      cdecl, importc: "GDALGetRasterDataType".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterDataType" &
        " already exists, not redeclaring")
when not declared(Ogrfsetstyletable):
  proc Ogrfsetstyletable*(a0: Ogrfeatureh_452985196; a1: Ogrstyletableh_452985091): void {.
      cdecl, importc: "OGR_F_SetStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetStyleTable" &
        " already exists, not redeclaring")
when not declared(Gdalvalidatecreationoptions):
  proc Gdalvalidatecreationoptions*(a0: Gdaldriverh_452985127;
                                    papszcreationoptions: Cslconstlist_452985151): cint {.
      cdecl, importc: "GDALValidateCreationOptions".}
else:
  static :
    hint("Declaration of " & "GDALValidateCreationOptions" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttoisowkt):
  proc Ogrgexporttoisowkt*(a0: Ogrgeometryh_452985170; a1: ptr ptr cschar): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_ExportToIsoWkt".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToIsoWkt" &
        " already exists, not redeclaring")
when not declared(Ogrfdsetgeomtype):
  proc Ogrfdsetgeomtype*(a0: Ogrfeaturedefnh_452985176; a1: Ogrwkbgeometrytype_452985074): void {.
      cdecl, importc: "OGR_FD_SetGeomType".}
else:
  static :
    hint("Declaration of " & "OGR_FD_SetGeomType" &
        " already exists, not redeclaring")
when not declared(Ogrfdissame):
  proc Ogrfdissame*(hfdefn: Ogrfeaturedefnh_452985176;
                    hotherfdefn: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_IsSame".}
else:
  static :
    hint("Declaration of " & "OGR_FD_IsSame" &
        " already exists, not redeclaring")
when not declared(Gmfalpha):
  const
    Gmfalpha* = 4            ## Generated based on /usr/include/gdal/gdal.h:915:9
else:
  static :
    hint("Declaration of " & "GMF_ALPHA" & " already exists, not redeclaring")
when not declared(Ogrfdisstyleignored):
  proc Ogrfdisstyleignored*(a0: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_IsStyleIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_FD_IsStyleIgnored" &
        " already exists, not redeclaring")
when not declared(Ogrgetdriverbyname):
  proc Ogrgetdriverbyname*(a0: cstring): Ogrsfdriverh_452985226 {.cdecl,
      importc: "OGRGetDriverByName".}
else:
  static :
    hint("Declaration of " & "OGRGetDriverByName" &
        " already exists, not redeclaring")
when not declared(Gdalcreatemaskband):
  proc Gdalcreatemaskband*(hband: Gdalrasterbandh_452985168; nflags: cint): Cplerr_452985113 {.
      cdecl, importc: "GDALCreateMaskBand".}
else:
  static :
    hint("Declaration of " & "GDALCreateMaskBand" &
        " already exists, not redeclaring")
when not declared(Ograretypesubtypecompatible):
  proc Ograretypesubtypecompatible*(etype: Ogrfieldtype_452985099;
                                    esubtype: Ogrfieldsubtype_452985101): cint {.
      cdecl, importc: "OGR_AreTypeSubTypeCompatible".}
else:
  static :
    hint("Declaration of " & "OGR_AreTypeSubTypeCompatible" &
        " already exists, not redeclaring")
when not declared(Gdaldestroydriver):
  proc Gdaldestroydriver*(a0: Gdaldriverh_452985127): void {.cdecl,
      importc: "GDALDestroyDriver".}
else:
  static :
    hint("Declaration of " & "GDALDestroyDriver" &
        " already exists, not redeclaring")
when not declared(Ogrggetgeometrytype):
  proc Ogrggetgeometrytype*(a0: Ogrgeometryh_452985170): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_G_GetGeometryType".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetGeometryType" &
        " already exists, not redeclaring")
when not declared(Ogrltestcapability):
  proc Ogrltestcapability*(a0: Ogrlayerh_452985133; a1: cstring): cint {.cdecl,
      importc: "OGR_L_TestCapability".}
else:
  static :
    hint("Declaration of " & "OGR_L_TestCapability" &
        " already exists, not redeclaring")
when not declared(Ogrfvalallownullwhendefault):
  const
    Ogrfvalallownullwhendefault* = 8 ## Generated based on /usr/include/gdal/ogr_core.h:568:9
else:
  static :
    hint("Declaration of " & "OGR_F_VAL_ALLOW_NULL_WHEN_DEFAULT" &
        " already exists, not redeclaring")
when not declared(Ogrstblresetstylestringreading):
  proc Ogrstblresetstylestringreading*(hstyletable: Ogrstyletableh_452985091): void {.
      cdecl, importc: "OGR_STBL_ResetStyleStringReading".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_ResetStyleStringReading" &
        " already exists, not redeclaring")
when not declared(Ogrfvalgeomtype):
  const
    Ogrfvalgeomtype* = 2     ## Generated based on /usr/include/gdal/ogr_core.h:553:9
else:
  static :
    hint("Declaration of " & "OGR_F_VAL_GEOM_TYPE" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastermaximum):
  proc Gdalgetrastermaximum*(a0: Gdalrasterbandh_452985168; pbsuccess: ptr cint): cdouble {.
      cdecl, importc: "GDALGetRasterMaximum".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterMaximum" &
        " already exists, not redeclaring")
when not declared(Gdalswapwordsex):
  proc Gdalswapwordsex*(pdata: pointer; nwordsize: cint; nwordcount: csize_t;
                        nwordskip: cint): void {.cdecl,
      importc: "GDALSwapWordsEx".}
else:
  static :
    hint("Declaration of " & "GDALSwapWordsEx" &
        " already exists, not redeclaring")
when not declared(Ogrrealloc):
  proc Ogrrealloc*(a0: pointer; a1: csize_t): pointer {.cdecl,
      importc: "OGRRealloc".}
else:
  static :
    hint("Declaration of " & "OGRRealloc" & " already exists, not redeclaring")
when not declared(Ogrgthasm):
  proc Ogrgthasm*(etype: Ogrwkbgeometrytype_452985074): cint {.cdecl,
      importc: "OGR_GT_HasM".}
else:
  static :
    hint("Declaration of " & "OGR_GT_HasM" & " already exists, not redeclaring")
when not declared(Ogrgboundary):
  proc Ogrgboundary*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Boundary".}
else:
  static :
    hint("Declaration of " & "OGR_G_Boundary" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetfieldindex):
  proc Ogrfdgetfieldindex*(a0: Ogrfeaturedefnh_452985176; a1: cstring): cint {.
      cdecl, importc: "OGR_FD_GetFieldIndex".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetFieldIndex" &
        " already exists, not redeclaring")
when not declared(Gmfperdataset):
  const
    Gmfperdataset* = 2       ## Generated based on /usr/include/gdal/gdal.h:912:9
else:
  static :
    hint("Declaration of " & "GMF_PER_DATASET" &
        " already exists, not redeclaring")
when not declared(Ogrgfldisnullable):
  proc Ogrgfldisnullable*(hdefn: Ogrgeomfielddefnh_452985078): cint {.cdecl,
      importc: "OGR_GFld_IsNullable".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_IsNullable" &
        " already exists, not redeclaring")
when not declared(Gdalgetcacheused64):
  proc Gdalgetcacheused64*(): Gintbig_452985145 {.cdecl,
      importc: "GDALGetCacheUsed64".}
else:
  static :
    hint("Declaration of " & "GDALGetCacheUsed64" &
        " already exists, not redeclaring")
when not declared(Gdalsetcachemax64):
  proc Gdalsetcachemax64*(nbytes: Gintbig_452985145): void {.cdecl,
      importc: "GDALSetCacheMax64".}
else:
  static :
    hint("Declaration of " & "GDALSetCacheMax64" &
        " already exists, not redeclaring")
when not declared(Ogrdsexecutesql):
  proc Ogrdsexecutesql*(a0: Ogrdatasourceh_452985093; a1: cstring;
                        a2: Ogrgeometryh_452985170; a3: cstring): Ogrlayerh_452985133 {.
      cdecl, importc: "OGR_DS_ExecuteSQL".}
else:
  static :
    hint("Declaration of " & "OGR_DS_ExecuteSQL" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterstatistics):
  proc Gdalgetrasterstatistics*(a0: Gdalrasterbandh_452985168; bapproxok: cint;
                                bforce: cint; pdfmin: ptr cdouble;
                                pdfmax: ptr cdouble; pdfmean: ptr cdouble;
                                pdfstddev: ptr cdouble): Cplerr_452985113 {.
      cdecl, importc: "GDALGetRasterStatistics".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterStatistics" &
        " already exists, not redeclaring")
when not declared(Gdalgeneralcmdlineprocessor):
  proc Gdalgeneralcmdlineprocessor*(nargc: cint; ppapszargv: ptr ptr ptr cschar;
                                    noptions: cint): cint {.cdecl,
      importc: "GDALGeneralCmdLineProcessor".}
else:
  static :
    hint("Declaration of " & "GDALGeneralCmdLineProcessor" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpointzm):
  proc Ogrgsetpointzm*(a0: Ogrgeometryh_452985170; ipoint: cint; a2: cdouble;
                       a3: cdouble; a4: cdouble; a5: cdouble): void {.cdecl,
      importc: "OGR_G_SetPointZM".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPointZM" &
        " already exists, not redeclaring")
when not declared(Gdalgetopendatasets):
  proc Gdalgetopendatasets*(hds: ptr ptr Gdaldataseth_452985107;
                            pncount: ptr cint): void {.cdecl,
      importc: "GDALGetOpenDatasets".}
else:
  static :
    hint("Declaration of " & "GDALGetOpenDatasets" &
        " already exists, not redeclaring")
when not declared(Ogrdrdeletedatasource):
  proc Ogrdrdeletedatasource*(a0: Ogrsfdriverh_452985226; a1: cstring): Ogrerr_452985198 {.
      cdecl, importc: "OGR_Dr_DeleteDataSource".}
else:
  static :
    hint("Declaration of " & "OGR_Dr_DeleteDataSource" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttowkb):
  proc Ogrgexporttowkb*(a0: Ogrgeometryh_452985170; a1: Ogrwkbbyteorder_452985117;
                        a2: ptr cuchar): Ogrerr_452985198 {.cdecl,
      importc: "OGR_G_ExportToWkb".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToWkb" &
        " already exists, not redeclaring")
when not declared(Ogrlcreategeomfield):
  proc Ogrlcreategeomfield*(hlayer: Ogrlayerh_452985133;
                            hfielddefn: Ogrgeomfielddefnh_452985078;
                            bforce: cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_L_CreateGeomField".}
else:
  static :
    hint("Declaration of " & "OGR_L_CreateGeomField" &
        " already exists, not redeclaring")
when not declared(Ogrlgetfidcolumn):
  proc Ogrlgetfidcolumn*(a0: Ogrlayerh_452985133): cstring {.cdecl,
      importc: "OGR_L_GetFIDColumn".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetFIDColumn" &
        " already exists, not redeclaring")
when not declared(Gdalgetdescription):
  proc Gdalgetdescription*(a0: Gdalmajorobjecth_452985125): cstring {.cdecl,
      importc: "GDALGetDescription".}
else:
  static :
    hint("Declaration of " & "GDALGetDescription" &
        " already exists, not redeclaring")
when not declared(Gdalgetasyncstatustypename):
  proc Gdalgetasyncstatustypename*(a0: Gdalasyncstatustype_452985228): cstring {.
      cdecl, importc: "GDALGetAsyncStatusTypeName".}
else:
  static :
    hint("Declaration of " & "GDALGetAsyncStatusTypeName" &
        " already exists, not redeclaring")
when not declared(Gdalratgetvalueasint):
  proc Gdalratgetvalueasint*(a0: Gdalrasterattributetableh_452985200; a1: cint;
                             a2: cint): cint {.cdecl,
      importc: "GDALRATGetValueAsInt".}
else:
  static :
    hint("Declaration of " & "GDALRATGetValueAsInt" &
        " already exists, not redeclaring")
when not declared(Gdalfillraster):
  proc Gdalfillraster*(hband: Gdalrasterbandh_452985168; dfrealvalue: cdouble;
                       dfimaginaryvalue: cdouble): Cplerr_452985113 {.cdecl,
      importc: "GDALFillRaster".}
else:
  static :
    hint("Declaration of " & "GDALFillRaster" &
        " already exists, not redeclaring")
when not declared(Gdalratsettabletype):
  proc Gdalratsettabletype*(hrat: Gdalrasterattributetableh_452985200;
                            eintabletype: Gdalrattabletype_452985188): Cplerr_452985113 {.
      cdecl, importc: "GDALRATSetTableType".}
else:
  static :
    hint("Declaration of " & "GDALRATSetTableType" &
        " already exists, not redeclaring")
when not declared(Ogrgcreategeometry):
  proc Ogrgcreategeometry*(a0: Ogrwkbgeometrytype_452985074): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_CreateGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateGeometry" &
        " already exists, not redeclaring")
when not declared(Ogrdstestcapability):
  proc Ogrdstestcapability*(a0: Ogrdatasourceh_452985093; a1: cstring): cint {.
      cdecl, importc: "OGR_DS_TestCapability".}
else:
  static :
    hint("Declaration of " & "OGR_DS_TestCapability" &
        " already exists, not redeclaring")
when not declared(Ogrfldgetnameref):
  proc Ogrfldgetnameref*(a0: Ogrfielddefnh_452985121): cstring {.cdecl,
      importc: "OGR_Fld_GetNameRef".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetNameRef" &
        " already exists, not redeclaring")
when not declared(Ogrfgetnativedata):
  proc Ogrfgetnativedata*(a0: Ogrfeatureh_452985196): cstring {.cdecl,
      importc: "OGR_F_GetNativeData".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetNativeData" &
        " already exists, not redeclaring")
when not declared(Gdalderegisterdriver):
  proc Gdalderegisterdriver*(a0: Gdaldriverh_452985127): void {.cdecl,
      importc: "GDALDeregisterDriver".}
else:
  static :
    hint("Declaration of " & "GDALDeregisterDriver" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldbinary):
  proc Ogrfsetfieldbinary*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint;
                           a3: pointer): void {.cdecl,
      importc: "OGR_F_SetFieldBinary".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldBinary" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgetstyletable):
  proc Gdaldatasetgetstyletable*(a0: Gdaldataseth_452985107): Ogrstyletableh_452985091 {.
      cdecl, importc: "GDALDatasetGetStyleTable".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetStyleTable" &
        " already exists, not redeclaring")
when not declared(Gdalrasterbandgettiledvirtualmem):
  proc Gdalrasterbandgettiledvirtualmem*(hband: Gdalrasterbandh_452985168;
      erwflag: Gdalrwflag_452985089; nxoff: cint; nyoff: cint; nxsize: cint;
      nysize: cint; ntilexsize: cint; ntileysize: cint; ebuftype: Gdaldatatype_452985072;
      ncachesize: csize_t; bsinglethreadusage: cint; papszoptions: Cslconstlist_452985151): ptr Cplvirtualmem {.
      cdecl, importc: "GDALRasterBandGetTiledVirtualMem".}
else:
  static :
    hint("Declaration of " & "GDALRasterBandGetTiledVirtualMem" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetjustify):
  proc Ogrfldsetjustify*(a0: Ogrfielddefnh_452985121; a1: Ogrjustification_452985180): void {.
      cdecl, importc: "OGR_Fld_SetJustify".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetJustify" &
        " already exists, not redeclaring")
when not declared(Gdalopenex):
  proc Gdalopenex*(pszfilename: cstring; nopenflags: cuint;
                   papszalloweddrivers: ptr ptr cschar;
                   papszopenoptions: ptr ptr cschar;
                   papszsiblingfiles: ptr ptr cschar): Gdaldataseth_452985107 {.
      cdecl, importc: "GDALOpenEx".}
else:
  static :
    hint("Declaration of " & "GDALOpenEx" & " already exists, not redeclaring")
when not declared(Ogrlsymdifference):
  proc Ogrlsymdifference*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                          a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                          a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_SymDifference".}
else:
  static :
    hint("Declaration of " & "OGR_L_SymDifference" &
        " already exists, not redeclaring")
when not declared(Gdalsetdescription):
  proc Gdalsetdescription*(a0: Gdalmajorobjecth_452985125; a1: cstring): void {.
      cdecl, importc: "GDALSetDescription".}
else:
  static :
    hint("Declaration of " & "GDALSetDescription" &
        " already exists, not redeclaring")
when not declared(Gdaldestroydrivermanager):
  proc Gdaldestroydrivermanager*(): void {.cdecl,
      importc: "GDALDestroyDriverManager".}
else:
  static :
    hint("Declaration of " & "GDALDestroyDriverManager" &
        " already exists, not redeclaring")
when not declared(Ogrfldgetwidth):
  proc Ogrfldgetwidth*(a0: Ogrfielddefnh_452985121): cint {.cdecl,
      importc: "OGR_Fld_GetWidth".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetWidth" &
        " already exists, not redeclaring")
when not declared(Ogrsmaddpart):
  proc Ogrsmaddpart*(hsm: Ogrstylemgrh_452985186; hst: Ogrstyletoolh_452985131): cint {.
      cdecl, importc: "OGR_SM_AddPart".}
else:
  static :
    hint("Declaration of " & "OGR_SM_AddPart" &
        " already exists, not redeclaring")
when not declared(Gdalcreatepansharpenedvrt):
  proc Gdalcreatepansharpenedvrt*(pszxml: cstring;
                                  hpanchroband: Gdalrasterbandh_452985168;
                                  ninputspectralbands: cint;
                                  pahinputspectralbands: ptr Gdalrasterbandh_452985168): Gdaldataseth_452985107 {.
      cdecl, importc: "GDALCreatePansharpenedVRT".}
else:
  static :
    hint("Declaration of " & "GDALCreatePansharpenedVRT" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetcopywholeraster):
  proc Gdaldatasetcopywholeraster*(hsrcds: Gdaldataseth_452985107;
                                   hdstds: Gdaldataseth_452985107;
                                   papszoptions: Cslconstlist_452985151;
                                   pfnprogress: Gdalprogressfunc_452985210;
                                   pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALDatasetCopyWholeRaster".}
else:
  static :
    hint("Declaration of " & "GDALDatasetCopyWholeRaster" &
        " already exists, not redeclaring")
when not declared(Gdalflushrastercache):
  proc Gdalflushrastercache*(hband: Gdalrasterbandh_452985168): Cplerr_452985113 {.
      cdecl, importc: "GDALFlushRasterCache".}
else:
  static :
    hint("Declaration of " & "GDALFlushRasterCache" &
        " already exists, not redeclaring")
when not declared(Alternullableflag):
  const
    Alternullableflag* = 8   ## Generated based on /usr/include/gdal/ogr_core.h:530:9
else:
  static :
    hint("Declaration of " & "ALTER_NULLABLE_FLAG" &
        " already exists, not redeclaring")
when not declared(Ogrfdreference):
  proc Ogrfdreference*(a0: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_Reference".}
else:
  static :
    hint("Declaration of " & "OGR_FD_Reference" &
        " already exists, not redeclaring")
when not declared(Ogrgtouches):
  proc Ogrgtouches*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Touches".}
else:
  static :
    hint("Declaration of " & "OGR_G_Touches" &
        " already exists, not redeclaring")
when not declared(Ogrnullfid):
  const
    Ogrnullfid* = -1         ## Generated based on /usr/include/gdal/ogr_core.h:650:9
else:
  static :
    hint("Declaration of " & "OGRNullFID" & " already exists, not redeclaring")
when not declared(Ogrgdifference):
  proc Ogrgdifference*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Difference".}
else:
  static :
    hint("Declaration of " & "OGR_G_Difference" &
        " already exists, not redeclaring")
when not declared(Ogrdrcreatedatasource):
  proc Ogrdrcreatedatasource*(a0: Ogrsfdriverh_452985226; a1: cstring;
                              a2: ptr ptr cschar): Ogrdatasourceh_452985093 {.
      cdecl, importc: "OGR_Dr_CreateDataSource".}
else:
  static :
    hint("Declaration of " & "OGR_Dr_CreateDataSource" &
        " already exists, not redeclaring")
when not declared(Ogrfldisnullable):
  proc Ogrfldisnullable*(hdefn: Ogrfielddefnh_452985121): cint {.cdecl,
      importc: "OGR_Fld_IsNullable".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_IsNullable" &
        " already exists, not redeclaring")
when not declared(Ogrfgetstylestring):
  proc Ogrfgetstylestring*(a0: Ogrfeatureh_452985196): cstring {.cdecl,
      importc: "OGR_F_GetStyleString".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetStyleString" &
        " already exists, not redeclaring")
when not declared(Ogrlstarttransaction):
  proc Ogrlstarttransaction*(a0: Ogrlayerh_452985133): Ogrerr_452985198 {.cdecl,
      importc: "OGR_L_StartTransaction".}
else:
  static :
    hint("Declaration of " & "OGR_L_StartTransaction" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeiscomplex):
  proc Gdaldatatypeiscomplex*(a0: Gdaldatatype_452985072): cint {.cdecl,
      importc: "GDALDataTypeIsComplex".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeIsComplex" &
        " already exists, not redeclaring")
when not declared(Ogrdssetstyletable):
  proc Ogrdssetstyletable*(a0: Ogrdatasourceh_452985093; a1: Ogrstyletableh_452985091): void {.
      cdecl, importc: "OGR_DS_SetStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_DS_SetStyleTable" &
        " already exists, not redeclaring")
when not declared(Gdalratremovestatistics):
  proc Gdalratremovestatistics*(a0: Gdalrasterattributetableh_452985200): void {.
      cdecl, importc: "GDALRATRemoveStatistics".}
else:
  static :
    hint("Declaration of " & "GDALRATRemoveStatistics" &
        " already exists, not redeclaring")
when not declared(Gdalofshared):
  const
    Gdalofshared* = 32       ## Generated based on /usr/include/gdal/gdal.h:467:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_SHARED" &
        " already exists, not redeclaring")
when not declared(Ogrlgetrefcount):
  proc Ogrlgetrefcount*(a0: Ogrlayerh_452985133): cint {.cdecl,
      importc: "OGR_L_GetRefCount".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetRefCount" &
        " already exists, not redeclaring")
when not declared(Gdalgetbandnumber):
  proc Gdalgetbandnumber*(a0: Gdalrasterbandh_452985168): cint {.cdecl,
      importc: "GDALGetBandNumber".}
else:
  static :
    hint("Declaration of " & "GDALGetBandNumber" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttogml):
  proc Ogrgexporttogml*(a0: Ogrgeometryh_452985170): cstring {.cdecl,
      importc: "OGR_G_ExportToGML".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToGML" &
        " already exists, not redeclaring")
when not declared(Ogrgintersect):
  proc Ogrgintersect*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Intersect".}
else:
  static :
    hint("Declaration of " & "OGR_G_Intersect" &
        " already exists, not redeclaring")
when not declared(Ogrlreference):
  proc Ogrlreference*(a0: Ogrlayerh_452985133): cint {.cdecl,
      importc: "OGR_L_Reference".}
else:
  static :
    hint("Declaration of " & "OGR_L_Reference" &
        " already exists, not redeclaring")
when not declared(Ogrlsynctodisk):
  proc Ogrlsynctodisk*(a0: Ogrlayerh_452985133): Ogrerr_452985198 {.cdecl,
      importc: "OGR_L_SyncToDisk".}
else:
  static :
    hint("Declaration of " & "OGR_L_SyncToDisk" &
        " already exists, not redeclaring")
when not declared(Gdalgetcachemax):
  proc Gdalgetcachemax*(): cint {.cdecl, importc: "GDALGetCacheMax".}
else:
  static :
    hint("Declaration of " & "GDALGetCacheMax" &
        " already exists, not redeclaring")
when not declared(Ogrgempty):
  proc Ogrgempty*(a0: Ogrgeometryh_452985170): void {.cdecl,
      importc: "OGR_G_Empty".}
else:
  static :
    hint("Declaration of " & "OGR_G_Empty" & " already exists, not redeclaring")
when not declared(Ogrgdistance3d):
  proc Ogrgdistance3d*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cdouble {.
      cdecl, importc: "OGR_G_Distance3D".}
else:
  static :
    hint("Declaration of " & "OGR_G_Distance3D" &
        " already exists, not redeclaring")
when not declared(Ogrldeletefield):
  proc Ogrldeletefield*(a0: Ogrlayerh_452985133; ifield: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_DeleteField".}
else:
  static :
    hint("Declaration of " & "OGR_L_DeleteField" &
        " already exists, not redeclaring")
when not declared(Ogrfgetgeometryref):
  proc Ogrfgetgeometryref*(a0: Ogrfeatureh_452985196): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_F_GetGeometryRef".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetGeometryRef" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpoint):
  proc Ogrgsetpoint*(a0: Ogrgeometryh_452985170; ipoint: cint; a2: cdouble;
                     a3: cdouble; a4: cdouble): void {.cdecl,
      importc: "OGR_G_SetPoint".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPoint" &
        " already exists, not redeclaring")
when not declared(Ogrlgetspatialref):
  proc Ogrlgetspatialref*(a0: Ogrlayerh_452985133): Ogrspatialreferenceh_452985129 {.
      cdecl, importc: "OGR_L_GetSpatialRef".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetSpatialRef" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasdoublelist):
  proc Ogrfgetfieldasdoublelist*(a0: Ogrfeatureh_452985196; a1: cint;
                                 a2: ptr cint): ptr cdouble {.cdecl,
      importc: "OGR_F_GetFieldAsDoubleList".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsDoubleList" &
        " already exists, not redeclaring")
when not declared(Ogrfdcreate):
  proc Ogrfdcreate*(a0: cstring): Ogrfeaturedefnh_452985176 {.cdecl,
      importc: "OGR_FD_Create".}
else:
  static :
    hint("Declaration of " & "OGR_FD_Create" &
        " already exists, not redeclaring")
when not declared(Gdalofkindmask):
  const
    Gdalofkindmask* = 30     ## Generated based on /usr/include/gdal/gdal.h:460:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_KIND_MASK" &
        " already exists, not redeclaring")
when not declared(Gdalratgetvalueasstring):
  proc Gdalratgetvalueasstring*(a0: Gdalrasterattributetableh_452985200;
                                a1: cint; a2: cint): cstring {.cdecl,
      importc: "GDALRATGetValueAsString".}
else:
  static :
    hint("Declaration of " & "GDALRATGetValueAsString" &
        " already exists, not redeclaring")
when not declared(Ogrgfldgettype):
  proc Ogrgfldgettype*(a0: Ogrgeomfielddefnh_452985078): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GFld_GetType".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_GetType" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfromwithmap):
  proc Ogrfsetfromwithmap*(a0: Ogrfeatureh_452985196; a1: Ogrfeatureh_452985196;
                           a2: cint; a3: ptr cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_F_SetFromWithMap".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFromWithMap" &
        " already exists, not redeclaring")
when not declared(Ogrfdsetstyleignored):
  proc Ogrfdsetstyleignored*(a0: Ogrfeaturedefnh_452985176; a1: cint): void {.
      cdecl, importc: "OGR_FD_SetStyleIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_FD_SetStyleIgnored" &
        " already exists, not redeclaring")
when not declared(Ogrlidentity):
  proc Ogrlidentity*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                     a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                     a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_Identity".}
else:
  static :
    hint("Declaration of " & "OGR_L_Identity" &
        " already exists, not redeclaring")
when not declared(Ogrggetenvelope):
  proc Ogrggetenvelope*(a0: Ogrgeometryh_452985170; a1: ptr Ogrenvelope_452985172): void {.
      cdecl, importc: "OGR_G_GetEnvelope".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetEnvelope" &
        " already exists, not redeclaring")
when not declared(Gdalgetdrivercount):
  proc Gdalgetdrivercount*(): cint {.cdecl, importc: "GDALGetDriverCount".}
else:
  static :
    hint("Declaration of " & "GDALGetDriverCount" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetdeletelayer):
  proc Gdaldatasetdeletelayer*(a0: Gdaldataseth_452985107; a1: cint): Ogrerr_452985198 {.
      cdecl, importc: "GDALDatasetDeleteLayer".}
else:
  static :
    hint("Declaration of " & "GDALDatasetDeleteLayer" &
        " already exists, not redeclaring")
when not declared(Gdaldatasettestcapability):
  proc Gdaldatasettestcapability*(a0: Gdaldataseth_452985107; a1: cstring): cint {.
      cdecl, importc: "GDALDatasetTestCapability".}
else:
  static :
    hint("Declaration of " & "GDALDatasetTestCapability" &
        " already exists, not redeclaring")
when not declared(Ogrgflddestroy):
  proc Ogrgflddestroy*(a0: Ogrgeomfielddefnh_452985078): void {.cdecl,
      importc: "OGR_GFld_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_Destroy" &
        " already exists, not redeclaring")
when not declared(Gdalgetblocksize):
  proc Gdalgetblocksize*(a0: Gdalrasterbandh_452985168; pnxsize: ptr cint;
                         pnysize: ptr cint): void {.cdecl,
      importc: "GDALGetBlockSize".}
else:
  static :
    hint("Declaration of " & "GDALGetBlockSize" &
        " already exists, not redeclaring")
when not declared(Ogrfgetstyletable):
  proc Ogrfgetstyletable*(a0: Ogrfeatureh_452985196): Ogrstyletableh_452985091 {.
      cdecl, importc: "OGR_F_GetStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetStyleTable" &
        " already exists, not redeclaring")
when not declared(Gdalargetnextupdatedregion):
  proc Gdalargetnextupdatedregion*(hario: Gdalasyncreaderh_452985166;
                                   dftimeout: cdouble; pnxbufoff: ptr cint;
                                   pnybufoff: ptr cint; pnxbufsize: ptr cint;
                                   pnybufsize: ptr cint): Gdalasyncstatustype_452985228 {.
      cdecl, importc: "GDALARGetNextUpdatedRegion".}
else:
  static :
    hint("Declaration of " & "GDALARGetNextUpdatedRegion" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldstring):
  proc Ogrfsetfieldstring*(a0: Ogrfeatureh_452985196; a1: cint; a2: cstring): void {.
      cdecl, importc: "OGR_F_SetFieldString".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldString" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetfielddefn):
  proc Ogrfdgetfielddefn*(a0: Ogrfeaturedefnh_452985176; a1: cint): Ogrfielddefnh_452985121 {.
      cdecl, importc: "OGR_FD_GetFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetFieldDefn" &
        " already exists, not redeclaring")
when not declared(Ogrfvalidate):
  proc Ogrfvalidate*(a0: Ogrfeatureh_452985196; nvalidateflags: cint;
                     bemiterror: cint): cint {.cdecl, importc: "OGR_F_Validate".}
else:
  static :
    hint("Declaration of " & "OGR_F_Validate" &
        " already exists, not redeclaring")
when not declared(Ogrfsetgeometry):
  proc Ogrfsetgeometry*(a0: Ogrfeatureh_452985196; a1: Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_F_SetGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetGeometry" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetexecutesql):
  proc Gdaldatasetexecutesql*(a0: Gdaldataseth_452985107; a1: cstring;
                              a2: Ogrgeometryh_452985170; a3: cstring): Ogrlayerh_452985133 {.
      cdecl, importc: "GDALDatasetExecuteSQL".}
else:
  static :
    hint("Declaration of " & "GDALDatasetExecuteSQL" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetgeomfieldcount):
  proc Ogrfdgetgeomfieldcount*(hfdefn: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_GetGeomFieldCount".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetGeomFieldCount" &
        " already exists, not redeclaring")
when not declared(Gdalgetdriverbyname):
  proc Gdalgetdriverbyname*(a0: cstring): Gdaldriverh_452985127 {.cdecl,
      importc: "GDALGetDriverByName".}
else:
  static :
    hint("Declaration of " & "GDALGetDriverByName" &
        " already exists, not redeclaring")
when not declared(Ogrlgetextent):
  proc Ogrlgetextent*(a0: Ogrlayerh_452985133; a1: ptr Ogrenvelope_452985172;
                      a2: cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_L_GetExtent".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetExtent" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetrefcount):
  proc Ogrdsgetrefcount*(a0: Ogrdatasourceh_452985093): cint {.cdecl,
      importc: "OGR_DS_GetRefCount".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetRefCount" &
        " already exists, not redeclaring")
when not declared(Ogrgtgetcollection):
  proc Ogrgtgetcollection*(etype: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GT_GetCollection".}
else:
  static :
    hint("Declaration of " & "OGR_GT_GetCollection" &
        " already exists, not redeclaring")
when not declared(Ogrggetarea):
  proc Ogrggetarea*(a0: Ogrgeometryh_452985170): cdouble {.cdecl,
      importc: "OGR_G_GetArea".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetArea" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetignored):
  proc Ogrfldsetignored*(hdefn: Ogrfielddefnh_452985121; a1: cint): void {.
      cdecl, importc: "OGR_Fld_SetIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetIgnored" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeisfloating):
  proc Gdaldatatypeisfloating*(a0: Gdaldatatype_452985072): cint {.cdecl,
      importc: "GDALDataTypeIsFloating".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeIsFloating" &
        " already exists, not redeclaring")
when not declared(Gdalcopybits):
  proc Gdalcopybits*(pabysrcdata: ptr Gbyte_452985208; nsrcoffset: cint;
                     nsrcstep: cint; pabydstdata: ptr Gbyte_452985208;
                     ndstoffset: cint; ndststep: cint; nbitcount: cint;
                     nstepcount: cint): void {.cdecl, importc: "GDALCopyBits".}
else:
  static :
    hint("Declaration of " & "GDALCopyBits" & " already exists, not redeclaring")
when not declared(Ogrlintersection):
  proc Ogrlintersection*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                         a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                         a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_Intersection".}
else:
  static :
    hint("Declaration of " & "OGR_L_Intersection" &
        " already exists, not redeclaring")
when not declared(Ogrgcontains):
  proc Ogrgcontains*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Contains".}
else:
  static :
    hint("Declaration of " & "OGR_G_Contains" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasdatetime):
  proc Ogrfgetfieldasdatetime*(a0: Ogrfeatureh_452985196; a1: cint;
                               a2: ptr cint; a3: ptr cint; a4: ptr cint;
                               a5: ptr cint; a6: ptr cint; a7: ptr cint;
                               a8: ptr cint): cint {.cdecl,
      importc: "OGR_F_GetFieldAsDateTime".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsDateTime" &
        " already exists, not redeclaring")
when not declared(Ogrstgetparamdbl):
  proc Ogrstgetparamdbl*(hst: Ogrstyletoolh_452985131; eparam: cint;
                         bvalueisnull: ptr cint): cdouble {.cdecl,
      importc: "OGR_ST_GetParamDbl".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetParamDbl" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetsetstyletabledirectly):
  proc Gdaldatasetsetstyletabledirectly*(a0: Gdaldataseth_452985107;
      a1: Ogrstyletableh_452985091): void {.cdecl,
      importc: "GDALDatasetSetStyleTableDirectly".}
else:
  static :
    hint("Declaration of " & "GDALDatasetSetStyleTableDirectly" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasternodatavalue):
  proc Gdalgetrasternodatavalue*(a0: Gdalrasterbandh_452985168; a1: ptr cint): cdouble {.
      cdecl, importc: "GDALGetRasterNoDataValue".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterNoDataValue" &
        " already exists, not redeclaring")
when not declared(Ogrstblloadstyletable):
  proc Ogrstblloadstyletable*(hstyletable: Ogrstyletableh_452985091;
                              pszfilename: cstring): cint {.cdecl,
      importc: "OGR_STBL_LoadStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_LoadStyleTable" &
        " already exists, not redeclaring")
when not declared(Ogrgassignspatialreference):
  proc Ogrgassignspatialreference*(a0: Ogrgeometryh_452985170;
                                   a1: Ogrspatialreferenceh_452985129): void {.
      cdecl, importc: "OGR_G_AssignSpatialReference".}
else:
  static :
    hint("Declaration of " & "OGR_G_AssignSpatialReference" &
        " already exists, not redeclaring")
when not declared(Ogrstblgetlaststylename):
  proc Ogrstblgetlaststylename*(hstyletable: Ogrstyletableh_452985091): cstring {.
      cdecl, importc: "OGR_STBL_GetLastStyleName".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_GetLastStyleName" &
        " already exists, not redeclaring")
when not declared(Ogrfldgetdefault):
  proc Ogrfldgetdefault*(hdefn: Ogrfielddefnh_452985121): cstring {.cdecl,
      importc: "OGR_Fld_GetDefault".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetDefault" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetnullable):
  proc Ogrfldsetnullable*(hdefn: Ogrfielddefnh_452985121; a1: cint): void {.
      cdecl, importc: "OGR_Fld_SetNullable".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetNullable" &
        " already exists, not redeclaring")
when not declared(Ogrggetpointcount):
  proc Ogrggetpointcount*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_GetPointCount".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetPointCount" &
        " already exists, not redeclaring")
when not declared(Gdalidentifydriver):
  proc Gdalidentifydriver*(pszfilename: cstring; papszfilelist: Cslconstlist_452985151): Gdaldriverh_452985127 {.
      cdecl, importc: "GDALIdentifyDriver".}
else:
  static :
    hint("Declaration of " & "GDALIdentifyDriver" &
        " already exists, not redeclaring")
when not declared(Gdalgetaccess):
  proc Gdalgetaccess*(hds: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALGetAccess".}
else:
  static :
    hint("Declaration of " & "GDALGetAccess" &
        " already exists, not redeclaring")
when not declared(Gdalratinitializefromcolortable):
  proc Gdalratinitializefromcolortable*(a0: Gdalrasterattributetableh_452985200;
                                        a1: Gdalcolortableh_452985123): Cplerr_452985113 {.
      cdecl, importc: "GDALRATInitializeFromColorTable".}
else:
  static :
    hint("Declaration of " & "GDALRATInitializeFromColorTable" &
        " already exists, not redeclaring")
when not declared(Gdaldumpopendatasets):
  proc Gdaldumpopendatasets*(a0: ptr File_452985230): cint {.cdecl,
      importc: "GDALDumpOpenDatasets".}
else:
  static :
    hint("Declaration of " & "GDALDumpOpenDatasets" &
        " already exists, not redeclaring")
when not declared(Gdalofall):
  const
    Gdalofall* = 0           ## Generated based on /usr/include/gdal/gdal.h:436:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_ALL" & " already exists, not redeclaring")
when not declared(Ogrfgetfieldasintegerlist):
  proc Ogrfgetfieldasintegerlist*(a0: Ogrfeatureh_452985196; a1: cint;
                                  a2: ptr cint): ptr cint {.cdecl,
      importc: "OGR_F_GetFieldAsIntegerList".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsIntegerList" &
        " already exists, not redeclaring")
when not declared(Ogrfldsettype):
  proc Ogrfldsettype*(a0: Ogrfielddefnh_452985121; a1: Ogrfieldtype_452985099): void {.
      cdecl, importc: "OGR_Fld_SetType".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetType" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldcount):
  proc Ogrfgetfieldcount*(a0: Ogrfeatureh_452985196): cint {.cdecl,
      importc: "OGR_F_GetFieldCount".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldCount" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetreferencecount):
  proc Ogrfdgetreferencecount*(a0: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_GetReferenceCount".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetReferenceCount" &
        " already exists, not redeclaring")
when not declared(Gdalreadblock):
  proc Gdalreadblock*(a0: Gdalrasterbandh_452985168; a1: cint; a2: cint;
                      a3: pointer): Cplerr_452985113 {.cdecl,
      importc: "GDALReadBlock".}
else:
  static :
    hint("Declaration of " & "GDALReadBlock" &
        " already exists, not redeclaring")
when not declared(Rasterioextraargcurrentversion):
  const
    Rasterioextraargcurrentversion* = 1 ## Generated based on /usr/include/gdal/gdal.h:176:9
else:
  static :
    hint("Declaration of " & "RASTERIO_EXTRA_ARG_CURRENT_VERSION" &
        " already exists, not redeclaring")
when not declared(Ogrgsetmeasured):
  proc Ogrgsetmeasured*(a0: Ogrgeometryh_452985170; a1: cint): void {.cdecl,
      importc: "OGR_G_SetMeasured".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetMeasured" &
        " already exists, not redeclaring")
when not declared(Gdalsetrasterscale):
  proc Gdalsetrasterscale*(hband: Gdalrasterbandh_452985168;
                           dfnewoffset: cdouble): Cplerr_452985113 {.cdecl,
      importc: "GDALSetRasterScale".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterScale" &
        " already exists, not redeclaring")
when not declared(Ogrgwithin):
  proc Ogrgwithin*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Within".}
else:
  static :
    hint("Declaration of " & "OGR_G_Within" & " already exists, not redeclaring")
when not declared(Ogrggety):
  proc Ogrggety*(a0: Ogrgeometryh_452985170; a1: cint): cdouble {.cdecl,
      importc: "OGR_G_GetY".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetY" & " already exists, not redeclaring")
when not declared(Alterdefaultflag):
  const
    Alterdefaultflag* = 16   ## Generated based on /usr/include/gdal/ogr_core.h:536:9
else:
  static :
    hint("Declaration of " & "ALTER_DEFAULT_FLAG" &
        " already exists, not redeclaring")
when not declared(Ogrgcoordinatedimension):
  proc Ogrgcoordinatedimension*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_CoordinateDimension".}
else:
  static :
    hint("Declaration of " & "OGR_G_CoordinateDimension" &
        " already exists, not redeclaring")
when not declared(Ogrmalloc):
  proc Ogrmalloc*(a0: csize_t): pointer {.cdecl, importc: "OGRMalloc".}
else:
  static :
    hint("Declaration of " & "OGRMalloc" & " already exists, not redeclaring")
when not declared(Ogropen):
  proc Ogropen*(a0: cstring; a1: cint; a2: ptr Ogrsfdriverh_452985226): Ogrdatasourceh_452985093 {.
      cdecl, importc: "OGROpen".}
else:
  static :
    hint("Declaration of " & "OGROpen" & " already exists, not redeclaring")
when not declared(Ogrlfindfieldindex):
  proc Ogrlfindfieldindex*(a0: Ogrlayerh_452985133; a1: cstring;
                           bexactmatch: cint): cint {.cdecl,
      importc: "OGR_L_FindFieldIndex".}
else:
  static :
    hint("Declaration of " & "OGR_L_FindFieldIndex" &
        " already exists, not redeclaring")
when not declared(Gdalratgetvalueasdouble):
  proc Gdalratgetvalueasdouble*(a0: Gdalrasterattributetableh_452985200;
                                a1: cint; a2: cint): cdouble {.cdecl,
      importc: "GDALRATGetValueAsDouble".}
else:
  static :
    hint("Declaration of " & "GDALRATGetValueAsDouble" &
        " already exists, not redeclaring")
when not declared(Gdalopenshared):
  proc Gdalopenshared*(a0: cstring; a1: Gdalaccess_452985080): Gdaldataseth_452985107 {.
      cdecl, importc: "GDALOpenShared".}
else:
  static :
    hint("Declaration of " & "GDALOpenShared" &
        " already exists, not redeclaring")
when not declared(Gdalversioninfo):
  proc Gdalversioninfo*(a0: cstring): cstring {.cdecl,
      importc: "GDALVersionInfo".}
else:
  static :
    hint("Declaration of " & "GDALVersionInfo" &
        " already exists, not redeclaring")
when not declared(Gdalratgettabletype):
  proc Gdalratgettabletype*(hrat: Gdalrasterattributetableh_452985200): Gdalrattabletype_452985188 {.
      cdecl, importc: "GDALRATGetTableType".}
else:
  static :
    hint("Declaration of " & "GDALRATGetTableType" &
        " already exists, not redeclaring")
when not declared(Ogrfequal):
  proc Ogrfequal*(a0: Ogrfeatureh_452985196; a1: Ogrfeatureh_452985196): cint {.
      cdecl, importc: "OGR_F_Equal".}
else:
  static :
    hint("Declaration of " & "OGR_F_Equal" & " already exists, not redeclaring")
when not declared(Gdalrattranslatetocolortable):
  proc Gdalrattranslatetocolortable*(a0: Gdalrasterattributetableh_452985200;
                                     nentrycount: cint): Gdalcolortableh_452985123 {.
      cdecl, importc: "GDALRATTranslateToColorTable".}
else:
  static :
    hint("Declaration of " & "GDALRATTranslateToColorTable" &
        " already exists, not redeclaring")
when not declared(Gdalgetgcpcount):
  proc Gdalgetgcpcount*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALGetGCPCount".}
else:
  static :
    hint("Declaration of " & "GDALGetGCPCount" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetwidth):
  proc Ogrfldsetwidth*(a0: Ogrfielddefnh_452985121; a1: cint): void {.cdecl,
      importc: "OGR_Fld_SetWidth".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetWidth" &
        " already exists, not redeclaring")
when not declared(Gdalregisterdriver):
  proc Gdalregisterdriver*(a0: Gdaldriverh_452985127): cint {.cdecl,
      importc: "GDALRegisterDriver".}
else:
  static :
    hint("Declaration of " & "GDALRegisterDriver" &
        " already exists, not redeclaring")
when not declared(Gdalgetfilelist):
  proc Gdalgetfilelist*(a0: Gdaldataseth_452985107): ptr ptr cschar {.cdecl,
      importc: "GDALGetFileList".}
else:
  static :
    hint("Declaration of " & "GDALGetFileList" &
        " already exists, not redeclaring")
when not declared(Gdalgetdriver):
  proc Gdalgetdriver*(a0: cint): Gdaldriverh_452985127 {.cdecl,
      importc: "GDALGetDriver".}
else:
  static :
    hint("Declaration of " & "GDALGetDriver" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpoint2d):
  proc Ogrgsetpoint2d*(a0: Ogrgeometryh_452985170; ipoint: cint; a2: cdouble;
                       a3: cdouble): void {.cdecl, importc: "OGR_G_SetPoint_2D".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPoint_2D" &
        " already exists, not redeclaring")
when not declared(Ogrlgetfeature):
  proc Ogrlgetfeature*(a0: Ogrlayerh_452985133; a1: Gintbig_452985145): Ogrfeatureh_452985196 {.
      cdecl, importc: "OGR_L_GetFeature".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetFeature" &
        " already exists, not redeclaring")
when not declared(Gdaldatacoveragestatusdata):
  const
    Gdaldatacoveragestatusdata* = 2 ## Generated based on /usr/include/gdal/gdal.h:929:9
else:
  static :
    hint("Declaration of " & "GDAL_DATA_COVERAGE_STATUS_DATA" &
        " already exists, not redeclaring")
when not declared(Ogrgbuffer):
  proc Ogrgbuffer*(a0: Ogrgeometryh_452985170; a1: cdouble; a2: cint): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Buffer".}
else:
  static :
    hint("Declaration of " & "OGR_G_Buffer" & " already exists, not redeclaring")
when not declared(Ogrdsgetlayercount):
  proc Ogrdsgetlayercount*(a0: Ogrdatasourceh_452985093): cint {.cdecl,
      importc: "OGR_DS_GetLayerCount".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetLayerCount" &
        " already exists, not redeclaring")
when not declared(Ogrgequals):
  proc Ogrgequals*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Equals".}
else:
  static :
    hint("Declaration of " & "OGR_G_Equals" & " already exists, not redeclaring")
when not declared(Gdaldestroycolortable):
  proc Gdaldestroycolortable*(a0: Gdalcolortableh_452985123): void {.cdecl,
      importc: "GDALDestroyColorTable".}
else:
  static :
    hint("Declaration of " & "GDALDestroyColorTable" &
        " already exists, not redeclaring")
when not declared(Ogrfldisdefaultdriverspecific):
  proc Ogrfldisdefaultdriverspecific*(hdefn: Ogrfielddefnh_452985121): cint {.
      cdecl, importc: "OGR_Fld_IsDefaultDriverSpecific".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_IsDefaultDriverSpecific" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetcopylayer):
  proc Gdaldatasetcopylayer*(a0: Gdaldataseth_452985107; a1: Ogrlayerh_452985133;
                             a2: cstring; a3: Cslconstlist_452985151): Ogrlayerh_452985133 {.
      cdecl, importc: "GDALDatasetCopyLayer".}
else:
  static :
    hint("Declaration of " & "GDALDatasetCopyLayer" &
        " already exists, not redeclaring")
when not declared(Ogrlgetextentex):
  proc Ogrlgetextentex*(a0: Ogrlayerh_452985133; igeomfield: cint;
                        psextent: ptr Ogrenvelope_452985172; bforce: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_GetExtentEx".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetExtentEx" &
        " already exists, not redeclaring")
when not declared(Ogrfstealgeometry):
  proc Ogrfstealgeometry*(a0: Ogrfeatureh_452985196): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_F_StealGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_F_StealGeometry" &
        " already exists, not redeclaring")
when not declared(Gdaloverviewmagnitudecorrection):
  proc Gdaloverviewmagnitudecorrection*(hbaseband: Gdalrasterbandh_452985168;
                                        noverviewcount: cint;
                                        pahoverviews: ptr Gdalrasterbandh_452985168;
                                        pfnprogress: Gdalprogressfunc_452985210;
                                        pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALOverviewMagnitudeCorrection".}
else:
  static :
    hint("Declaration of " & "GDALOverviewMagnitudeCorrection" &
        " already exists, not redeclaring")
when not declared(Ogrlgetspatialfilter):
  proc Ogrlgetspatialfilter*(a0: Ogrlayerh_452985133): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_L_GetSpatialFilter".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetSpatialFilter" &
        " already exists, not redeclaring")
when not declared(Ogrgetfieldtypename):
  proc Ogrgetfieldtypename*(a0: Ogrfieldtype_452985099): cstring {.cdecl,
      importc: "OGR_GetFieldTypeName".}
else:
  static :
    hint("Declaration of " & "OGR_GetFieldTypeName" &
        " already exists, not redeclaring")
when not declared(Gdalgetcachemax64):
  proc Gdalgetcachemax64*(): Gintbig_452985145 {.cdecl,
      importc: "GDALGetCacheMax64".}
else:
  static :
    hint("Declaration of " & "GDALGetCacheMax64" &
        " already exists, not redeclaring")
when not declared(Ogrgcreatefromwkt):
  proc Ogrgcreatefromwkt*(a0: ptr ptr cschar; a1: Ogrspatialreferenceh_452985129;
                          a2: ptr Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_CreateFromWkt".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateFromWkt" &
        " already exists, not redeclaring")
when not declared(Ogrsetnonlineargeometriesenabledflag):
  proc Ogrsetnonlineargeometriesenabledflag*(bflag: cint): void {.cdecl,
      importc: "OGRSetNonLinearGeometriesEnabledFlag".}
else:
  static :
    hint("Declaration of " & "OGRSetNonLinearGeometriesEnabledFlag" &
        " already exists, not redeclaring")
when not declared(Gdalofreserved1):
  const
    Gdalofreserved1* = 768   ## Generated based on /usr/include/gdal/gdal.h:517:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_RESERVED_1" &
        " already exists, not redeclaring")
when not declared(Ogrgtisnonlinear):
  proc Ogrgtisnonlinear*(a0: Ogrwkbgeometrytype_452985074): cint {.cdecl,
      importc: "OGR_GT_IsNonLinear".}
else:
  static :
    hint("Declaration of " & "OGR_GT_IsNonLinear" &
        " already exists, not redeclaring")
when not declared(Ogrdscopylayer):
  proc Ogrdscopylayer*(a0: Ogrdatasourceh_452985093; a1: Ogrlayerh_452985133;
                       a2: cstring; a3: ptr ptr cschar): Ogrlayerh_452985133 {.
      cdecl, importc: "OGR_DS_CopyLayer".}
else:
  static :
    hint("Declaration of " & "OGR_DS_CopyLayer" &
        " already exists, not redeclaring")
when not declared(Ogrsmgetpartcount):
  proc Ogrsmgetpartcount*(hsm: Ogrstylemgrh_452985186; pszstylestring: cstring): cint {.
      cdecl, importc: "OGR_SM_GetPartCount".}
else:
  static :
    hint("Declaration of " & "OGR_SM_GetPartCount" &
        " already exists, not redeclaring")
when not declared(Gdalofreadonly):
  const
    Gdalofreadonly* = 0      ## Generated based on /usr/include/gdal/gdal.h:424:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_READONLY" &
        " already exists, not redeclaring")
when not declared(Gdalflushcacheblock):
  proc Gdalflushcacheblock*(): cint {.cdecl, importc: "GDALFlushCacheBlock".}
else:
  static :
    hint("Declaration of " & "GDALFlushCacheBlock" &
        " already exists, not redeclaring")
when not declared(Ogrgcreatefromgml):
  proc Ogrgcreatefromgml*(a0: cstring): Ogrgeometryh_452985170 {.cdecl,
      importc: "OGR_G_CreateFromGML".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateFromGML" &
        " already exists, not redeclaring")
when not declared(Ogrgetopendscount):
  proc Ogrgetopendscount*(): cint {.cdecl, importc: "OGRGetOpenDSCount".}
else:
  static :
    hint("Declaration of " & "OGRGetOpenDSCount" &
        " already exists, not redeclaring")
when not declared(Ogrlsetspatialfilterrectex):
  proc Ogrlsetspatialfilterrectex*(a0: Ogrlayerh_452985133; igeomfield: cint;
                                   dfminx: cdouble; dfminy: cdouble;
                                   dfmaxx: cdouble; dfmaxy: cdouble): void {.
      cdecl, importc: "OGR_L_SetSpatialFilterRectEx".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetSpatialFilterRectEx" &
        " already exists, not redeclaring")
when not declared(Ogrdsdeletelayer):
  proc Ogrdsdeletelayer*(a0: Ogrdatasourceh_452985093; a1: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_DS_DeleteLayer".}
else:
  static :
    hint("Declaration of " & "OGR_DS_DeleteLayer" &
        " already exists, not redeclaring")
when not declared(Ogrggetspatialreference):
  proc Ogrggetspatialreference*(a0: Ogrgeometryh_452985170): Ogrspatialreferenceh_452985129 {.
      cdecl, importc: "OGR_G_GetSpatialReference".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetSpatialReference" &
        " already exists, not redeclaring")
when not declared(Gdalratsetrowcount):
  proc Gdalratsetrowcount*(a0: Gdalrasterattributetableh_452985200; a1: cint): void {.
      cdecl, importc: "GDALRATSetRowCount".}
else:
  static :
    hint("Declaration of " & "GDALRATSetRowCount" &
        " already exists, not redeclaring")
when not declared(Gdalendasyncreader):
  proc Gdalendasyncreader*(hds: Gdaldataseth_452985107;
                           hasynchreaderh: Gdalasyncreaderh_452985166): void {.
      cdecl, importc: "GDALEndAsyncReader".}
else:
  static :
    hint("Declaration of " & "GDALEndAsyncReader" &
        " already exists, not redeclaring")
when not declared(Gdalsetspatialref):
  proc Gdalsetspatialref*(a0: Gdaldataseth_452985107; a1: Ogrspatialreferenceh_452985129): Cplerr_452985113 {.
      cdecl, importc: "GDALSetSpatialRef".}
else:
  static :
    hint("Declaration of " & "GDALSetSpatialRef" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasinteger):
  proc Ogrfgetfieldasinteger*(a0: Ogrfeatureh_452985196; a1: cint): cint {.
      cdecl, importc: "OGR_F_GetFieldAsInteger".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsInteger" &
        " already exists, not redeclaring")
when not declared(Ogrggetpointzm):
  proc Ogrggetpointzm*(a0: Ogrgeometryh_452985170; ipoint: cint;
                       a2: ptr cdouble; a3: ptr cdouble; a4: ptr cdouble;
                       a5: ptr cdouble): void {.cdecl,
      importc: "OGR_G_GetPointZM".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetPointZM" &
        " already exists, not redeclaring")
when not declared(Ogrlgetgeomtype):
  proc Ogrlgetgeomtype*(a0: Ogrlayerh_452985133): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_L_GetGeomType".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetGeomType" &
        " already exists, not redeclaring")
when not declared(Ogrgsimplifypreservetopology):
  proc Ogrgsimplifypreservetopology*(hthis: Ogrgeometryh_452985170;
                                     tolerance: cdouble): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_SimplifyPreserveTopology".}
else:
  static :
    hint("Declaration of " & "OGR_G_SimplifyPreserveTopology" &
        " already exists, not redeclaring")
when not declared(Ogrgsymmetricdifference):
  proc Ogrgsymmetricdifference*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_SymmetricDifference".}
else:
  static :
    hint("Declaration of " & "OGR_G_SymmetricDifference" &
        " already exists, not redeclaring")
when not declared(Gdalgetdrivershortname):
  proc Gdalgetdrivershortname*(a0: Gdaldriverh_452985127): cstring {.cdecl,
      importc: "GDALGetDriverShortName".}
else:
  static :
    hint("Declaration of " & "GDALGetDriverShortName" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterband):
  proc Gdalgetrasterband*(a0: Gdaldataseth_452985107; a1: cint): Gdalrasterbandh_452985168 {.
      cdecl, importc: "GDALGetRasterBand".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterBand" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldinteger64list):
  proc Ogrfsetfieldinteger64list*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint;
                                  a3: ptr Gintbig_452985145): void {.cdecl,
      importc: "OGR_F_SetFieldInteger64List".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldInteger64List" &
        " already exists, not redeclaring")
when not declared(Ogrfree):
  proc Ogrfree*(a0: pointer): void {.cdecl, importc: "OGRFree".}
else:
  static :
    hint("Declaration of " & "OGRFree" & " already exists, not redeclaring")
when not declared(Gdalofinternal):
  const
    Gdalofinternal* = 128    ## Generated based on /usr/include/gdal/gdal.h:481:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_INTERNAL" &
        " already exists, not redeclaring")
when not declared(Alterwidthprecisionflag):
  const
    Alterwidthprecisionflag* = 4 ## Generated based on /usr/include/gdal/ogr_core.h:524:9
else:
  static :
    hint("Declaration of " & "ALTER_WIDTH_PRECISION_FLAG" &
        " already exists, not redeclaring")
when not declared(Gdalreferencedataset):
  proc Gdalreferencedataset*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALReferenceDataset".}
else:
  static :
    hint("Declaration of " & "GDALReferenceDataset" &
        " already exists, not redeclaring")
when not declared(Ogrgforcetomultipoint):
  proc Ogrgforcetomultipoint*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ForceToMultiPoint".}
else:
  static :
    hint("Declaration of " & "OGR_G_ForceToMultiPoint" &
        " already exists, not redeclaring")
when not declared(Ogrdssetstyletabledirectly):
  proc Ogrdssetstyletabledirectly*(a0: Ogrdatasourceh_452985093;
                                   a1: Ogrstyletableh_452985091): void {.cdecl,
      importc: "OGR_DS_SetStyleTableDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_DS_SetStyleTableDirectly" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpointcount):
  proc Ogrgsetpointcount*(hgeom: Ogrgeometryh_452985170; nnewpointcount: cint): void {.
      cdecl, importc: "OGR_G_SetPointCount".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPointCount" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasstringlist):
  proc Ogrfgetfieldasstringlist*(a0: Ogrfeatureh_452985196; a1: cint): ptr ptr cschar {.
      cdecl, importc: "OGR_F_GetFieldAsStringList".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsStringList" &
        " already exists, not redeclaring")
when not declared(Gdalcomposegeotransforms):
  proc Gdalcomposegeotransforms*(padfgeotransform1: ptr cdouble;
                                 padfgeotransform2: ptr cdouble;
                                 padfgeotransformout: ptr cdouble): void {.
      cdecl, importc: "GDALComposeGeoTransforms".}
else:
  static :
    hint("Declaration of " & "GDALComposeGeoTransforms" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetname):
  proc Ogrfldsetname*(a0: Ogrfielddefnh_452985121; a1: cstring): void {.cdecl,
      importc: "OGR_Fld_SetName".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetName" &
        " already exists, not redeclaring")
when not declared(Gdalsetcolorentry):
  proc Gdalsetcolorentry*(a0: Gdalcolortableh_452985123; a1: cint;
                          a2: ptr Gdalcolorentry_452985139): void {.cdecl,
      importc: "GDALSetColorEntry".}
else:
  static :
    hint("Declaration of " & "GDALSetColorEntry" &
        " already exists, not redeclaring")
when not declared(Ogrfldgetjustify):
  proc Ogrfldgetjustify*(a0: Ogrfielddefnh_452985121): Ogrjustification_452985180 {.
      cdecl, importc: "OGR_Fld_GetJustify".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetJustify" &
        " already exists, not redeclaring")
when not declared(Ogrlreorderfields):
  proc Ogrlreorderfields*(a0: Ogrlayerh_452985133; panmap: ptr cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_ReorderFields".}
else:
  static :
    hint("Declaration of " & "OGR_L_ReorderFields" &
        " already exists, not redeclaring")
when not declared(Ogrlgetfeaturesread):
  proc Ogrlgetfeaturesread*(a0: Ogrlayerh_452985133): Gintbig_452985145 {.cdecl,
      importc: "OGR_L_GetFeaturesRead".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetFeaturesRead" &
        " already exists, not redeclaring")
when not declared(Ogrgaddpointm):
  proc Ogrgaddpointm*(a0: Ogrgeometryh_452985170; a1: cdouble; a2: cdouble;
                      a3: cdouble): void {.cdecl, importc: "OGR_G_AddPointM".}
else:
  static :
    hint("Declaration of " & "OGR_G_AddPointM" &
        " already exists, not redeclaring")
when not declared(Gdalsetrasterstatistics):
  proc Gdalsetrasterstatistics*(hband: Gdalrasterbandh_452985168;
                                dfmin: cdouble; dfmax: cdouble; dfmean: cdouble;
                                dfstddev: cdouble): Cplerr_452985113 {.cdecl,
      importc: "GDALSetRasterStatistics".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterStatistics" &
        " already exists, not redeclaring")
when not declared(Gdalgetcolorinterpretationbyname):
  proc Gdalgetcolorinterpretationbyname*(pszname: cstring): Gdalcolorinterp_452985206 {.
      cdecl, importc: "GDALGetColorInterpretationByName".}
else:
  static :
    hint("Declaration of " & "GDALGetColorInterpretationByName" &
        " already exists, not redeclaring")
when not declared(Gdalgetmaskband):
  proc Gdalgetmaskband*(hband: Gdalrasterbandh_452985168): Gdalrasterbandh_452985168 {.
      cdecl, importc: "GDALGetMaskBand".}
else:
  static :
    hint("Declaration of " & "GDALGetMaskBand" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfid):
  proc Ogrfsetfid*(a0: Ogrfeatureh_452985196; a1: Gintbig_452985145): Ogrerr_452985198 {.
      cdecl, importc: "OGR_F_SetFID".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFID" & " already exists, not redeclaring")
when not declared(Ogrgforcetolinestring):
  proc Ogrgforcetolinestring*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ForceToLineString".}
else:
  static :
    hint("Declaration of " & "OGR_G_ForceToLineString" &
        " already exists, not redeclaring")
when not declared(Ogrgetopends):
  proc Ogrgetopends*(ids: cint): Ogrdatasourceh_452985093 {.cdecl,
      importc: "OGRGetOpenDS".}
else:
  static :
    hint("Declaration of " & "OGRGetOpenDS" & " already exists, not redeclaring")
when not declared(Gdalsetprojection):
  proc Gdalsetprojection*(a0: Gdaldataseth_452985107; a1: cstring): Cplerr_452985113 {.
      cdecl, importc: "GDALSetProjection".}
else:
  static :
    hint("Declaration of " & "GDALSetProjection" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetsetstyletable):
  proc Gdaldatasetsetstyletable*(a0: Gdaldataseth_452985107; a1: Ogrstyletableh_452985091): void {.
      cdecl, importc: "GDALDatasetSetStyleTable".}
else:
  static :
    hint("Declaration of " & "GDALDatasetSetStyleTable" &
        " already exists, not redeclaring")
when not declared(Ogrgtissubclassof):
  proc Ogrgtissubclassof*(etype: Ogrwkbgeometrytype_452985074;
                          esupertype: Ogrwkbgeometrytype_452985074): cint {.
      cdecl, importc: "OGR_GT_IsSubClassOf".}
else:
  static :
    hint("Declaration of " & "OGR_GT_IsSubClassOf" &
        " already exists, not redeclaring")
when not declared(Gdalopen):
  proc Gdalopen*(pszfilename: cstring; eaccess: Gdalaccess_452985080): Gdaldataseth_452985107 {.
      cdecl, importc: "GDALOpen".}
else:
  static :
    hint("Declaration of " & "GDALOpen" & " already exists, not redeclaring")
when not declared(Ogrgwkbsize):
  proc Ogrgwkbsize*(hgeom: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_WkbSize".}
else:
  static :
    hint("Declaration of " & "OGR_G_WkbSize" &
        " already exists, not redeclaring")
when not declared(Altertypeflag):
  const
    Altertypeflag* = 2       ## Generated based on /usr/include/gdal/ogr_core.h:519:9
else:
  static :
    hint("Declaration of " & "ALTER_TYPE_FLAG" &
        " already exists, not redeclaring")
when not declared(Ogrstgetstylestring):
  proc Ogrstgetstylestring*(hst: Ogrstyletoolh_452985131): cstring {.cdecl,
      importc: "OGR_ST_GetStyleString".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetStyleString" &
        " already exists, not redeclaring")
when not declared(Gdalinvgeotransform):
  proc Gdalinvgeotransform*(padfgeotransformin: ptr cdouble;
                            padfinvgeotransformout: ptr cdouble): cint {.cdecl,
      importc: "GDALInvGeoTransform".}
else:
  static :
    hint("Declaration of " & "GDALInvGeoTransform" &
        " already exists, not redeclaring")
when not declared(Ogrparsedate):
  proc Ogrparsedate*(pszinput: cstring; psoutput: ptr Ogrfield_452985214;
                     noptions: cint): cint {.cdecl, importc: "OGRParseDate".}
else:
  static :
    hint("Declaration of " & "OGRParseDate" & " already exists, not redeclaring")
when not declared(Ogrgexporttogmlex):
  proc Ogrgexporttogmlex*(a0: Ogrgeometryh_452985170;
                          papszoptions: ptr ptr cschar): cstring {.cdecl,
      importc: "OGR_G_ExportToGMLEx".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToGMLEx" &
        " already exists, not redeclaring")
when not declared(Gdalrasterbandcopywholeraster):
  proc Gdalrasterbandcopywholeraster*(hsrcband: Gdalrasterbandh_452985168;
                                      hdstband: Gdalrasterbandh_452985168;
                                      constpapszoptions: ptr ptr cschar;
                                      pfnprogress: Gdalprogressfunc_452985210;
                                      pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALRasterBandCopyWholeRaster".}
else:
  static :
    hint("Declaration of " & "GDALRasterBandCopyWholeRaster" &
        " already exists, not redeclaring")
when not declared(Gdalgetpaletteinterpretation):
  proc Gdalgetpaletteinterpretation*(a0: Gdalcolortableh_452985123): Gdalpaletteinterp_452985218 {.
      cdecl, importc: "GDALGetPaletteInterpretation".}
else:
  static :
    hint("Declaration of " & "GDALGetPaletteInterpretation" &
        " already exists, not redeclaring")
when not declared(Ogrdsdestroy):
  proc Ogrdsdestroy*(a0: Ogrdatasourceh_452985093): void {.cdecl,
      importc: "OGR_DS_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_DS_Destroy" &
        " already exists, not redeclaring")
when not declared(Ogrgcreatefromfgf):
  proc Ogrgcreatefromfgf*(a0: pointer; a1: Ogrspatialreferenceh_452985129;
                          a2: ptr Ogrgeometryh_452985170; a3: cint; a4: ptr cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_CreateFromFgf".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateFromFgf" &
        " already exists, not redeclaring")
when not declared(Ogrggetdimension):
  proc Ogrggetdimension*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_GetDimension".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetDimension" &
        " already exists, not redeclaring")
when not declared(Ogrgimportfromwkb):
  proc Ogrgimportfromwkb*(a0: Ogrgeometryh_452985170; a1: pointer; a2: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_ImportFromWkb".}
else:
  static :
    hint("Declaration of " & "OGR_G_ImportFromWkb" &
        " already exists, not redeclaring")
when not declared(Gdalcomputerasterstatistics):
  proc Gdalcomputerasterstatistics*(a0: Gdalrasterbandh_452985168;
                                    bapproxok: cint; pdfmin: ptr cdouble;
                                    pdfmax: ptr cdouble; pdfmean: ptr cdouble;
                                    pdfstddev: ptr cdouble;
                                    pfnprogress: Gdalprogressfunc_452985210;
                                    pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALComputeRasterStatistics".}
else:
  static :
    hint("Declaration of " & "GDALComputeRasterStatistics" &
        " already exists, not redeclaring")
when not declared(Ogrerrnone):
  const
    Ogrerrnone* = 0          ## Generated based on /usr/include/gdal/ogr_core.h:292:9
else:
  static :
    hint("Declaration of " & "OGRERR_NONE" & " already exists, not redeclaring")
when not declared(Ogrgdestroygeometry):
  proc Ogrgdestroygeometry*(a0: Ogrgeometryh_452985170): void {.cdecl,
      importc: "OGR_G_DestroyGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_DestroyGeometry" &
        " already exists, not redeclaring")
when not declared(Ogrlgetname):
  proc Ogrlgetname*(a0: Ogrlayerh_452985133): cstring {.cdecl,
      importc: "OGR_L_GetName".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetName" &
        " already exists, not redeclaring")
when not declared(Ogrfgetdefnref):
  proc Ogrfgetdefnref*(a0: Ogrfeatureh_452985196): Ogrfeaturedefnh_452985176 {.
      cdecl, importc: "OGR_F_GetDefnRef".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetDefnRef" &
        " already exists, not redeclaring")
when not declared(Ogrffillunsetwithdefault):
  proc Ogrffillunsetwithdefault*(hfeat: Ogrfeatureh_452985196;
                                 bnotnullableonly: cint;
                                 papszoptions: ptr ptr cschar): void {.cdecl,
      importc: "OGR_F_FillUnsetWithDefault".}
else:
  static :
    hint("Declaration of " & "OGR_F_FillUnsetWithDefault" &
        " already exists, not redeclaring")
when not declared(Gdalswapwords):
  proc Gdalswapwords*(pdata: pointer; nwordsize: cint; nwordcount: cint;
                      nwordskip: cint): void {.cdecl, importc: "GDALSwapWords".}
else:
  static :
    hint("Declaration of " & "GDALSwapWords" &
        " already exists, not redeclaring")
when not declared(Gdaldestroyrasterattributetable):
  proc Gdaldestroyrasterattributetable*(a0: Gdalrasterattributetableh_452985200): void {.
      cdecl, importc: "GDALDestroyRasterAttributeTable".}
else:
  static :
    hint("Declaration of " & "GDALDestroyRasterAttributeTable" &
        " already exists, not redeclaring")
when not declared(Ogrrawfieldisunset):
  proc Ogrrawfieldisunset*(a0: ptr Ogrfield_452985214): cint {.cdecl,
      importc: "OGR_RawField_IsUnset".}
else:
  static :
    hint("Declaration of " & "OGR_RawField_IsUnset" &
        " already exists, not redeclaring")
when not declared(Ogrstgetparamstr):
  proc Ogrstgetparamstr*(hst: Ogrstyletoolh_452985131; eparam: cint;
                         bvalueisnull: ptr cint): cstring {.cdecl,
      importc: "OGR_ST_GetParamStr".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetParamStr" &
        " already exists, not redeclaring")
when not declared(Gdalgetdatatypesizebits):
  proc Gdalgetdatatypesizebits*(edatatype: Gdaldatatype_452985072): cint {.
      cdecl, importc: "GDALGetDataTypeSizeBits".}
else:
  static :
    hint("Declaration of " & "GDALGetDataTypeSizeBits" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeisinteger):
  proc Gdaldatatypeisinteger*(a0: Gdaldatatype_452985072): cint {.cdecl,
      importc: "GDALDataTypeIsInteger".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeIsInteger" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgetlayercount):
  proc Gdaldatasetgetlayercount*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALDatasetGetLayerCount".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetLayerCount" &
        " already exists, not redeclaring")
when not declared(Gdaldectodms):
  proc Gdaldectodms*(a0: cdouble; a1: cstring; a2: cint): cstring {.cdecl,
      importc: "GDALDecToDMS".}
else:
  static :
    hint("Declaration of " & "GDALDecToDMS" & " already exists, not redeclaring")
when not declared(Ogrfclone):
  proc Ogrfclone*(a0: Ogrfeatureh_452985196): Ogrfeatureh_452985196 {.cdecl,
      importc: "OGR_F_Clone".}
else:
  static :
    hint("Declaration of " & "OGR_F_Clone" & " already exists, not redeclaring")
when not declared(Ogrgismeasured):
  proc Ogrgismeasured*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_IsMeasured".}
else:
  static :
    hint("Declaration of " & "OGR_G_IsMeasured" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterbandysize):
  proc Gdalgetrasterbandysize*(a0: Gdalrasterbandh_452985168): cint {.cdecl,
      importc: "GDALGetRasterBandYSize".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterBandYSize" &
        " already exists, not redeclaring")
when not declared(Gdalofarrayblockaccess):
  const
    Gdalofarrayblockaccess* = 256 ## Generated based on /usr/include/gdal/gdal.h:502:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_ARRAY_BLOCK_ACCESS" &
        " already exists, not redeclaring")
when not declared(Ogrlresetreading):
  proc Ogrlresetreading*(a0: Ogrlayerh_452985133): void {.cdecl,
      importc: "OGR_L_ResetReading".}
else:
  static :
    hint("Declaration of " & "OGR_L_ResetReading" &
        " already exists, not redeclaring")
when not declared(Ogrfgetgeomfielddefnref):
  proc Ogrfgetgeomfielddefnref*(hfeat: Ogrfeatureh_452985196; ifield: cint): Ogrgeomfielddefnh_452985078 {.
      cdecl, importc: "OGR_F_GetGeomFieldDefnRef".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetGeomFieldDefnRef" &
        " already exists, not redeclaring")
when not declared(Ogrlsetstyletabledirectly):
  proc Ogrlsetstyletabledirectly*(a0: Ogrlayerh_452985133; a1: Ogrstyletableh_452985091): void {.
      cdecl, importc: "OGR_L_SetStyleTableDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetStyleTableDirectly" &
        " already exists, not redeclaring")
when not declared(Gdalratgetusageofcol):
  proc Gdalratgetusageofcol*(a0: Gdalrasterattributetableh_452985200; a1: cint): Gdalratfieldusage_452985103 {.
      cdecl, importc: "GDALRATGetUsageOfCol".}
else:
  static :
    hint("Declaration of " & "GDALRATGetUsageOfCol" &
        " already exists, not redeclaring")
when not declared(Ogrfdrelease):
  proc Ogrfdrelease*(a0: Ogrfeaturedefnh_452985176): void {.cdecl,
      importc: "OGR_FD_Release".}
else:
  static :
    hint("Declaration of " & "OGR_FD_Release" &
        " already exists, not redeclaring")
when not declared(Gdaldeinitgcps):
  proc Gdaldeinitgcps*(a0: cint; a1: ptr Gdalgcp_452985222): void {.cdecl,
      importc: "GDALDeinitGCPs".}
else:
  static :
    hint("Declaration of " & "GDALDeinitGCPs" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgetvirtualmem):
  proc Gdaldatasetgetvirtualmem*(hds: Gdaldataseth_452985107;
                                 erwflag: Gdalrwflag_452985089; nxoff: cint;
                                 nyoff: cint; nxsize: cint; nysize: cint;
                                 nbufxsize: cint; nbufysize: cint;
                                 ebuftype: Gdaldatatype_452985072;
                                 nbandcount: cint; panbandmap: ptr cint;
                                 npixelspace: cint; nlinespace: Gintbig_452985145;
                                 nbandspace: Gintbig_452985145;
                                 ncachesize: csize_t; npagesizehint: csize_t;
                                 bsinglethreadusage: cint;
                                 papszoptions: Cslconstlist_452985151): ptr Cplvirtualmem {.
      cdecl, importc: "GDALDatasetGetVirtualMem".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetVirtualMem" &
        " already exists, not redeclaring")
when not declared(Ogrgpolygonize):
  proc Ogrgpolygonize*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Polygonize".}
else:
  static :
    hint("Declaration of " & "OGR_G_Polygonize" &
        " already exists, not redeclaring")
when not declared(Gdalofblockaccessmask):
  const
    Gdalofblockaccessmask* = 768 ## Generated based on /usr/include/gdal/gdal.h:520:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_BLOCK_ACCESS_MASK" &
        " already exists, not redeclaring")
when not declared(Ogrfldcreate):
  proc Ogrfldcreate*(a0: cstring; a1: Ogrfieldtype_452985099): Ogrfielddefnh_452985121 {.
      cdecl, importc: "OGR_Fld_Create".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_Create" &
        " already exists, not redeclaring")
when not declared(Gdalratserializejson):
  proc Gdalratserializejson*(a0: Gdalrasterattributetableh_452985200): pointer {.
      cdecl, importc: "GDALRATSerializeJSON".}
else:
  static :
    hint("Declaration of " & "GDALRATSerializeJSON" &
        " already exists, not redeclaring")
when not declared(Ogrgcreatefromgmltree):
  proc Ogrgcreatefromgmltree*(a0: ptr Cplxmlnode_452985178): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_CreateFromGMLTree".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateFromGMLTree" &
        " already exists, not redeclaring")
when not declared(Ogrfldisignored):
  proc Ogrfldisignored*(hdefn: Ogrfielddefnh_452985121): cint {.cdecl,
      importc: "OGR_Fld_IsIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_IsIgnored" &
        " already exists, not redeclaring")
when not declared(Gdalgetcolorentrycount):
  proc Gdalgetcolorentrycount*(a0: Gdalcolortableh_452985123): cint {.cdecl,
      importc: "GDALGetColorEntryCount".}
else:
  static :
    hint("Declaration of " & "GDALGetColorEntryCount" &
        " already exists, not redeclaring")
when not declared(Ogrfsetnativemediatype):
  proc Ogrfsetnativemediatype*(a0: Ogrfeatureh_452985196; a1: cstring): void {.
      cdecl, importc: "OGR_F_SetNativeMediaType".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetNativeMediaType" &
        " already exists, not redeclaring")
when not declared(Ogrggetpoints):
  proc Ogrggetpoints*(hgeom: Ogrgeometryh_452985170; pabyx: pointer;
                      nxstride: cint; pabyy: pointer; nystride: cint;
                      pabyz: pointer; nzstride: cint): cint {.cdecl,
      importc: "OGR_G_GetPoints".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetPoints" &
        " already exists, not redeclaring")
when not declared(Gdaladdband):
  proc Gdaladdband*(hds: Gdaldataseth_452985107; etype: Gdaldatatype_452985072;
                    papszoptions: Cslconstlist_452985151): Cplerr_452985113 {.
      cdecl, importc: "GDALAddBand".}
else:
  static :
    hint("Declaration of " & "GDALAddBand" & " already exists, not redeclaring")
when not declared(Ogrrawfieldsetnull):
  proc Ogrrawfieldsetnull*(a0: ptr Ogrfield_452985214): void {.cdecl,
      importc: "OGR_RawField_SetNull".}
else:
  static :
    hint("Declaration of " & "OGR_RawField_SetNull" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeunion):
  proc Gdaldatatypeunion*(a0: Gdaldatatype_452985072; a1: Gdaldatatype_452985072): Gdaldatatype_452985072 {.
      cdecl, importc: "GDALDataTypeUnion".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeUnion" &
        " already exists, not redeclaring")
when not declared(Ogrregisterall):
  proc Ogrregisterall*(): void {.cdecl, importc: "OGRRegisterAll".}
else:
  static :
    hint("Declaration of " & "OGRRegisterAll" &
        " already exists, not redeclaring")
when not declared(Ogrglength):
  proc Ogrglength*(a0: Ogrgeometryh_452985170): cdouble {.cdecl,
      importc: "OGR_G_Length".}
else:
  static :
    hint("Declaration of " & "OGR_G_Length" & " already exists, not redeclaring")
when not declared(Ogrfdreorderfielddefns):
  proc Ogrfdreorderfielddefns*(hdefn: Ogrfeaturedefnh_452985176;
                               panmap: ptr cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_FD_ReorderFieldDefns".}
else:
  static :
    hint("Declaration of " & "OGR_FD_ReorderFieldDefns" &
        " already exists, not redeclaring")
when not declared(Gdalinitgcps):
  proc Gdalinitgcps*(a0: cint; a1: ptr Gdalgcp_452985222): void {.cdecl,
      importc: "GDALInitGCPs".}
else:
  static :
    hint("Declaration of " & "GDALInitGCPs" & " already exists, not redeclaring")
when not declared(Gdaldatasetcreatelayer):
  proc Gdaldatasetcreatelayer*(a0: Gdaldataseth_452985107; a1: cstring;
                               a2: Ogrspatialreferenceh_452985129;
                               a3: Ogrwkbgeometrytype_452985074;
                               a4: Cslconstlist_452985151): Ogrlayerh_452985133 {.
      cdecl, importc: "GDALDatasetCreateLayer".}
else:
  static :
    hint("Declaration of " & "GDALDatasetCreateLayer" &
        " already exists, not redeclaring")
when not declared(Gdalcreaterasterattributetable):
  proc Gdalcreaterasterattributetable*(): Gdalrasterattributetableh_452985200 {.
      cdecl, importc: "GDALCreateRasterAttributeTable".}
else:
  static :
    hint("Declaration of " & "GDALCreateRasterAttributeTable" &
        " already exists, not redeclaring")
when not declared(Ogrfldgettype):
  proc Ogrfldgettype*(a0: Ogrfielddefnh_452985121): Ogrfieldtype_452985099 {.
      cdecl, importc: "OGR_Fld_GetType".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetType" &
        " already exists, not redeclaring")
when not declared(Gdalallregister):
  proc Gdalallregister*(): void {.cdecl, importc: "GDALAllRegister".}
else:
  static :
    hint("Declaration of " & "GDALAllRegister" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldstringlist):
  proc Ogrfsetfieldstringlist*(a0: Ogrfeatureh_452985196; a1: cint;
                               a2: Cslconstlist_452985151): void {.cdecl,
      importc: "OGR_F_SetFieldStringList".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldStringList" &
        " already exists, not redeclaring")
when not declared(Ogrgetdriver):
  proc Ogrgetdriver*(a0: cint): Ogrsfdriverh_452985226 {.cdecl,
      importc: "OGRGetDriver".}
else:
  static :
    hint("Declaration of " & "OGRGetDriver" & " already exists, not redeclaring")
when not declared(Gdalrenamedataset):
  proc Gdalrenamedataset*(a0: Gdaldriverh_452985127; psznewname: cstring;
                          pszoldname: cstring): Cplerr_452985113 {.cdecl,
      importc: "GDALRenameDataset".}
else:
  static :
    hint("Declaration of " & "GDALRenameDataset" &
        " already exists, not redeclaring")
when not declared(Gdalsetrastercolortable):
  proc Gdalsetrastercolortable*(a0: Gdalrasterbandh_452985168;
                                a1: Gdalcolortableh_452985123): Cplerr_452985113 {.
      cdecl, importc: "GDALSetRasterColorTable".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterColorTable" &
        " already exists, not redeclaring")
when not declared(Ogrgtgetlinear):
  proc Ogrgtgetlinear*(etype: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GT_GetLinear".}
else:
  static :
    hint("Declaration of " & "OGR_GT_GetLinear" &
        " already exists, not redeclaring")
when not declared(Ogrldereference):
  proc Ogrldereference*(a0: Ogrlayerh_452985133): cint {.cdecl,
      importc: "OGR_L_Dereference".}
else:
  static :
    hint("Declaration of " & "OGR_L_Dereference" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldinteger):
  proc Ogrfsetfieldinteger*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint): void {.
      cdecl, importc: "OGR_F_SetFieldInteger".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldInteger" &
        " already exists, not redeclaring")
when not declared(Gdalratclone):
  proc Gdalratclone*(a0: Gdalrasterattributetableh_452985200): Gdalrasterattributetableh_452985200 {.
      cdecl, importc: "GDALRATClone".}
else:
  static :
    hint("Declaration of " & "GDALRATClone" & " already exists, not redeclaring")
when not declared(Gdalgetjpeg2000structure):
  proc Gdalgetjpeg2000structure*(pszfilename: cstring;
                                 papszoptions: Cslconstlist_452985151): ptr Cplxmlnode_452985178 {.
      cdecl, importc: "GDALGetJPEG2000Structure".}
else:
  static :
    hint("Declaration of " & "GDALGetJPEG2000Structure" &
        " already exists, not redeclaring")
when not declared(Ogrgdistance):
  proc Ogrgdistance*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cdouble {.
      cdecl, importc: "OGR_G_Distance".}
else:
  static :
    hint("Declaration of " & "OGR_G_Distance" &
        " already exists, not redeclaring")
when not declared(Ogrgaddgeometrydirectly):
  proc Ogrgaddgeometrydirectly*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_AddGeometryDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_G_AddGeometryDirectly" &
        " already exists, not redeclaring")
when not declared(Ogrggetpoint):
  proc Ogrggetpoint*(a0: Ogrgeometryh_452985170; ipoint: cint; a2: ptr cdouble;
                     a3: ptr cdouble; a4: ptr cdouble): void {.cdecl,
      importc: "OGR_G_GetPoint".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetPoint" &
        " already exists, not redeclaring")
when not declared(Gdalbeginasyncreader):
  proc Gdalbeginasyncreader*(hds: Gdaldataseth_452985107; nxoff: cint;
                             nyoff: cint; nxsize: cint; nysize: cint;
                             pbuf: pointer; nbufxsize: cint; nbufysize: cint;
                             ebuftype: Gdaldatatype_452985072; nbandcount: cint;
                             panbandmap: ptr cint; npixelspace: cint;
                             nlinespace: cint; nbandspace: cint;
                             papszoptions: Cslconstlist_452985151): Gdalasyncreaderh_452985166 {.
      cdecl, importc: "GDALBeginAsyncReader".}
else:
  static :
    hint("Declaration of " & "GDALBeginAsyncReader" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfielddatetimeex):
  proc Ogrfsetfielddatetimeex*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint;
                               a3: cint; a4: cint; a5: cint; a6: cint;
                               a7: cfloat; a8: cint): void {.cdecl,
      importc: "OGR_F_SetFieldDateTimeEx".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldDateTimeEx" &
        " already exists, not redeclaring")
when not declared(Gdalgetnoncomplexdatatype):
  proc Gdalgetnoncomplexdatatype*(a0: Gdaldatatype_452985072): Gdaldatatype_452985072 {.
      cdecl, importc: "GDALGetNonComplexDataType".}
else:
  static :
    hint("Declaration of " & "GDALGetNonComplexDataType" &
        " already exists, not redeclaring")
when not declared(Gdalapplygeotransform):
  proc Gdalapplygeotransform*(a0: ptr cdouble; a1: cdouble; a2: cdouble;
                              a3: ptr cdouble; a4: ptr cdouble): void {.cdecl,
      importc: "GDALApplyGeoTransform".}
else:
  static :
    hint("Declaration of " & "GDALApplyGeoTransform" &
        " already exists, not redeclaring")
when not declared(Gdalgetcolorinterpretationname):
  proc Gdalgetcolorinterpretationname*(a0: Gdalcolorinterp_452985206): cstring {.
      cdecl, importc: "GDALGetColorInterpretationName".}
else:
  static :
    hint("Declaration of " & "GDALGetColorInterpretationName" &
        " already exists, not redeclaring")
when not declared(Ogropenshared):
  proc Ogropenshared*(a0: cstring; a1: cint; a2: ptr Ogrsfdriverh_452985226): Ogrdatasourceh_452985093 {.
      cdecl, importc: "OGROpenShared".}
else:
  static :
    hint("Declaration of " & "OGROpenShared" &
        " already exists, not redeclaring")
when not declared(Gdalrasterio):
  proc Gdalrasterio*(hrband: Gdalrasterbandh_452985168; erwflag: Gdalrwflag_452985089;
                     ndsxoff: cint; ndsyoff: cint; ndsxsize: cint;
                     ndsysize: cint; pbuffer: pointer; nbxsize: cint;
                     nbysize: cint; ebdatatype: Gdaldatatype_452985072;
                     npixelspace: cint; nlinespace: cint): Cplerr_452985113 {.
      cdecl, importc: "GDALRasterIO".}
else:
  static :
    hint("Declaration of " & "GDALRasterIO" & " already exists, not redeclaring")
when not declared(Gdalbuildoverviews):
  proc Gdalbuildoverviews*(a0: Gdaldataseth_452985107; a1: cstring; a2: cint;
                           a3: ptr cint; a4: cint; a5: ptr cint;
                           a6: Gdalprogressfunc_452985210; a7: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALBuildOverviews".}
else:
  static :
    hint("Declaration of " & "GDALBuildOverviews" &
        " already exists, not redeclaring")
when not declared(Gdalgetdatatypesize):
  proc Gdalgetdatatypesize*(a0: Gdaldatatype_452985072): cint {.cdecl,
      importc: "GDALGetDataTypeSize".}
else:
  static :
    hint("Declaration of " & "GDALGetDataTypeSize" &
        " already exists, not redeclaring")
when not declared(Ogrgthasz):
  proc Ogrgthasz*(etype: Ogrwkbgeometrytype_452985074): cint {.cdecl,
      importc: "OGR_GT_HasZ".}
else:
  static :
    hint("Declaration of " & "OGR_GT_HasZ" & " already exists, not redeclaring")
when not declared(Ogrfisfieldnull):
  proc Ogrfisfieldnull*(a0: Ogrfeatureh_452985196; a1: cint): cint {.cdecl,
      importc: "OGR_F_IsFieldNull".}
else:
  static :
    hint("Declaration of " & "OGR_F_IsFieldNull" &
        " already exists, not redeclaring")
when not declared(Ogrfdestroy):
  proc Ogrfdestroy*(a0: Ogrfeatureh_452985196): void {.cdecl,
      importc: "OGR_F_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_F_Destroy" &
        " already exists, not redeclaring")
when not declared(Ogrfvalallowdifferentgeomdim):
  const
    Ogrfvalallowdifferentgeomdim* = 16 ## Generated based on /usr/include/gdal/ogr_core.h:576:9
else:
  static :
    hint("Declaration of " & "OGR_F_VAL_ALLOW_DIFFERENT_GEOM_DIM" &
        " already exists, not redeclaring")
when not declared(Gdalarlockbuffer):
  proc Gdalarlockbuffer*(hario: Gdalasyncreaderh_452985166; dftimeout: cdouble): cint {.
      cdecl, importc: "GDALARLockBuffer".}
else:
  static :
    hint("Declaration of " & "GDALARLockBuffer" &
        " already exists, not redeclaring")
when not declared(Ogrgsetcoordinatedimension):
  proc Ogrgsetcoordinatedimension*(a0: Ogrgeometryh_452985170; a1: cint): void {.
      cdecl, importc: "OGR_G_SetCoordinateDimension".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetCoordinateDimension" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetname):
  proc Ogrfdgetname*(a0: Ogrfeaturedefnh_452985176): cstring {.cdecl,
      importc: "OGR_FD_GetName".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetName" &
        " already exists, not redeclaring")
when not declared(Ogrgconvexhull):
  proc Ogrgconvexhull*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ConvexHull".}
else:
  static :
    hint("Declaration of " & "OGR_G_ConvexHull" &
        " already exists, not redeclaring")
when not declared(Ogrfddeletefielddefn):
  proc Ogrfddeletefielddefn*(hdefn: Ogrfeaturedefnh_452985176; ifield: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_FD_DeleteFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_FD_DeleteFieldDefn" &
        " already exists, not redeclaring")
when not declared(Gdalgetdatatypesizebytes):
  proc Gdalgetdatatypesizebytes*(a0: Gdaldatatype_452985072): cint {.cdecl,
      importc: "GDALGetDataTypeSizeBytes".}
else:
  static :
    hint("Declaration of " & "GDALGetDataTypeSizeBytes" &
        " already exists, not redeclaring")
when not declared(Gdalgetinternalhandle):
  proc Gdalgetinternalhandle*(a0: Gdaldataseth_452985107; a1: cstring): pointer {.
      cdecl, importc: "GDALGetInternalHandle".}
else:
  static :
    hint("Declaration of " & "GDALGetInternalHandle" &
        " already exists, not redeclaring")
when not declared(Ogrgsegmentize):
  proc Ogrgsegmentize*(hgeom: Ogrgeometryh_452985170; dfmaxlength: cdouble): void {.
      cdecl, importc: "OGR_G_Segmentize".}
else:
  static :
    hint("Declaration of " & "OGR_G_Segmentize" &
        " already exists, not redeclaring")
when not declared(Ogrgtransformto):
  proc Ogrgtransformto*(a0: Ogrgeometryh_452985170; a1: Ogrspatialreferenceh_452985129): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_TransformTo".}
else:
  static :
    hint("Declaration of " & "OGR_G_TransformTo" &
        " already exists, not redeclaring")
when not declared(Ogrgdelaunaytriangulation):
  proc Ogrgdelaunaytriangulation*(hthis: Ogrgeometryh_452985170;
                                  dftolerance: cdouble; bonlyedges: cint): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_DelaunayTriangulation".}
else:
  static :
    hint("Declaration of " & "OGR_G_DelaunayTriangulation" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterminimum):
  proc Gdalgetrasterminimum*(a0: Gdalrasterbandh_452985168; pbsuccess: ptr cint): cdouble {.
      cdecl, importc: "GDALGetRasterMinimum".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterMinimum" &
        " already exists, not redeclaring")
when not declared(Ogrlerase):
  proc Ogrlerase*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                  a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                  a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_Erase".}
else:
  static :
    hint("Declaration of " & "OGR_L_Erase" & " already exists, not redeclaring")
when not declared(Gdalflushcache):
  proc Gdalflushcache*(hds: Gdaldataseth_452985107): void {.cdecl,
      importc: "GDALFlushCache".}
else:
  static :
    hint("Declaration of " & "GDALFlushCache" &
        " already exists, not redeclaring")
when not declared(Ogrstsetparamdbl):
  proc Ogrstsetparamdbl*(hst: Ogrstyletoolh_452985131; eparam: cint;
                         dfvalue: cdouble): void {.cdecl,
      importc: "OGR_ST_SetParamDbl".}
else:
  static :
    hint("Declaration of " & "OGR_ST_SetParamDbl" &
        " already exists, not redeclaring")
when not declared(Ogrlunion):
  proc Ogrlunion*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                  a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                  a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_Union".}
else:
  static :
    hint("Declaration of " & "OGR_L_Union" & " already exists, not redeclaring")
when not declared(Ogrgissimple):
  proc Ogrgissimple*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_IsSimple".}
else:
  static :
    hint("Declaration of " & "OGR_G_IsSimple" &
        " already exists, not redeclaring")
when not declared(Ogrfgetgeomfieldref):
  proc Ogrfgetgeomfieldref*(hfeat: Ogrfeatureh_452985196; ifield: cint): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_F_GetGeomFieldRef".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetGeomFieldRef" &
        " already exists, not redeclaring")
when not declared(Gdalgetdefaulthistogram):
  proc Gdalgetdefaulthistogram*(hband: Gdalrasterbandh_452985168;
                                pdfmin: ptr cdouble; pdfmax: ptr cdouble;
                                pnbuckets: ptr cint;
                                ppanhistogram: ptr ptr cint; bforce: cint;
                                pfnprogress: Gdalprogressfunc_452985210;
                                pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALGetDefaultHistogram".}
else:
  static :
    hint("Declaration of " & "GDALGetDefaultHistogram" &
        " already exists, not redeclaring")
when not declared(Ogrgtiscurve):
  proc Ogrgtiscurve*(a0: Ogrwkbgeometrytype_452985074): cint {.cdecl,
      importc: "OGR_GT_IsCurve".}
else:
  static :
    hint("Declaration of " & "OGR_GT_IsCurve" &
        " already exists, not redeclaring")
when not declared(Ogrgetdrivercount):
  proc Ogrgetdrivercount*(): cint {.cdecl, importc: "OGRGetDriverCount".}
else:
  static :
    hint("Declaration of " & "OGRGetDriverCount" &
        " already exists, not redeclaring")
when not declared(Gdalsetgcps):
  proc Gdalsetgcps*(a0: Gdaldataseth_452985107; a1: cint; a2: ptr Gdalgcp_452985222;
                    a3: cstring): Cplerr_452985113 {.cdecl,
      importc: "GDALSetGCPs".}
else:
  static :
    hint("Declaration of " & "GDALSetGCPs" & " already exists, not redeclaring")
when not declared(Gdalcomputebandstats):
  proc Gdalcomputebandstats*(hband: Gdalrasterbandh_452985168;
                             nsamplestep: cint; pdfmean: ptr cdouble;
                             pdfstddev: ptr cdouble;
                             pfnprogress: Gdalprogressfunc_452985210;
                             pprogressdata: pointer): Cplerr_452985113 {.cdecl,
      importc: "GDALComputeBandStats".}
else:
  static :
    hint("Declaration of " & "GDALComputeBandStats" &
        " already exists, not redeclaring")
when not declared(Ogrfdaddgeomfielddefn):
  proc Ogrfdaddgeomfielddefn*(hfdefn: Ogrfeaturedefnh_452985176;
                              hgflddefn: Ogrgeomfielddefnh_452985078): void {.
      cdecl, importc: "OGR_FD_AddGeomFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_FD_AddGeomFieldDefn" &
        " already exists, not redeclaring")
when not declared(Ogrfgetnativemediatype):
  proc Ogrfgetnativemediatype*(a0: Ogrfeatureh_452985196): cstring {.cdecl,
      importc: "OGR_F_GetNativeMediaType".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetNativeMediaType" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpointszm):
  proc Ogrgsetpointszm*(hgeom: Ogrgeometryh_452985170; npointsin: cint;
                        pabyx: pointer; nxstride: cint; pabyy: pointer;
                        nystride: cint; pabyz: pointer; nzstride: cint;
                        pabym: pointer; nmstride: cint): void {.cdecl,
      importc: "OGR_G_SetPointsZM".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPointsZM" &
        " already exists, not redeclaring")
when not declared(Ogrfdsetgeometryignored):
  proc Ogrfdsetgeometryignored*(a0: Ogrfeaturedefnh_452985176; a1: cint): void {.
      cdecl, importc: "OGR_FD_SetGeometryIgnored".}
else:
  static :
    hint("Declaration of " & "OGR_FD_SetGeometryIgnored" &
        " already exists, not redeclaring")
when not declared(Ogrgtsetm):
  proc Ogrgtsetm*(etype: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GT_SetM".}
else:
  static :
    hint("Declaration of " & "OGR_GT_SetM" & " already exists, not redeclaring")
when not declared(Ogrfgetfieldasinteger64list):
  proc Ogrfgetfieldasinteger64list*(a0: Ogrfeatureh_452985196; a1: cint;
                                    a2: ptr cint): ptr Gintbig_452985145 {.
      cdecl, importc: "OGR_F_GetFieldAsInteger64List".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsInteger64List" &
        " already exists, not redeclaring")
when not declared(Ogrsmcreate):
  proc Ogrsmcreate*(hstyletable: Ogrstyletableh_452985091): Ogrstylemgrh_452985186 {.
      cdecl, importc: "OGR_SM_Create".}
else:
  static :
    hint("Declaration of " & "OGR_SM_Create" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasteroffset):
  proc Gdalgetrasteroffset*(a0: Gdalrasterbandh_452985168; pbsuccess: ptr cint): cdouble {.
      cdecl, importc: "GDALGetRasterOffset".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterOffset" &
        " already exists, not redeclaring")
when not declared(Ogrdsreference):
  proc Ogrdsreference*(a0: Ogrdatasourceh_452985093): cint {.cdecl,
      importc: "OGR_DS_Reference".}
else:
  static :
    hint("Declaration of " & "OGR_DS_Reference" &
        " already exists, not redeclaring")
when not declared(Gdalloadworldfile):
  proc Gdalloadworldfile*(a0: cstring; a1: ptr cdouble): cint {.cdecl,
      importc: "GDALLoadWorldFile".}
else:
  static :
    hint("Declaration of " & "GDALLoadWorldFile" &
        " already exists, not redeclaring")
when not declared(Ogrsminitstylestring):
  proc Ogrsminitstylestring*(hsm: Ogrstylemgrh_452985186;
                             pszstylestring: cstring): cint {.cdecl,
      importc: "OGR_SM_InitStyleString".}
else:
  static :
    hint("Declaration of " & "OGR_SM_InitStyleString" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastercount):
  proc Gdalgetrastercount*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALGetRasterCount".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterCount" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterhistogram):
  proc Gdalgetrasterhistogram*(hband: Gdalrasterbandh_452985168; dfmin: cdouble;
                               dfmax: cdouble; nbuckets: cint;
                               panhistogram: ptr cint; bincludeoutofrange: cint;
                               bapproxok: cint; pfnprogress: Gdalprogressfunc_452985210;
                               pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALGetRasterHistogram".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterHistogram" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetdefault):
  proc Ogrfldsetdefault*(hdefn: Ogrfielddefnh_452985121; a1: cstring): void {.
      cdecl, importc: "OGR_Fld_SetDefault".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetDefault" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldraw):
  proc Ogrfsetfieldraw*(a0: Ogrfeatureh_452985196; a1: cint; a2: ptr Ogrfield_452985214): void {.
      cdecl, importc: "OGR_F_SetFieldRaw".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldRaw" &
        " already exists, not redeclaring")
when not declared(Ogrbuildpolygonfromedges):
  proc Ogrbuildpolygonfromedges*(hlinesascollection: Ogrgeometryh_452985170;
                                 bbesteffort: cint; bautoclose: cint;
                                 dftolerance: cdouble; peerr: ptr Ogrerr_452985198): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGRBuildPolygonFromEdges".}
else:
  static :
    hint("Declaration of " & "OGRBuildPolygonFromEdges" &
        " already exists, not redeclaring")
when not declared(Ogrfsetstylestringdirectly):
  proc Ogrfsetstylestringdirectly*(a0: Ogrfeatureh_452985196; a1: cstring): void {.
      cdecl, importc: "OGR_F_SetStyleStringDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetStyleStringDirectly" &
        " already exists, not redeclaring")
when not declared(Ogrdropen):
  proc Ogrdropen*(a0: Ogrsfdriverh_452985226; a1: cstring; a2: cint): Ogrdatasourceh_452985093 {.
      cdecl, importc: "OGR_Dr_Open".}
else:
  static :
    hint("Declaration of " & "OGR_Dr_Open" & " already exists, not redeclaring")
when not declared(Ogrcleanupall):
  proc Ogrcleanupall*(): void {.cdecl, importc: "OGRCleanupAll".}
else:
  static :
    hint("Declaration of " & "OGRCleanupAll" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasteraccess):
  proc Gdalgetrasteraccess*(a0: Gdalrasterbandh_452985168): Gdalaccess_452985080 {.
      cdecl, importc: "GDALGetRasterAccess".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterAccess" &
        " already exists, not redeclaring")
when not declared(Gdalratsetvalueasdouble):
  proc Gdalratsetvalueasdouble*(a0: Gdalrasterattributetableh_452985200;
                                a1: cint; a2: cint; a3: cdouble): void {.cdecl,
      importc: "GDALRATSetValueAsDouble".}
else:
  static :
    hint("Declaration of " & "GDALRATSetValueAsDouble" &
        " already exists, not redeclaring")
when not declared(Ogrgexportenvelopetogmltree):
  proc Ogrgexportenvelopetogmltree*(a0: Ogrgeometryh_452985170): ptr Cplxmlnode_452985178 {.
      cdecl, importc: "OGR_G_ExportEnvelopeToGMLTree".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportEnvelopeToGMLTree" &
        " already exists, not redeclaring")
when not declared(Gdaldereferencedataset):
  proc Gdaldereferencedataset*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALDereferenceDataset".}
else:
  static :
    hint("Declaration of " & "GDALDereferenceDataset" &
        " already exists, not redeclaring")
when not declared(Ogrdsreleaseresultset):
  proc Ogrdsreleaseresultset*(a0: Ogrdatasourceh_452985093; a1: Ogrlayerh_452985133): void {.
      cdecl, importc: "OGR_DS_ReleaseResultSet".}
else:
  static :
    hint("Declaration of " & "OGR_DS_ReleaseResultSet" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasdatetimeex):
  proc Ogrfgetfieldasdatetimeex*(hfeat: Ogrfeatureh_452985196; ifield: cint;
                                 pnyear: ptr cint; pnmonth: ptr cint;
                                 pnday: ptr cint; pnhour: ptr cint;
                                 pnminute: ptr cint; pfsecond: ptr cfloat;
                                 pntzflag: ptr cint): cint {.cdecl,
      importc: "OGR_F_GetFieldAsDateTimeEx".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsDateTimeEx" &
        " already exists, not redeclaring")
when not declared(Ogrlsetattributefilter):
  proc Ogrlsetattributefilter*(a0: Ogrlayerh_452985133; a1: cstring): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_SetAttributeFilter".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetAttributeFilter" &
        " already exists, not redeclaring")
when not declared(Gdalgetasyncstatustypebyname):
  proc Gdalgetasyncstatustypebyname*(a0: cstring): Gdalasyncstatustype_452985228 {.
      cdecl, importc: "GDALGetAsyncStatusTypeByName".}
else:
  static :
    hint("Declaration of " & "GDALGetAsyncStatusTypeByName" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetreleaseresultset):
  proc Gdaldatasetreleaseresultset*(a0: Gdaldataseth_452985107; a1: Ogrlayerh_452985133): void {.
      cdecl, importc: "GDALDatasetReleaseResultSet".}
else:
  static :
    hint("Declaration of " & "GDALDatasetReleaseResultSet" &
        " already exists, not redeclaring")
when not declared(Gdalclose):
  proc Gdalclose*(a0: Gdaldataseth_452985107): void {.cdecl,
      importc: "GDALClose".}
else:
  static :
    hint("Declaration of " & "GDALClose" & " already exists, not redeclaring")
when not declared(Ogrfddeletegeomfielddefn):
  proc Ogrfddeletegeomfielddefn*(hfdefn: Ogrfeaturedefnh_452985176;
                                 igeomfield: cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_FD_DeleteGeomFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_FD_DeleteGeomFieldDefn" &
        " already exists, not redeclaring")
when not declared(Ogrlsetignoredfields):
  proc Ogrlsetignoredfields*(a0: Ogrlayerh_452985133; a1: ptr ptr cschar): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_SetIgnoredFields".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetIgnoredFields" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterbandxsize):
  proc Gdalgetrasterbandxsize*(a0: Gdalrasterbandh_452985168): cint {.cdecl,
      importc: "GDALGetRasterBandXSize".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterBandXSize" &
        " already exists, not redeclaring")
when not declared(Ogrerrinvalidhandle):
  const
    Ogrerrinvalidhandle* = 8 ## Generated based on /usr/include/gdal/ogr_core.h:300:9
else:
  static :
    hint("Declaration of " & "OGRERR_INVALID_HANDLE" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterysize):
  proc Gdalgetrasterysize*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALGetRasterYSize".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterYSize" &
        " already exists, not redeclaring")
when not declared(Ogrstsetparamnum):
  proc Ogrstsetparamnum*(hst: Ogrstyletoolh_452985131; eparam: cint;
                         nvalue: cint): void {.cdecl,
      importc: "OGR_ST_SetParamNum".}
else:
  static :
    hint("Declaration of " & "OGR_ST_SetParamNum" &
        " already exists, not redeclaring")
when not declared(Ogrggetenvelope3d):
  proc Ogrggetenvelope3d*(a0: Ogrgeometryh_452985170; a1: ptr Ogrenvelope3d_452985212): void {.
      cdecl, importc: "OGR_G_GetEnvelope3D".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetEnvelope3D" &
        " already exists, not redeclaring")
when not declared(Ogrggetlineargeometry):
  proc Ogrggetlineargeometry*(hgeom: Ogrgeometryh_452985170;
                              dfmaxanglestepsizedegrees: cdouble;
                              papszoptions: ptr ptr cschar): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_GetLinearGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetLinearGeometry" &
        " already exists, not redeclaring")
when not declared(Ogrsmdestroy):
  proc Ogrsmdestroy*(hsm: Ogrstylemgrh_452985186): void {.cdecl,
      importc: "OGR_SM_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_SM_Destroy" &
        " already exists, not redeclaring")
when not declared(Ogrunsetmarker):
  const
    Ogrunsetmarker* = -21121 ## Generated based on /usr/include/gdal/ogr_core.h:665:9
else:
  static :
    hint("Declaration of " & "OGRUnsetMarker" &
        " already exists, not redeclaring")
when not declared(Ogrfsetgeometrydirectly):
  proc Ogrfsetgeometrydirectly*(a0: Ogrfeatureh_452985196; a1: Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_F_SetGeometryDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetGeometryDirectly" &
        " already exists, not redeclaring")
when not declared(Gdaldeleterasternodatavalue):
  proc Gdaldeleterasternodatavalue*(a0: Gdalrasterbandh_452985168): Cplerr_452985113 {.
      cdecl, importc: "GDALDeleteRasterNoDataValue".}
else:
  static :
    hint("Declaration of " & "GDALDeleteRasterNoDataValue" &
        " already exists, not redeclaring")
when not declared(Gdalratsetlinearbinning):
  proc Gdalratsetlinearbinning*(a0: Gdalrasterattributetableh_452985200;
                                a1: cdouble; a2: cdouble): Cplerr_452985113 {.
      cdecl, importc: "GDALRATSetLinearBinning".}
else:
  static :
    hint("Declaration of " & "GDALRATSetLinearBinning" &
        " already exists, not redeclaring")
when not declared(Ogrfsetnativedata):
  proc Ogrfsetnativedata*(a0: Ogrfeatureh_452985196; a1: cstring): void {.cdecl,
      importc: "OGR_F_SetNativeData".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetNativeData" &
        " already exists, not redeclaring")
when not declared(Gdalgetmetadataitem):
  proc Gdalgetmetadataitem*(a0: Gdalmajorobjecth_452985125; a1: cstring;
                            a2: cstring): cstring {.cdecl,
      importc: "GDALGetMetadataItem".}
else:
  static :
    hint("Declaration of " & "GDALGetMetadataItem" &
        " already exists, not redeclaring")
when not declared(Gdalcreatecolortable):
  proc Gdalcreatecolortable*(a0: Gdalpaletteinterp_452985218): Gdalcolortableh_452985123 {.
      cdecl, importc: "GDALCreateColorTable".}
else:
  static :
    hint("Declaration of " & "GDALCreateColorTable" &
        " already exists, not redeclaring")
when not declared(Gdalgetactualblocksize):
  proc Gdalgetactualblocksize*(a0: Gdalrasterbandh_452985168; nxblockoff: cint;
                               nyblockoff: cint; pnxvalid: ptr cint;
                               pnyvalid: ptr cint): Cplerr_452985113 {.cdecl,
      importc: "GDALGetActualBlockSize".}
else:
  static :
    hint("Declaration of " & "GDALGetActualBlockSize" &
        " already exists, not redeclaring")
when not declared(Gdalofhashsetblockaccess):
  const
    Gdalofhashsetblockaccess* = 512 ## Generated based on /usr/include/gdal/gdal.h:512:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_HASHSET_BLOCK_ACCESS" &
        " already exists, not redeclaring")
when not declared(Ogrgarea):
  proc Ogrgarea*(a0: Ogrgeometryh_452985170): cdouble {.cdecl,
      importc: "OGR_G_Area".}
else:
  static :
    hint("Declaration of " & "OGR_G_Area" & " already exists, not redeclaring")
when not declared(Gmfallvalid):
  const
    Gmfallvalid* = 1         ## Generated based on /usr/include/gdal/gdal.h:909:9
else:
  static :
    hint("Declaration of " & "GMF_ALL_VALID" &
        " already exists, not redeclaring")
when not declared(Ogrgaddpoint):
  proc Ogrgaddpoint*(a0: Ogrgeometryh_452985170; a1: cdouble; a2: cdouble;
                     a3: cdouble): void {.cdecl, importc: "OGR_G_AddPoint".}
else:
  static :
    hint("Declaration of " & "OGR_G_AddPoint" &
        " already exists, not redeclaring")
when not declared(Gdaldectopackeddms):
  proc Gdaldectopackeddms*(a0: cdouble): cdouble {.cdecl,
      importc: "GDALDecToPackedDMS".}
else:
  static :
    hint("Declaration of " & "GDALDecToPackedDMS" &
        " already exists, not redeclaring")
when not declared(Gdalgetcacheused):
  proc Gdalgetcacheused*(): cint {.cdecl, importc: "GDALGetCacheUsed".}
else:
  static :
    hint("Declaration of " & "GDALGetCacheUsed" &
        " already exists, not redeclaring")
when not declared(Gdalgetgcps):
  proc Gdalgetgcps*(a0: Gdaldataseth_452985107): ptr Gdalgcp_452985222 {.cdecl,
      importc: "GDALGetGCPs".}
else:
  static :
    hint("Declaration of " & "GDALGetGCPs" & " already exists, not redeclaring")
when not declared(Gdalofverboseerror):
  const
    Gdalofverboseerror* = 64 ## Generated based on /usr/include/gdal/gdal.h:473:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_VERBOSE_ERROR" &
        " already exists, not redeclaring")
when not declared(Gdalgetgcpspatialref):
  proc Gdalgetgcpspatialref*(a0: Gdaldataseth_452985107): Ogrspatialreferenceh_452985129 {.
      cdecl, importc: "GDALGetGCPSpatialRef".}
else:
  static :
    hint("Declaration of " & "GDALGetGCPSpatialRef" &
        " already exists, not redeclaring")
when not declared(Ogrgetnonlineargeometriesenabledflag):
  proc Ogrgetnonlineargeometriesenabledflag*(): cint {.cdecl,
      importc: "OGRGetNonLinearGeometriesEnabledFlag".}
else:
  static :
    hint("Declaration of " & "OGRGetNonLinearGeometriesEnabledFlag" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetsubtype):
  proc Ogrfldsetsubtype*(a0: Ogrfielddefnh_452985121; a1: Ogrfieldsubtype_452985101): void {.
      cdecl, importc: "OGR_Fld_SetSubType".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetSubType" &
        " already exists, not redeclaring")
when not declared(Gdalgetdefaulthistogramex):
  proc Gdalgetdefaulthistogramex*(hband: Gdalrasterbandh_452985168;
                                  pdfmin: ptr cdouble; pdfmax: ptr cdouble;
                                  pnbuckets: ptr cint;
                                  ppanhistogram: ptr ptr Guintbig_452985216;
                                  bforce: cint; pfnprogress: Gdalprogressfunc_452985210;
                                  pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALGetDefaultHistogramEx".}
else:
  static :
    hint("Declaration of " & "GDALGetDefaultHistogramEx" &
        " already exists, not redeclaring")
when not declared(Ogrstsetparamstr):
  proc Ogrstsetparamstr*(hst: Ogrstyletoolh_452985131; eparam: cint;
                         pszvalue: cstring): void {.cdecl,
      importc: "OGR_ST_SetParamStr".}
else:
  static :
    hint("Declaration of " & "OGR_ST_SetParamStr" &
        " already exists, not redeclaring")
when not declared(Ogrerrfailure):
  const
    Ogrerrfailure* = 6       ## Generated based on /usr/include/gdal/ogr_core.h:298:9
else:
  static :
    hint("Declaration of " & "OGRERR_FAILURE" &
        " already exists, not redeclaring")
when not declared(Gdalcreatedriver):
  proc Gdalcreatedriver*(): Gdaldriverh_452985127 {.cdecl,
      importc: "GDALCreateDriver".}
else:
  static :
    hint("Declaration of " & "GDALCreateDriver" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgetnextfeature):
  proc Gdaldatasetgetnextfeature*(hds: Gdaldataseth_452985107;
                                  phbelonginglayer: ptr Ogrlayerh_452985133;
                                  pdfprogresspct: ptr cdouble;
                                  pfnprogress: Gdalprogressfunc_452985210;
                                  pprogressdata: pointer): Ogrfeatureh_452985196 {.
      cdecl, importc: "GDALDatasetGetNextFeature".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetNextFeature" &
        " already exists, not redeclaring")
when not declared(Gdalcopywords):
  proc Gdalcopywords*(psrcdata: pointer; esrctype: Gdaldatatype_452985072;
                      nsrcpixeloffset: cint; pdstdata: pointer;
                      edsttype: Gdaldatatype_452985072; ndstpixeloffset: cint;
                      nwordcount: cint): void {.cdecl, importc: "GDALCopyWords".}
else:
  static :
    hint("Declaration of " & "GDALCopyWords" &
        " already exists, not redeclaring")
when not declared(Gdalregenerateoverviews):
  proc Gdalregenerateoverviews*(hsrcband: Gdalrasterbandh_452985168;
                                noverviewcount: cint;
                                pahoverviewbands: ptr Gdalrasterbandh_452985168;
                                pszresampling: cstring;
                                pfnprogress: Gdalprogressfunc_452985210;
                                pprogressdata: pointer): Cplerr_452985113 {.
      cdecl, importc: "GDALRegenerateOverviews".}
else:
  static :
    hint("Declaration of " & "GDALRegenerateOverviews" &
        " already exists, not redeclaring")
when not declared(Ogrgunioncascaded):
  proc Ogrgunioncascaded*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_UnionCascaded".}
else:
  static :
    hint("Declaration of " & "OGR_G_UnionCascaded" &
        " already exists, not redeclaring")
when not declared(Ogrfsetstyletabledirectly):
  proc Ogrfsetstyletabledirectly*(a0: Ogrfeatureh_452985196; a1: Ogrstyletableh_452985091): void {.
      cdecl, importc: "OGR_F_SetStyleTableDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetStyleTableDirectly" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldnull):
  proc Ogrfsetfieldnull*(a0: Ogrfeatureh_452985196; a1: cint): void {.cdecl,
      importc: "OGR_F_SetFieldNull".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldNull" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasdouble):
  proc Ogrfgetfieldasdouble*(a0: Ogrfeatureh_452985196; a1: cint): cdouble {.
      cdecl, importc: "OGR_F_GetFieldAsDouble".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsDouble" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastercolortable):
  proc Gdalgetrastercolortable*(a0: Gdalrasterbandh_452985168): Gdalcolortableh_452985123 {.
      cdecl, importc: "GDALGetRasterColorTable".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterColorTable" &
        " already exists, not redeclaring")
when not declared(Ogrlclip):
  proc Ogrlclip*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                 a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                 a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_Clip".}
else:
  static :
    hint("Declaration of " & "OGR_L_Clip" & " already exists, not redeclaring")
when not declared(Gdalratgetcolumncount):
  proc Gdalratgetcolumncount*(a0: Gdalrasterattributetableh_452985200): cint {.
      cdecl, importc: "GDALRATGetColumnCount".}
else:
  static :
    hint("Declaration of " & "GDALRATGetColumnCount" &
        " already exists, not redeclaring")
when not declared(Ogrggetboundary):
  proc Ogrggetboundary*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_GetBoundary".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetBoundary" &
        " already exists, not redeclaring")
when not declared(Gdalgetbanddataset):
  proc Gdalgetbanddataset*(a0: Gdalrasterbandh_452985168): Gdaldataseth_452985107 {.
      cdecl, importc: "GDALGetBandDataset".}
else:
  static :
    hint("Declaration of " & "GDALGetBandDataset" &
        " already exists, not redeclaring")
when not declared(Ogrfgetgeomfieldcount):
  proc Ogrfgetgeomfieldcount*(hfeat: Ogrfeatureh_452985196): cint {.cdecl,
      importc: "OGR_F_GetGeomFieldCount".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetGeomFieldCount" &
        " already exists, not redeclaring")
when not declared(Ogrdssynctodisk):
  proc Ogrdssynctodisk*(a0: Ogrdatasourceh_452985093): Ogrerr_452985198 {.cdecl,
      importc: "OGR_DS_SyncToDisk".}
else:
  static :
    hint("Declaration of " & "OGR_DS_SyncToDisk" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgetlayerbyname):
  proc Gdaldatasetgetlayerbyname*(a0: Gdaldataseth_452985107; a1: cstring): Ogrlayerh_452985133 {.
      cdecl, importc: "GDALDatasetGetLayerByName".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetLayerByName" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetlayerbyname):
  proc Ogrdsgetlayerbyname*(a0: Ogrdatasourceh_452985093; a1: cstring): Ogrlayerh_452985133 {.
      cdecl, importc: "OGR_DS_GetLayerByName".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetLayerByName" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfielddoublelist):
  proc Ogrfsetfielddoublelist*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint;
                               a3: ptr cdouble): void {.cdecl,
      importc: "OGR_F_SetFieldDoubleList".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldDoubleList" &
        " already exists, not redeclaring")
when not declared(Ogrgimportfromwkt):
  proc Ogrgimportfromwkt*(a0: Ogrgeometryh_452985170; a1: ptr ptr cschar): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_ImportFromWkt".}
else:
  static :
    hint("Declaration of " & "OGR_G_ImportFromWkt" &
        " already exists, not redeclaring")
when not declared(Ogrgcrosses):
  proc Ogrgcrosses*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Crosses".}
else:
  static :
    hint("Declaration of " & "OGR_G_Crosses" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetgeomtype):
  proc Ogrfdgetgeomtype*(a0: Ogrfeaturedefnh_452985176): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_FD_GetGeomType".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetGeomType" &
        " already exists, not redeclaring")
when not declared(Gdalratgetcolofusage):
  proc Gdalratgetcolofusage*(a0: Gdalrasterattributetableh_452985200;
                             a1: Gdalratfieldusage_452985103): cint {.cdecl,
      importc: "GDALRATGetColOfUsage".}
else:
  static :
    hint("Declaration of " & "GDALRATGetColOfUsage" &
        " already exists, not redeclaring")
when not declared(Ogrgfldsetnullable):
  proc Ogrgfldsetnullable*(hdefn: Ogrgeomfielddefnh_452985078; a1: cint): void {.
      cdecl, importc: "OGR_GFld_SetNullable".}
else:
  static :
    hint("Declaration of " & "OGR_GFld_SetNullable" &
        " already exists, not redeclaring")
when not declared(Ogrfgetrawfieldref):
  proc Ogrfgetrawfieldref*(a0: Ogrfeatureh_452985196; a1: cint): ptr Ogrfield_452985214 {.
      cdecl, importc: "OGR_F_GetRawFieldRef".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetRawFieldRef" &
        " already exists, not redeclaring")
when not declared(Ogrerrunsupportedsrs):
  const
    Ogrerrunsupportedsrs* = 7 ## Generated based on /usr/include/gdal/ogr_core.h:299:9
else:
  static :
    hint("Declaration of " & "OGRERR_UNSUPPORTED_SRS" &
        " already exists, not redeclaring")
when not declared(Ogrgtransform):
  proc Ogrgtransform*(a0: Ogrgeometryh_452985170;
                      a1: Ogrcoordinatetransformationh_452985115): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_Transform".}
else:
  static :
    hint("Declaration of " & "OGR_G_Transform" &
        " already exists, not redeclaring")
when not declared(Ogrgintersection):
  proc Ogrgintersection*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Intersection".}
else:
  static :
    hint("Declaration of " & "OGR_G_Intersection" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttokml):
  proc Ogrgexporttokml*(a0: Ogrgeometryh_452985170; pszaltitudemode: cstring): cstring {.
      cdecl, importc: "OGR_G_ExportToKML".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToKML" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfrom):
  proc Ogrfsetfrom*(a0: Ogrfeatureh_452985196; a1: Ogrfeatureh_452985196;
                    a2: cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_F_SetFrom".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFrom" &
        " already exists, not redeclaring")
when not declared(Gdalratgetnameofcol):
  proc Gdalratgetnameofcol*(a0: Gdalrasterattributetableh_452985200; a1: cint): cstring {.
      cdecl, importc: "GDALRATGetNameOfCol".}
else:
  static :
    hint("Declaration of " & "GDALRATGetNameOfCol" &
        " already exists, not redeclaring")
when not declared(Ogrlsetspatialfilter):
  proc Ogrlsetspatialfilter*(a0: Ogrlayerh_452985133; a1: Ogrgeometryh_452985170): void {.
      cdecl, importc: "OGR_L_SetSpatialFilter".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetSpatialFilter" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetgeomfielddefn):
  proc Ogrfdgetgeomfielddefn*(hfdefn: Ogrfeaturedefnh_452985176; i: cint): Ogrgeomfielddefnh_452985078 {.
      cdecl, importc: "OGR_FD_GetGeomFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetGeomFieldDefn" &
        " already exists, not redeclaring")
when not declared(Gdalgetoverview):
  proc Gdalgetoverview*(a0: Gdalrasterbandh_452985168; a1: cint): Gdalrasterbandh_452985168 {.
      cdecl, importc: "GDALGetOverview".}
else:
  static :
    hint("Declaration of " & "GDALGetOverview" &
        " already exists, not redeclaring")
when not declared(Gdaldestroy):
  proc Gdaldestroy*(): void {.cdecl, importc: "GDALDestroy".}
else:
  static :
    hint("Declaration of " & "GDALDestroy" & " already exists, not redeclaring")
when not declared(Ogrgunion):
  proc Ogrgunion*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Union".}
else:
  static :
    hint("Declaration of " & "OGR_G_Union" & " already exists, not redeclaring")
when not declared(Ogrfldgetprecision):
  proc Ogrfldgetprecision*(a0: Ogrfielddefnh_452985121): cint {.cdecl,
      importc: "OGR_Fld_GetPrecision".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_GetPrecision" &
        " already exists, not redeclaring")
when not declared(Ogrerrnonexistingfeature):
  const
    Ogrerrnonexistingfeature* = 9 ## Generated based on /usr/include/gdal/ogr_core.h:301:9
else:
  static :
    hint("Declaration of " & "OGRERR_NON_EXISTING_FEATURE" &
        " already exists, not redeclaring")
when not declared(Ogrsetgeneratedb2v72byteorder):
  proc Ogrsetgeneratedb2v72byteorder*(bgeneratedb2v72byteorder: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGRSetGenerate_DB2_V72_BYTE_ORDER".}
else:
  static :
    hint("Declaration of " & "OGRSetGenerate_DB2_V72_BYTE_ORDER" &
        " already exists, not redeclaring")
when not declared(Gdalsetdefaultrat):
  proc Gdalsetdefaultrat*(a0: Gdalrasterbandh_452985168;
                          a1: Gdalrasterattributetableh_452985200): Cplerr_452985113 {.
      cdecl, importc: "GDALSetDefaultRAT".}
else:
  static :
    hint("Declaration of " & "GDALSetDefaultRAT" &
        " already exists, not redeclaring")
when not declared(Ogrgsetpointm):
  proc Ogrgsetpointm*(a0: Ogrgeometryh_452985170; ipoint: cint; a2: cdouble;
                      a3: cdouble; a4: cdouble): void {.cdecl,
      importc: "OGR_G_SetPointM".}
else:
  static :
    hint("Declaration of " & "OGR_G_SetPointM" &
        " already exists, not redeclaring")
when not declared(Gdalgetdrivercreationoptionlist):
  proc Gdalgetdrivercreationoptionlist*(a0: Gdaldriverh_452985127): cstring {.
      cdecl, importc: "GDALGetDriverCreationOptionList".}
else:
  static :
    hint("Declaration of " & "GDALGetDriverCreationOptionList" &
        " already exists, not redeclaring")
when not declared(Gdalratcreatecolumn):
  proc Gdalratcreatecolumn*(a0: Gdalrasterattributetableh_452985200;
                            a1: cstring; a2: Gdalratfieldtype_452985182;
                            a3: Gdalratfieldusage_452985103): Cplerr_452985113 {.
      cdecl, importc: "GDALRATCreateColumn".}
else:
  static :
    hint("Declaration of " & "GDALRATCreateColumn" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttogmltree):
  proc Ogrgexporttogmltree*(a0: Ogrgeometryh_452985170): ptr Cplxmlnode_452985178 {.
      cdecl, importc: "OGR_G_ExportToGMLTree".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToGMLTree" &
        " already exists, not redeclaring")
when not declared(Ogrgisvalid):
  proc Ogrgisvalid*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_IsValid".}
else:
  static :
    hint("Declaration of " & "OGR_G_IsValid" &
        " already exists, not redeclaring")
when not declared(Ogrgaddpoint2d):
  proc Ogrgaddpoint2d*(a0: Ogrgeometryh_452985170; a1: cdouble; a2: cdouble): void {.
      cdecl, importc: "OGR_G_AddPoint_2D".}
else:
  static :
    hint("Declaration of " & "OGR_G_AddPoint_2D" &
        " already exists, not redeclaring")
when not declared(Ogrgisempty):
  proc Ogrgisempty*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_IsEmpty".}
else:
  static :
    hint("Declaration of " & "OGR_G_IsEmpty" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetsummaryrefcount):
  proc Ogrdsgetsummaryrefcount*(a0: Ogrdatasourceh_452985093): cint {.cdecl,
      importc: "OGR_DS_GetSummaryRefCount".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetSummaryRefCount" &
        " already exists, not redeclaring")
when not declared(Gdalduplicategcps):
  proc Gdalduplicategcps*(a0: cint; a1: ptr Gdalgcp_452985222): ptr Gdalgcp_452985222 {.
      cdecl, importc: "GDALDuplicateGCPs".}
else:
  static :
    hint("Declaration of " & "GDALDuplicateGCPs" &
        " already exists, not redeclaring")
when not declared(Ogrggetcoordinatedimension):
  proc Ogrggetcoordinatedimension*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_GetCoordinateDimension".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetCoordinateDimension" &
        " already exists, not redeclaring")
when not declared(Ogrstgetunit):
  proc Ogrstgetunit*(hst: Ogrstyletoolh_452985131): Ogrstunitid_452985194 {.
      cdecl, importc: "OGR_ST_GetUnit".}
else:
  static :
    hint("Declaration of " & "OGR_ST_GetUnit" &
        " already exists, not redeclaring")
when not declared(Gdalreadtabfile):
  proc Gdalreadtabfile*(a0: cstring; a1: ptr cdouble; a2: ptr ptr cschar;
                        a3: ptr cint; a4: ptr ptr Gdalgcp_452985222): cint {.
      cdecl, importc: "GDALReadTabFile".}
else:
  static :
    hint("Declaration of " & "GDALReadTabFile" &
        " already exists, not redeclaring")
when not declared(Gdalloadtabfile):
  proc Gdalloadtabfile*(a0: cstring; a1: ptr cdouble; a2: ptr ptr cschar;
                        a3: ptr cint; a4: ptr ptr Gdalgcp_452985222): cint {.
      cdecl, importc: "GDALLoadTabFile".}
else:
  static :
    hint("Declaration of " & "GDALLoadTabFile" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetname):
  proc Ogrdsgetname*(a0: Ogrdatasourceh_452985093): cstring {.cdecl,
      importc: "OGR_DS_GetName".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetName" &
        " already exists, not redeclaring")
when not declared(Ogrgmakevalid):
  proc Ogrgmakevalid*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_MakeValid".}
else:
  static :
    hint("Declaration of " & "OGR_G_MakeValid" &
        " already exists, not redeclaring")
when not declared(Ogrgtissurface):
  proc Ogrgtissurface*(a0: Ogrwkbgeometrytype_452985074): cint {.cdecl,
      importc: "OGR_GT_IsSurface".}
else:
  static :
    hint("Declaration of " & "OGR_GT_IsSurface" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttojsonex):
  proc Ogrgexporttojsonex*(a0: Ogrgeometryh_452985170;
                           papszoptions: ptr ptr cschar): cstring {.cdecl,
      importc: "OGR_G_ExportToJsonEx".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToJsonEx" &
        " already exists, not redeclaring")
when not declared(Ogrdsdereference):
  proc Ogrdsdereference*(a0: Ogrdatasourceh_452985093): cint {.cdecl,
      importc: "OGR_DS_Dereference".}
else:
  static :
    hint("Declaration of " & "OGR_DS_Dereference" &
        " already exists, not redeclaring")
when not declared(Ogrgtsetz):
  proc Ogrgtsetz*(etype: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GT_SetZ".}
else:
  static :
    hint("Declaration of " & "OGR_GT_SetZ" & " already exists, not redeclaring")
when not declared(Gdalofdefaultblockaccess):
  const
    Gdalofdefaultblockaccess* = 0 ## Generated based on /usr/include/gdal/gdal.h:492:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_DEFAULT_BLOCK_ACCESS" &
        " already exists, not redeclaring")
when not declared(Ogrgdisjoint):
  proc Ogrgdisjoint*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Disjoint".}
else:
  static :
    hint("Declaration of " & "OGR_G_Disjoint" &
        " already exists, not redeclaring")
when not declared(Ogrgset3d):
  proc Ogrgset3d*(a0: Ogrgeometryh_452985170; a1: cint): void {.cdecl,
      importc: "OGR_G_Set3D".}
else:
  static :
    hint("Declaration of " & "OGR_G_Set3D" & " already exists, not redeclaring")
when not declared(Ogrdscreatelayer):
  proc Ogrdscreatelayer*(a0: Ogrdatasourceh_452985093; a1: cstring;
                         a2: Ogrspatialreferenceh_452985129;
                         a3: Ogrwkbgeometrytype_452985074; a4: ptr ptr cschar): Ogrlayerh_452985133 {.
      cdecl, importc: "OGR_DS_CreateLayer".}
else:
  static :
    hint("Declaration of " & "OGR_DS_CreateLayer" &
        " already exists, not redeclaring")
when not declared(Gdalsetgeotransform):
  proc Gdalsetgeotransform*(a0: Gdaldataseth_452985107; a1: ptr cdouble): Cplerr_452985113 {.
      cdecl, importc: "GDALSetGeoTransform".}
else:
  static :
    hint("Declaration of " & "GDALSetGeoTransform" &
        " already exists, not redeclaring")
when not declared(Ogrfisfieldsetandnotnull):
  proc Ogrfisfieldsetandnotnull*(a0: Ogrfeatureh_452985196; a1: cint): cint {.
      cdecl, importc: "OGR_F_IsFieldSetAndNotNull".}
else:
  static :
    hint("Declaration of " & "OGR_F_IsFieldSetAndNotNull" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeisconversionlossy):
  proc Gdaldatatypeisconversionlossy*(etypefrom: Gdaldatatype_452985072;
                                      etypeto: Gdaldatatype_452985072): cint {.
      cdecl, importc: "GDALDataTypeIsConversionLossy".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeIsConversionLossy" &
        " already exists, not redeclaring")
when not declared(Gdalgetdriverlongname):
  proc Gdalgetdriverlongname*(a0: Gdaldriverh_452985127): cstring {.cdecl,
      importc: "GDALGetDriverLongName".}
else:
  static :
    hint("Declaration of " & "GDALGetDriverLongName" &
        " already exists, not redeclaring")
when not declared(Ogrmergegeometrytypesex):
  proc Ogrmergegeometrytypesex*(emain: Ogrwkbgeometrytype_452985074;
                                eextra: Ogrwkbgeometrytype_452985074;
                                ballowpromotingtocurves: cint): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGRMergeGeometryTypesEx".}
else:
  static :
    hint("Declaration of " & "OGRMergeGeometryTypesEx" &
        " already exists, not redeclaring")
when not declared(Ogrfsetgeomfielddirectly):
  proc Ogrfsetgeomfielddirectly*(hfeat: Ogrfeatureh_452985196; ifield: cint;
                                 hgeom: Ogrgeometryh_452985170): Ogrerr_452985198 {.
      cdecl, importc: "OGR_F_SetGeomFieldDirectly".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetGeomFieldDirectly" &
        " already exists, not redeclaring")
when not declared(Gdalgcpstogeotransform):
  proc Gdalgcpstogeotransform*(ngcpcount: cint; pasgcps: ptr Gdalgcp_452985222;
                               padfgeotransform: ptr cdouble; bapproxok: cint): cint {.
      cdecl, importc: "GDALGCPsToGeoTransform".}
else:
  static :
    hint("Declaration of " & "GDALGCPsToGeoTransform" &
        " already exists, not redeclaring")
when not declared(Gdalsetrasterunittype):
  proc Gdalsetrasterunittype*(hband: Gdalrasterbandh_452985168;
                              psznewvalue: cstring): Cplerr_452985113 {.cdecl,
      importc: "GDALSetRasterUnitType".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterUnitType" &
        " already exists, not redeclaring")
when not declared(Gdaldatatypeunionwithvalue):
  proc Gdaldatatypeunionwithvalue*(edt: Gdaldatatype_452985072; dvalue: cdouble;
                                   bcomplex: cint): Gdaldatatype_452985072 {.
      cdecl, importc: "GDALDataTypeUnionWithValue".}
else:
  static :
    hint("Declaration of " & "GDALDataTypeUnionWithValue" &
        " already exists, not redeclaring")
when not declared(Ogrggetcurvegeometry):
  proc Ogrggetcurvegeometry*(hgeom: Ogrgeometryh_452985170;
                             papszoptions: ptr ptr cschar): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_GetCurveGeometry".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetCurveGeometry" &
        " already exists, not redeclaring")
when not declared(Ogrlalterfielddefn):
  proc Ogrlalterfielddefn*(a0: Ogrlayerh_452985133; ifield: cint;
                           hnewfielddefn: Ogrfielddefnh_452985121; nflags: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_AlterFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_L_AlterFieldDefn" &
        " already exists, not redeclaring")
when not declared(Gdalgetrastercolorinterpretation):
  proc Gdalgetrastercolorinterpretation*(a0: Gdalrasterbandh_452985168): Gdalcolorinterp_452985206 {.
      cdecl, importc: "GDALGetRasterColorInterpretation".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterColorInterpretation" &
        " already exists, not redeclaring")
when not declared(Ogrlcreatefield):
  proc Ogrlcreatefield*(a0: Ogrlayerh_452985133; a1: Ogrfielddefnh_452985121;
                        a2: cint): Ogrerr_452985198 {.cdecl,
      importc: "OGR_L_CreateField".}
else:
  static :
    hint("Declaration of " & "OGR_L_CreateField" &
        " already exists, not redeclaring")
when not declared(Gdalarunlockbuffer):
  proc Gdalarunlockbuffer*(hario: Gdalasyncreaderh_452985166): void {.cdecl,
      importc: "GDALARUnlockBuffer".}
else:
  static :
    hint("Declaration of " & "GDALARUnlockBuffer" &
        " already exists, not redeclaring")
when not declared(Gdalgetrandomrastersample):
  proc Gdalgetrandomrastersample*(a0: Gdalrasterbandh_452985168; a1: cint;
                                  a2: ptr cfloat): cint {.cdecl,
      importc: "GDALGetRandomRasterSample".}
else:
  static :
    hint("Declaration of " & "GDALGetRandomRasterSample" &
        " already exists, not redeclaring")
when not declared(Gdalloadozimapfile):
  proc Gdalloadozimapfile*(a0: cstring; a1: ptr cdouble; a2: ptr ptr cschar;
                           a3: ptr cint; a4: ptr ptr Gdalgcp_452985222): cint {.
      cdecl, importc: "GDALLoadOziMapFile".}
else:
  static :
    hint("Declaration of " & "GDALLoadOziMapFile" &
        " already exists, not redeclaring")
when not declared(Ogrgetgeneratedb2v72byteorder):
  proc Ogrgetgeneratedb2v72byteorder*(): cint {.cdecl,
      importc: "OGRGetGenerate_DB2_V72_BYTE_ORDER".}
else:
  static :
    hint("Declaration of " & "OGRGetGenerate_DB2_V72_BYTE_ORDER" &
        " already exists, not redeclaring")
when not declared(Ogrgsymdifference):
  proc Ogrgsymdifference*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_SymDifference".}
else:
  static :
    hint("Declaration of " & "OGR_G_SymDifference" &
        " already exists, not redeclaring")
when not declared(Ogrstblgetnextstyle):
  proc Ogrstblgetnextstyle*(hstyletable: Ogrstyletableh_452985091): cstring {.
      cdecl, importc: "OGR_STBL_GetNextStyle".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_GetNextStyle" &
        " already exists, not redeclaring")
when not declared(Ogrgetfieldsubtypename):
  proc Ogrgetfieldsubtypename*(a0: Ogrfieldsubtype_452985101): cstring {.cdecl,
      importc: "OGR_GetFieldSubTypeName".}
else:
  static :
    hint("Declaration of " & "OGR_GetFieldSubTypeName" &
        " already exists, not redeclaring")
when not declared(Ogrgequal):
  proc Ogrgequal*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Equal".}
else:
  static :
    hint("Declaration of " & "OGR_G_Equal" & " already exists, not redeclaring")
when not declared(Ogrgsimplify):
  proc Ogrgsimplify*(hthis: Ogrgeometryh_452985170; tolerance: cdouble): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_Simplify".}
else:
  static :
    hint("Declaration of " & "OGR_G_Simplify" &
        " already exists, not redeclaring")
when not declared(Gdalratchangesarewrittentofile):
  proc Gdalratchangesarewrittentofile*(hrat: Gdalrasterattributetableh_452985200): cint {.
      cdecl, importc: "GDALRATChangesAreWrittenToFile".}
else:
  static :
    hint("Declaration of " & "GDALRATChangesAreWrittenToFile" &
        " already exists, not redeclaring")
when not declared(Ogrlgetfeaturecount):
  proc Ogrlgetfeaturecount*(a0: Ogrlayerh_452985133; a1: cint): Gintbig_452985145 {.
      cdecl, importc: "OGR_L_GetFeatureCount".}
else:
  static :
    hint("Declaration of " & "OGR_L_GetFeatureCount" &
        " already exists, not redeclaring")
when not declared(Ogrfisfieldset):
  proc Ogrfisfieldset*(a0: Ogrfeatureh_452985196; a1: cint): cint {.cdecl,
      importc: "OGR_F_IsFieldSet".}
else:
  static :
    hint("Declaration of " & "OGR_F_IsFieldSet" &
        " already exists, not redeclaring")
when not declared(Ogrlupdate):
  proc Ogrlupdate*(a0: Ogrlayerh_452985133; a1: Ogrlayerh_452985133;
                   a2: Ogrlayerh_452985133; a3: ptr ptr cschar;
                   a4: Gdalprogressfunc_452985210; a5: pointer): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_Update".}
else:
  static :
    hint("Declaration of " & "OGR_L_Update" & " already exists, not redeclaring")
when not declared(Gdalrasteradviseread):
  proc Gdalrasteradviseread*(hrb: Gdalrasterbandh_452985168; ndsxoff: cint;
                             ndsyoff: cint; ndsxsize: cint; ndsysize: cint;
                             nbxsize: cint; nbysize: cint;
                             ebdatatype: Gdaldatatype_452985072;
                             papszoptions: Cslconstlist_452985151): Cplerr_452985113 {.
      cdecl, importc: "GDALRasterAdviseRead".}
else:
  static :
    hint("Declaration of " & "GDALRasterAdviseRead" &
        " already exists, not redeclaring")
when not declared(Gdalgetdatacoveragestatus):
  proc Gdalgetdatacoveragestatus*(hband: Gdalrasterbandh_452985168; nxoff: cint;
                                  nyoff: cint; nxsize: cint; nysize: cint;
                                  nmaskflagstop: cint; pdfdatapct: ptr cdouble): cint {.
      cdecl, importc: "GDALGetDataCoverageStatus".}
else:
  static :
    hint("Declaration of " & "GDALGetDataCoverageStatus" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttoisowkb):
  proc Ogrgexporttoisowkb*(a0: Ogrgeometryh_452985170; a1: Ogrwkbbyteorder_452985117;
                           a2: ptr cuchar): Ogrerr_452985198 {.cdecl,
      importc: "OGR_G_ExportToIsoWkb".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToIsoWkb" &
        " already exists, not redeclaring")
when not declared(Ogrggetm):
  proc Ogrggetm*(a0: Ogrgeometryh_452985170; a1: cint): cdouble {.cdecl,
      importc: "OGR_G_GetM".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetM" & " already exists, not redeclaring")
when not declared(Gdalofgnm):
  const
    Gdalofgnm* = 8           ## Generated based on /usr/include/gdal/gdal.h:454:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_GNM" & " already exists, not redeclaring")
when not declared(Ogrgcreatefromwkb):
  proc Ogrgcreatefromwkb*(a0: pointer; a1: Ogrspatialreferenceh_452985129;
                          a2: ptr Ogrgeometryh_452985170; a3: cint): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_CreateFromWkb".}
else:
  static :
    hint("Declaration of " & "OGR_G_CreateFromWkb" &
        " already exists, not redeclaring")
when not declared(Gdalgetcolorentryasrgb):
  proc Gdalgetcolorentryasrgb*(a0: Gdalcolortableh_452985123; a1: cint;
                               a2: ptr Gdalcolorentry_452985139): cint {.cdecl,
      importc: "GDALGetColorEntryAsRGB".}
else:
  static :
    hint("Declaration of " & "GDALGetColorEntryAsRGB" &
        " already exists, not redeclaring")
when not declared(Ogrgswapxy):
  proc Ogrgswapxy*(hgeom: Ogrgeometryh_452985170): void {.cdecl,
      importc: "OGR_G_SwapXY".}
else:
  static :
    hint("Declaration of " & "OGR_G_SwapXY" & " already exists, not redeclaring")
when not declared(Gdalsetrastercolorinterpretation):
  proc Gdalsetrastercolorinterpretation*(a0: Gdalrasterbandh_452985168;
      a1: Gdalcolorinterp_452985206): Cplerr_452985113 {.cdecl,
      importc: "GDALSetRasterColorInterpretation".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterColorInterpretation" &
        " already exists, not redeclaring")
when not declared(Ogrfdaddfielddefn):
  proc Ogrfdaddfielddefn*(a0: Ogrfeaturedefnh_452985176; a1: Ogrfielddefnh_452985121): void {.
      cdecl, importc: "OGR_FD_AddFieldDefn".}
else:
  static :
    hint("Declaration of " & "OGR_FD_AddFieldDefn" &
        " already exists, not redeclaring")
when not declared(Gdalgetdatatypebyname):
  proc Gdalgetdatatypebyname*(a0: cstring): Gdaldatatype_452985072 {.cdecl,
      importc: "GDALGetDataTypeByName".}
else:
  static :
    hint("Declaration of " & "GDALGetDataTypeByName" &
        " already exists, not redeclaring")
when not declared(Ogrfsetfieldintegerlist):
  proc Ogrfsetfieldintegerlist*(a0: Ogrfeatureh_452985196; a1: cint; a2: cint;
                                a3: ptr cint): void {.cdecl,
      importc: "OGR_F_SetFieldIntegerList".}
else:
  static :
    hint("Declaration of " & "OGR_F_SetFieldIntegerList" &
        " already exists, not redeclaring")
when not declared(Ogrfdumpreadable):
  proc Ogrfdumpreadable*(a0: Ogrfeatureh_452985196; a1: ptr File_452985230): void {.
      cdecl, importc: "OGR_F_DumpReadable".}
else:
  static :
    hint("Declaration of " & "OGR_F_DumpReadable" &
        " already exists, not redeclaring")
when not declared(Ogrrawfieldsetunset):
  proc Ogrrawfieldsetunset*(a0: ptr Ogrfield_452985214): void {.cdecl,
      importc: "OGR_RawField_SetUnset".}
else:
  static :
    hint("Declaration of " & "OGR_RawField_SetUnset" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttowkt):
  proc Ogrgexporttowkt*(a0: Ogrgeometryh_452985170; a1: ptr ptr cschar): Ogrerr_452985198 {.
      cdecl, importc: "OGR_G_ExportToWkt".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToWkt" &
        " already exists, not redeclaring")
when not declared(Gdalfinddatatype):
  proc Gdalfinddatatype*(nbits: cint; bsigned: cint; bfloating: cint;
                         bcomplex: cint): Gdaldatatype_452985072 {.cdecl,
      importc: "GDALFindDataType".}
else:
  static :
    hint("Declaration of " & "GDALFindDataType" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetadviseread):
  proc Gdaldatasetadviseread*(hds: Gdaldataseth_452985107; ndsxoff: cint;
                              ndsyoff: cint; ndsxsize: cint; ndsysize: cint;
                              nbxsize: cint; nbysize: cint;
                              ebdatatype: Gdaldatatype_452985072;
                              nbandcount: cint; panbandcount: ptr cint;
                              papszoptions: Cslconstlist_452985151): Cplerr_452985113 {.
      cdecl, importc: "GDALDatasetAdviseRead".}
else:
  static :
    hint("Declaration of " & "GDALDatasetAdviseRead" &
        " already exists, not redeclaring")
when not declared(Ogrstblsavestyletable):
  proc Ogrstblsavestyletable*(hstyletable: Ogrstyletableh_452985091;
                              pszfilename: cstring): cint {.cdecl,
      importc: "OGR_STBL_SaveStyleTable".}
else:
  static :
    hint("Declaration of " & "OGR_STBL_SaveStyleTable" &
        " already exists, not redeclaring")
when not declared(Ogrgforcetomultipolygon):
  proc Ogrgforcetomultipolygon*(a0: Ogrgeometryh_452985170): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ForceToMultiPolygon".}
else:
  static :
    hint("Declaration of " & "OGR_G_ForceToMultiPolygon" &
        " already exists, not redeclaring")
when not declared(Ogrggetz):
  proc Ogrggetz*(a0: Ogrgeometryh_452985170; a1: cint): cdouble {.cdecl,
      importc: "OGR_G_GetZ".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetZ" & " already exists, not redeclaring")
when not declared(Ogrgaddpointzm):
  proc Ogrgaddpointzm*(a0: Ogrgeometryh_452985170; a1: cdouble; a2: cdouble;
                       a3: cdouble; a4: cdouble): void {.cdecl,
      importc: "OGR_G_AddPointZM".}
else:
  static :
    hint("Declaration of " & "OGR_G_AddPointZM" &
        " already exists, not redeclaring")
when not declared(Gdalratvaluesioasstring):
  proc Gdalratvaluesioasstring*(hrat: Gdalrasterattributetableh_452985200;
                                erwflag: Gdalrwflag_452985089; ifield: cint;
                                istartrow: cint; ilength: cint;
                                papszstrlist: Cslconstlist_452985151): Cplerr_452985113 {.
      cdecl, importc: "GDALRATValuesIOAsString".}
else:
  static :
    hint("Declaration of " & "GDALRATValuesIOAsString" &
        " already exists, not redeclaring")
when not declared(Ogrggetgeometrycount):
  proc Ogrggetgeometrycount*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_GetGeometryCount".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetGeometryCount" &
        " already exists, not redeclaring")
when not declared(Ogrgintersects):
  proc Ogrgintersects*(a0: Ogrgeometryh_452985170; a1: Ogrgeometryh_452985170): cint {.
      cdecl, importc: "OGR_G_Intersects".}
else:
  static :
    hint("Declaration of " & "OGR_G_Intersects" &
        " already exists, not redeclaring")
when not declared(Ogrgforceto):
  proc Ogrgforceto*(hgeom: Ogrgeometryh_452985170;
                    etargettype: Ogrwkbgeometrytype_452985074;
                    papszoptions: ptr ptr cschar): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ForceTo".}
else:
  static :
    hint("Declaration of " & "OGR_G_ForceTo" &
        " already exists, not redeclaring")
when not declared(Gdalreadozimapfile):
  proc Gdalreadozimapfile*(a0: cstring; a1: ptr cdouble; a2: ptr ptr cschar;
                           a3: ptr cint; a4: ptr ptr Gdalgcp_452985222): cint {.
      cdecl, importc: "GDALReadOziMapFile".}
else:
  static :
    hint("Declaration of " & "GDALReadOziMapFile" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterxsize):
  proc Gdalgetrasterxsize*(a0: Gdaldataseth_452985107): cint {.cdecl,
      importc: "GDALGetRasterXSize".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterXSize" &
        " already exists, not redeclaring")
when not declared(Gdalclonecolortable):
  proc Gdalclonecolortable*(a0: Gdalcolortableh_452985123): Gdalcolortableh_452985123 {.
      cdecl, importc: "GDALCloneColorTable".}
else:
  static :
    hint("Declaration of " & "GDALCloneColorTable" &
        " already exists, not redeclaring")
when not declared(Gdalofraster):
  const
    Gdalofraster* = 2        ## Generated based on /usr/include/gdal/gdal.h:442:13
else:
  static :
    hint("Declaration of " & "GDAL_OF_RASTER" &
        " already exists, not redeclaring")
when not declared(Ogrgis3d):
  proc Ogrgis3d*(a0: Ogrgeometryh_452985170): cint {.cdecl,
      importc: "OGR_G_Is3D".}
else:
  static :
    hint("Declaration of " & "OGR_G_Is3D" & " already exists, not redeclaring")
when not declared(Gdalratdumpreadable):
  proc Gdalratdumpreadable*(a0: Gdalrasterattributetableh_452985200;
                            a1: ptr File_452985230): void {.cdecl,
      importc: "GDALRATDumpReadable".}
else:
  static :
    hint("Declaration of " & "GDALRATDumpReadable" &
        " already exists, not redeclaring")
when not declared(Ogrdsgetlayer):
  proc Ogrdsgetlayer*(a0: Ogrdatasourceh_452985093; a1: cint): Ogrlayerh_452985133 {.
      cdecl, importc: "OGR_DS_GetLayer".}
else:
  static :
    hint("Declaration of " & "OGR_DS_GetLayer" &
        " already exists, not redeclaring")
when not declared(Gdalcreatecolorramp):
  proc Gdalcreatecolorramp*(htable: Gdalcolortableh_452985123;
                            nstartindex: cint; psstartcolor: ptr Gdalcolorentry_452985139;
                            nendindex: cint; psendcolor: ptr Gdalcolorentry_452985139): void {.
      cdecl, importc: "GDALCreateColorRamp".}
else:
  static :
    hint("Declaration of " & "GDALCreateColorRamp" &
        " already exists, not redeclaring")
when not declared(Gdalsetrasternodatavalue):
  proc Gdalsetrasternodatavalue*(a0: Gdalrasterbandh_452985168; a1: cdouble): Cplerr_452985113 {.
      cdecl, importc: "GDALSetRasterNoDataValue".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterNoDataValue" &
        " already exists, not redeclaring")
when not declared(Ogrfdgetgeomfieldindex):
  proc Ogrfdgetgeomfieldindex*(hfdefn: Ogrfeaturedefnh_452985176;
                               pszname: cstring): cint {.cdecl,
      importc: "OGR_FD_GetGeomFieldIndex".}
else:
  static :
    hint("Declaration of " & "OGR_FD_GetGeomFieldIndex" &
        " already exists, not redeclaring")
when not declared(Ogrlsetspatialfilterex):
  proc Ogrlsetspatialfilterex*(a0: Ogrlayerh_452985133; igeomfield: cint;
                               hgeom: Ogrgeometryh_452985170): void {.cdecl,
      importc: "OGR_L_SetSpatialFilterEx".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetSpatialFilterEx" &
        " already exists, not redeclaring")
when not declared(Ogrsmgetpart):
  proc Ogrsmgetpart*(hsm: Ogrstylemgrh_452985186; npartid: cint;
                     pszstylestring: cstring): Ogrstyletoolh_452985131 {.cdecl,
      importc: "OGR_SM_GetPart".}
else:
  static :
    hint("Declaration of " & "OGR_SM_GetPart" &
        " already exists, not redeclaring")
when not declared(Ogrgexporttojson):
  proc Ogrgexporttojson*(a0: Ogrgeometryh_452985170): cstring {.cdecl,
      importc: "OGR_G_ExportToJson".}
else:
  static :
    hint("Declaration of " & "OGR_G_ExportToJson" &
        " already exists, not redeclaring")
when not declared(Gdalgetoverviewcount):
  proc Gdalgetoverviewcount*(a0: Gdalrasterbandh_452985168): cint {.cdecl,
      importc: "GDALGetOverviewCount".}
else:
  static :
    hint("Declaration of " & "GDALGetOverviewCount" &
        " already exists, not redeclaring")
when not declared(Gdalratgetrowofvalue):
  proc Gdalratgetrowofvalue*(a0: Gdalrasterattributetableh_452985200;
                             a1: cdouble): cint {.cdecl,
      importc: "GDALRATGetRowOfValue".}
else:
  static :
    hint("Declaration of " & "GDALRATGetRowOfValue" &
        " already exists, not redeclaring")
when not declared(Ogrfldsetprecision):
  proc Ogrfldsetprecision*(a0: Ogrfielddefnh_452985121; a1: cint): void {.cdecl,
      importc: "OGR_Fld_SetPrecision".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_SetPrecision" &
        " already exists, not redeclaring")
when not declared(Gdalgetrasterunittype):
  proc Gdalgetrasterunittype*(a0: Gdalrasterbandh_452985168): cstring {.cdecl,
      importc: "GDALGetRasterUnitType".}
else:
  static :
    hint("Declaration of " & "GDALGetRasterUnitType" &
        " already exists, not redeclaring")
when not declared(Ogrfgetfieldasbinary):
  proc Ogrfgetfieldasbinary*(a0: Ogrfeatureh_452985196; a1: cint; a2: ptr cint): ptr Gbyte_452985208 {.
      cdecl, importc: "OGR_F_GetFieldAsBinary".}
else:
  static :
    hint("Declaration of " & "OGR_F_GetFieldAsBinary" &
        " already exists, not redeclaring")
when not declared(Ogrlsetspatialfilterrect):
  proc Ogrlsetspatialfilterrect*(a0: Ogrlayerh_452985133; a1: cdouble;
                                 a2: cdouble; a3: cdouble; a4: cdouble): void {.
      cdecl, importc: "OGR_L_SetSpatialFilterRect".}
else:
  static :
    hint("Declaration of " & "OGR_L_SetSpatialFilterRect" &
        " already exists, not redeclaring")
when not declared(Alternameflag):
  const
    Alternameflag* = 1       ## Generated based on /usr/include/gdal/ogr_core.h:514:9
else:
  static :
    hint("Declaration of " & "ALTER_NAME_FLAG" &
        " already exists, not redeclaring")
when not declared(Gdalgetvirtualmemauto):
  proc Gdalgetvirtualmemauto*(hband: Gdalrasterbandh_452985168;
                              erwflag: Gdalrwflag_452985089;
                              pnpixelspace: ptr cint; pnlinespace: ptr Gintbig_452985145;
                              papszoptions: Cslconstlist_452985151): ptr Cplvirtualmem {.
      cdecl, importc: "GDALGetVirtualMemAuto".}
else:
  static :
    hint("Declaration of " & "GDALGetVirtualMemAuto" &
        " already exists, not redeclaring")
when not declared(Ogrdrgetname):
  proc Ogrdrgetname*(a0: Ogrsfdriverh_452985226): cstring {.cdecl,
      importc: "OGR_Dr_GetName".}
else:
  static :
    hint("Declaration of " & "OGR_Dr_GetName" &
        " already exists, not redeclaring")
when not declared(Ogrcalloc):
  proc Ogrcalloc*(a0: csize_t; a1: csize_t): pointer {.cdecl,
      importc: "OGRCalloc".}
else:
  static :
    hint("Declaration of " & "OGRCalloc" & " already exists, not redeclaring")
when not declared(Gdalsetgcps2):
  proc Gdalsetgcps2*(a0: Gdaldataseth_452985107; a1: cint; a2: ptr Gdalgcp_452985222;
                     a3: Ogrspatialreferenceh_452985129): Cplerr_452985113 {.
      cdecl, importc: "GDALSetGCPs2".}
else:
  static :
    hint("Declaration of " & "GDALSetGCPs2" & " already exists, not redeclaring")
when not declared(Ogrmergegeometrytypes):
  proc Ogrmergegeometrytypes*(emain: Ogrwkbgeometrytype_452985074;
                              eextra: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGRMergeGeometryTypes".}
else:
  static :
    hint("Declaration of " & "OGRMergeGeometryTypes" &
        " already exists, not redeclaring")
when not declared(Gdalcreatecopy):
  proc Gdalcreatecopy*(a0: Gdaldriverh_452985127; a1: cstring; a2: Gdaldataseth_452985107;
                       a3: cint; a4: Cslconstlist_452985151;
                       a5: Gdalprogressfunc_452985210; a6: pointer): Gdaldataseth_452985107 {.
      cdecl, importc: "GDALCreateCopy".}
else:
  static :
    hint("Declaration of " & "GDALCreateCopy" &
        " already exists, not redeclaring")
when not declared(Ogrflddestroy):
  proc Ogrflddestroy*(a0: Ogrfielddefnh_452985121): void {.cdecl,
      importc: "OGR_Fld_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_Fld_Destroy" &
        " already exists, not redeclaring")
when not declared(Ogrgtflatten):
  proc Ogrgtflatten*(etype: Ogrwkbgeometrytype_452985074): Ogrwkbgeometrytype_452985074 {.
      cdecl, importc: "OGR_GT_Flatten".}
else:
  static :
    hint("Declaration of " & "OGR_GT_Flatten" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetgetlayer):
  proc Gdaldatasetgetlayer*(a0: Gdaldataseth_452985107; a1: cint): Ogrlayerh_452985133 {.
      cdecl, importc: "GDALDatasetGetLayer".}
else:
  static :
    hint("Declaration of " & "GDALDatasetGetLayer" &
        " already exists, not redeclaring")
when not declared(Ogrggetx):
  proc Ogrggetx*(a0: Ogrgeometryh_452985170; a1: cint): cdouble {.cdecl,
      importc: "OGR_G_GetX".}
else:
  static :
    hint("Declaration of " & "OGR_G_GetX" & " already exists, not redeclaring")
when not declared(Ogrfunsetfield):
  proc Ogrfunsetfield*(a0: Ogrfeatureh_452985196; a1: cint): void {.cdecl,
      importc: "OGR_F_UnsetField".}
else:
  static :
    hint("Declaration of " & "OGR_F_UnsetField" &
        " already exists, not redeclaring")
when not declared(Gdaldatacoveragestatusunimplemented):
  const
    Gdaldatacoveragestatusunimplemented* = 1 ## Generated based on /usr/include/gdal/gdal.h:923:9
else:
  static :
    hint("Declaration of " & "GDAL_DATA_COVERAGE_STATUS_UNIMPLEMENTED" &
        " already exists, not redeclaring")
when not declared(Gdalratgettypeofcol):
  proc Gdalratgettypeofcol*(a0: Gdalrasterattributetableh_452985200; a1: cint): Gdalratfieldtype_452985182 {.
      cdecl, importc: "GDALRATGetTypeOfCol".}
else:
  static :
    hint("Declaration of " & "GDALRATGetTypeOfCol" &
        " already exists, not redeclaring")
when not declared(Ogrerrcorruptdata):
  const
    Ogrerrcorruptdata* = 5   ## Generated based on /usr/include/gdal/ogr_core.h:297:9
else:
  static :
    hint("Declaration of " & "OGRERR_CORRUPT_DATA" &
        " already exists, not redeclaring")
when not declared(Gdaldatasetstarttransaction):
  proc Gdaldatasetstarttransaction*(hds: Gdaldataseth_452985107; bforce: cint): Ogrerr_452985198 {.
      cdecl, importc: "GDALDatasetStartTransaction".}
else:
  static :
    hint("Declaration of " & "GDALDatasetStartTransaction" &
        " already exists, not redeclaring")
when not declared(Ogrfddereference):
  proc Ogrfddereference*(a0: Ogrfeaturedefnh_452985176): cint {.cdecl,
      importc: "OGR_FD_Dereference".}
else:
  static :
    hint("Declaration of " & "OGR_FD_Dereference" &
        " already exists, not redeclaring")
when not declared(Ogrlcommittransaction):
  proc Ogrlcommittransaction*(a0: Ogrlayerh_452985133): Ogrerr_452985198 {.
      cdecl, importc: "OGR_L_CommitTransaction".}
else:
  static :
    hint("Declaration of " & "OGR_L_CommitTransaction" &
        " already exists, not redeclaring")
when not declared(Ogrgapproximatearcangles):
  proc Ogrgapproximatearcangles*(dfcenterx: cdouble; dfcentery: cdouble;
                                 dfz: cdouble; dfprimaryradius: cdouble;
                                 dfsecondaryaxis: cdouble; dfrotation: cdouble;
                                 dfstartangle: cdouble; dfendangle: cdouble;
                                 dfmaxanglestepsizedegrees: cdouble): Ogrgeometryh_452985170 {.
      cdecl, importc: "OGR_G_ApproximateArcAngles".}
else:
  static :
    hint("Declaration of " & "OGR_G_ApproximateArcAngles" &
        " already exists, not redeclaring")
when not declared(Gdalsetrasteroffset):
  proc Gdalsetrasteroffset*(hband: Gdalrasterbandh_452985168;
                            dfnewoffset: cdouble): Cplerr_452985113 {.cdecl,
      importc: "GDALSetRasterOffset".}
else:
  static :
    hint("Declaration of " & "GDALSetRasterOffset" &
        " already exists, not redeclaring")
when not declared(Ogrstdestroy):
  proc Ogrstdestroy*(hst: Ogrstyletoolh_452985131): void {.cdecl,
      importc: "OGR_ST_Destroy".}
else:
  static :
    hint("Declaration of " & "OGR_ST_Destroy" &
        " already exists, not redeclaring")