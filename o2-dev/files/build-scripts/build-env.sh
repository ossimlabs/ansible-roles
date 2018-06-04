#!/bin/bash
export PGUSER=postgres
export OSSIM_DEV_HOME=~
export OSSIM_DATA=/data
export OSSIM_VERSION=1.9.0
export OSSIM_VERSION_TAG=SNAPSHOT
export JAVA_HOME=/usr/lib/jvm/java
export MSP_HOME=/msp/ToolKit
export OSSIM_DATA=/data
export MSP_DATA_DIR=$MSP_HOME/data
export O2_DEV_HOME=$OSSIM_DEV_HOME
export ARTIFACTORY_URL=https://artifactory.ossim.io/artifactory
export OMAR_COMMON_PROPERTIES=$OSSIM_DEV_HOME/omar-common/omar-common-properties.gradle
export OSSIM_MAKE_JOBS=4
export CSM_PLUGIN_DIR=$MSP_HOME/plugins/
export OSSIM_DEPENDENCIES=$OSSIM_DEV_HOME/ossim-dependencies
export OSSIM_INSTALL_PREFIX=$OSSIM_DEV_HOME/ossim-install
export OSSIM_BUILD_DIR=$OSSIM_DEV_HOME/build
export OSSIM_PREFS_FILE=$OSSIM_DEV_HOME/ossim-preferences
export PATH=$OSSIM_DEPENDENCIES/bin:$OSSIM_BUILD_DIR/bin:$PATH
export LD_LIBRARY_PATH=$MSP_HOME/lib:$OSSIM_DEPENDENCIES/lib64:$OSSIM_DEPENDENCIES/lib:$OSSIM_BUILD_DIR/lib64:$OSSIM_BUILD_DIR/lib:$OSSIM_INSTALL_PREFIX/lib64:$OSSIM_INSTALL_PREFIX/lib:$LD_LIBRARY_PATH

alias dev="cd $OSSIM_DEV_HOME" 
alias build="cd $OSSIM_DEV_HOME/build" 
