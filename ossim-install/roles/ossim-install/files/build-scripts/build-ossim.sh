#!/bin/bash
pushd `dirname ${BASH_SOURCE[0]}` >/dev/null
export SCRIPT_DIR=`pwd -P`
. $SCRIPT_DIR/build-env.sh
popd >/dev/null

if [ -f $OSSIM_BUILD_DIR/CMakeCache.txt ] ; then
   rm -f $OSSIM_BUILD_DIR/CMakeCache.txt
fi

if [ -d $SCRIPT_DIR/ossim-private ] ; then
  export BUILD_KAKADU_PLUGIN=OFF
  export KAKADU_ROOT_SRC=$SCRIPT_DIR/ossim-private/kakadu/v7_5-01123C
  export KAKADU_LIBRARY=$SCRIPT_DIR/ossim-private/kakadu/v7_5-01123C/lib/Linux-x86-64-gcc/libkdu_v75R.so
  export KAKADU_AUX_LIBRARY=$SCRIPT_DIR/ossim-private/kakadu/v7_5-01123C/lib/Linux-x86-64-gcc/libkdu_a75R.so
else
  export BUILD_KAKADU_PLUGIN=OFF
fi

export BUILD_OMS=OFF
export BUILD_CNES_PLUGIN=OFF
export BUILD_GEOPDF_PLUGIN=OFF

export BUILD_GDAL_PLUGIN=OFF
export BUILD_HDF5_PLUGIN=OFF
export BUILD_OSSIM_HDF5_SUPPORT=OFF
export BUILD_KML_PLUGIN=OFF
export BUILD_MRSID_PLUGIN=OFF
#export MRSID_DIR=$OSSIM_DEPENDENCIES/MrSID_DSDK-9.0.0.3864-darwin12.universal.gccA42 \
export BUILD_OPENCV_PLUGIN=OFF
export BUILD_OPENJPEG_PLUGIN=OFF
export BUILD_PDAL_PLUGIN=OFF
export BUILD_PNG_PLUGIN=OFF
export BUILD_SQLITE_PLUGIN=OFF
export BUILD_OSSIM_VIDEO=OFF
export BUILD_OSSIM_GUI=OFF
export BUILD_OSSIM_WMS=OFF
export BUILD_OSSIM_PLANET=OFF
export BUILD_POTRACE_PLUGIN=OFF
export BUILD_AWS_PLUGIN=OFF
if [ -d $MSP_HOME ] ; then
   export BUILD_CSM_PLUGIN=OFF
   export BUILD_MSP_PLUGIN=OFF
else
   export BUILD_CSM_PLUGIN=OFF
   export BUILD_MSP_PLUGIN=OFF
fi
#export OSSIM_BUILD_ADDITIONAL_DIRECTORIES=$OSSIM_DEV_HOME/ossim-private/ossim-kakadu-jpip-server
$OSSIM_DEV_HOME/ossim/scripts/build.sh