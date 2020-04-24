set(LIB_SRC
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiaaux/gg_sqlaux.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiaaux/gg_utf8.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiaexif/gaia_exif.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_advanced.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_endian.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_ewkt.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_geodesic.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_geoJSON.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_geometries.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_geoscvt.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_gml.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_kml.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_relations.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_shape.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_transform.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_vanuatu.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_wkb.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_wkt.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_extras.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_xml.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_voronoj.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_matrix.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_relations_ext.c
  ${CMAKE_CURRENT_SOURCE_DIR}/gaiageo/gg_rttopo.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/mbrcache.c
  ${CMAKE_CURRENT_SOURCE_DIR}/shapefiles/shapefiles.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/spatialite.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualdbf.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualfdo.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualnetwork.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualshape.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualspatialindex.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/statistics.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/metatables.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualXL.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/extra_tables.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualxpath.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualbbox.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/spatialite_init.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/se_helpers.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/srid_aux.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/table_cloner.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualelementary.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualgeojson.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualrouting.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/create_routing.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/dbobj_scopes.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/pause.c
  ${CMAKE_CURRENT_SOURCE_DIR}/wfs/wfs_in.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/srs_init.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualgpkg.c
  ${CMAKE_CURRENT_SOURCE_DIR}/dxf/dxf_parser.c
  ${CMAKE_CURRENT_SOURCE_DIR}/dxf/dxf_loader.c
  ${CMAKE_CURRENT_SOURCE_DIR}/dxf/dxf_writer.c
  ${CMAKE_CURRENT_SOURCE_DIR}/dxf/dxf_load_distinct.c
  ${CMAKE_CURRENT_SOURCE_DIR}/dxf/dxf_load_mixed.c
  ${CMAKE_CURRENT_SOURCE_DIR}/shapefiles/validator.c
  ${CMAKE_CURRENT_SOURCE_DIR}/md5/md5.c
  ${CMAKE_CURRENT_SOURCE_DIR}/md5/gaia_md5.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_00.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_01.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_02.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_03.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_04.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_05.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_06.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_07.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_08.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_09.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_10.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_11.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_12.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_13.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_14.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_15.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_16.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_17.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_18.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_19.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_20.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_21.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_22.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_23.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_24.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_25.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_26.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_27.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_28.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_29.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_30.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_31.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_32.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_33.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_34.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_35.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_36.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_37.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_38.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_39.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_40.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_41.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_42.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_43.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_44.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_45.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_46.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_47.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_48.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_49.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_50.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_51.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_52.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_53.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_54.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_55.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_56.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_57.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_extra.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_prussian.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_wgs84_00.c
  ${CMAKE_CURRENT_SOURCE_DIR}/srsinit/epsg_inlined_wgs84_01.c
  ${CMAKE_CURRENT_SOURCE_DIR}/versioninfo/version.c
  ${CMAKE_CURRENT_SOURCE_DIR}/virtualtext/virtualtext.c
  ${CMAKE_CURRENT_SOURCE_DIR}/cutter/gaia_cutter.c
  ${CMAKE_CURRENT_SOURCE_DIR}/spatialite/virtualknn.c
  ${CMAKE_CURRENT_SOURCE_DIR}/control_points/gaia_control_points.c
  ${CMAKE_CURRENT_SOURCE_DIR}/control_points/grass_crs3d.c
  ${CMAKE_CURRENT_SOURCE_DIR}/control_points/grass_georef_tps.c
  ${CMAKE_CURRENT_SOURCE_DIR}/control_points/grass_georef.c
  ${CMAKE_CURRENT_SOURCE_DIR}/stored_procedures/stored_procedures.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gaia_cvt_gpkg.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgAddGeometryColumn.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkg_add_geometry_triggers.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkg_add_spatial_index.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkg_add_tile_triggers.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgBinary.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgCreateBaseTables.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgCreateTilesTable.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgCreateTilesZoomLevel.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgGetImageType.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkg_get_normal_row.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkg_get_normal_zoom.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgInsertEpsgSRID.c
  ${CMAKE_CURRENT_SOURCE_DIR}/geopackage/gpkgMakePoint.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_auxnet.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_auxtopo.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_auxtopo_table.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_netstmts.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_network.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_topology.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/gaia_topostmts.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/lwn_network.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/net_callbacks.c
  ${CMAKE_CURRENT_SOURCE_DIR}/topology/topo_callbacks.c
  ${CMAKE_CURRENT_SOURCE_DIR}/connection_cache/alloc_cache.c
  ${CMAKE_CURRENT_SOURCE_DIR}/connection_cache/gg_sequence.c
)
set(LIB_HDR "")
if(MSVC)
  set(LIB_DEF _CRT_SECURE_NO_WARNINGS YY_NO_UNISTD_H)
else()
  set(LIB_DEF "")
endif()
if(LibXml2_FOUND)
  list(APPEND LIB_DEF ${LIBXML2_DEFINITIONS})
endif()

# shared library
add_library(spatialite SHARED ${LIB_SRC} ${LIB_HDR})
target_link_libraries(spatialite PUBLIC ${LIB_DEP})
target_compile_definitions(spatialite PUBLIC ${LIB_DEF})
if(MSVC)
  target_compile_definitions(spatialite PUBLIC DLL_EXPORT)
endif()

# static library
add_library(spatialite_i STATIC ${LIB_SRC} ${LIB_HDR})
target_compile_definitions(spatialite_i PUBLIC ${LIB_DEF})

# install
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/headers/spatialite.h TYPE INCLUDE)
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/headers/spatialite TYPE INCLUDE FILES_MATCHING PATTERN "*.h")
install(TARGETS spatialite spatialite_i)