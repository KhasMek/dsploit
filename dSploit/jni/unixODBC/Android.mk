LOCAL_PATH := $(call my-dir)

#original path: extras/libodbcextraslc.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/extras\
	unixODBC/include
LOCAL_SRC_FILES:= \
	extras/strcasecmp.c\
	extras/snprintf.c
LOCAL_MODULE := libodbcextraslc

include $(BUILD_STATIC_LIBRARY)


#original path: log/libloglc.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/log\
	unixODBC/include
LOCAL_SRC_FILES:= \
	log/_logFreeMsg.c\
	log/logClear.c\
	log/logClose.c\
	log/logOn.c\
	log/logOpen.c\
	log/logPeekMsg.c\
	log/logPopMsg.c\
	log/logPushMsg.c
LOCAL_MODULE := libloglc

include $(BUILD_STATIC_LIBRARY)


#original path: lst/liblstlc.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/lst\
	unixODBC/include
LOCAL_SRC_FILES:= \
	lst/_lstAdjustCurrent.c\
	lst/_lstDump.c\
	lst/_lstFreeItem.c\
	lst/_lstNextValidItem.c\
	lst/_lstPrevValidItem.c\
	lst/_lstVisible.c\
	lst/lstAppend.c\
	lst/lstClose.c\
	lst/lstDelete.c\
	lst/lstEOL.c\
	lst/lstFirst.c\
	lst/lstGet.c\
	lst/lstGetBookMark.c\
	lst/lstGoto.c\
	lst/lstGotoBookMark.c\
	lst/lstInsert.c\
	lst/lstLast.c\
	lst/lstNext.c\
	lst/lstOpen.c\
	lst/lstOpenCursor.c\
	lst/lstPrev.c\
	lst/lstSeek.c\
	lst/lstSeekItem.c\
	lst/lstSet.c\
	lst/lstSetFreeFunc.c
LOCAL_MODULE := liblstlc

include $(BUILD_STATIC_LIBRARY)


#original path: ini/libinilc.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/ini\
	unixODBC/include
LOCAL_SRC_FILES:= \
	ini/iniAllTrim.c\
	ini/iniAppend.c\
	ini/iniDelete.c\
	ini/iniClose.c\
	ini/iniCommit.c\
	ini/iniObject.c\
	ini/iniObjectFirst.c\
	ini/iniObjectLast.c\
	ini/iniObjectNext.c\
	ini/iniObjectSeek.c\
	ini/iniObjectSeekSure.c\
	ini/iniObjectUpdate.c\
	ini/iniObjectInsert.c\
	ini/iniObjectDelete.c\
	ini/iniObjectEOL.c\
	ini/iniOpen.c\
	ini/iniProperty.c\
	ini/iniPropertyFirst.c\
	ini/iniPropertyLast.c\
	ini/iniPropertyNext.c\
	ini/iniPropertySeek.c\
	ini/iniPropertySeekSure.c\
	ini/iniPropertyUpdate.c\
	ini/iniPropertyInsert.c\
	ini/iniPropertyDelete.c\
	ini/iniPropertyEOL.c\
	ini/iniPropertyValue.c\
	ini/iniValue.c\
	ini/iniToUpper.c\
	ini/iniElement.c\
	ini/iniElementCount.c\
	ini/iniGetBookmark.c\
	ini/iniGotoBookmark.c\
	ini/iniCursor.c\
	ini/_iniObjectRead.c\
	ini/_iniPropertyRead.c\
	ini/_iniDump.c\
	ini/_iniScanUntilObject.c
LOCAL_STATIC_LIBRARIES:= \
	libodbcextraslc
LOCAL_MODULE := libinilc

include $(BUILD_STATIC_LIBRARY)


#original path: libltdl/dlopen.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DLT_CONFIG_H='<config.h>' -DLTDL -DLTDLOPEN=libltdlc \
-ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/libltdl\
	unixODBC/libltdl/libltdl
LOCAL_SRC_FILES:= \
	libltdl/loaders/dlopen.c
LOCAL_MODULE := dlopen

include $(BUILD_STATIC_LIBRARY)


#original path: libltdl/libltdlc.la
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	libltdl/loaders/preopen.c\
	libltdl/lt__alloc.c\
	libltdl/lt_dlloader.c\
	libltdl/lt_error.c\
	libltdl/ltdl.c\
	libltdl/slist.c\
	libltdl/argz.c
LOCAL_MODULE := libltdlc

include $(BUILD_STATIC_LIBRARY)


#original path: odbcinst/libodbcinst.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/odbcinst\
	unixODBC/include\
	unixODBC/libltdl
LOCAL_SRC_FILES:= \
	odbcinst/ODBCINSTConstructProperties.c\
	odbcinst/ODBCINSTDestructProperties.c\
	odbcinst/ODBCINSTSetProperty.c\
	odbcinst/ODBCINSTValidateProperties.c\
	odbcinst/ODBCINSTValidateProperty.c\
	odbcinst/SQLConfigDataSource.c\
	odbcinst/SQLConfigDriver.c\
	odbcinst/SQLCreateDataSource.c\
	odbcinst/SQLGetAvailableDrivers.c\
	odbcinst/SQLGetConfigMode.c\
	odbcinst/SQLGetInstalledDrivers.c\
	odbcinst/SQLGetPrivateProfileString.c\
	odbcinst/SQLGetTranslator.c\
	odbcinst/SQLInstallDriverEx.c\
	odbcinst/SQLInstallDriverManager.c\
	odbcinst/SQLInstallTranslatorEx.c\
	odbcinst/SQLInstallerError.c\
	odbcinst/SQLManageDataSources.c\
	odbcinst/SQLPostInstallerError.c\
	odbcinst/SQLReadFileDSN.c\
	odbcinst/SQLRemoveDSNFromIni.c\
	odbcinst/SQLRemoveDriver.c\
	odbcinst/SQLRemoveDriverManager.c\
	odbcinst/SQLRemoveTranslator.c\
	odbcinst/SQLSetConfigMode.c\
	odbcinst/SQLValidDSN.c\
	odbcinst/SQLWriteDSNToIni.c\
	odbcinst/SQLWriteFileDSN.c\
	odbcinst/SQLWritePrivateProfileString.c\
	odbcinst/SQLInstallODBC.c\
	odbcinst/_logging.c\
	odbcinst/_odbcinst_ConfigModeINI.c\
	odbcinst/_odbcinst_UserINI.c\
	odbcinst/_odbcinst_SystemINI.c\
	odbcinst/_odbcinst_GetSections.c\
	odbcinst/_odbcinst_GetEntries.c\
	odbcinst/_SQLGetInstalledDrivers.c\
	odbcinst/_SQLWriteInstalledDrivers.c\
	odbcinst/_SQLDriverConnectPrompt.c
LOCAL_STATIC_LIBRARIES:= \
	libinilc\
	libloglc\
	liblstlc\
	libltdlc
LOCAL_MODULE := libodbcinst

include $(BUILD_STATIC_LIBRARY)


#original path: odbcinst/libodbcinstlc.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:=-ffunction-sections -fdata-sections

LOCAL_SRC_FILES:= \
	odbcinst/ODBCINSTConstructProperties.c\
	odbcinst/ODBCINSTDestructProperties.c\
	odbcinst/ODBCINSTSetProperty.c\
	odbcinst/ODBCINSTValidateProperties.c\
	odbcinst/ODBCINSTValidateProperty.c\
	odbcinst/SQLConfigDataSource.c\
	odbcinst/SQLConfigDriver.c\
	odbcinst/SQLCreateDataSource.c\
	odbcinst/SQLGetAvailableDrivers.c\
	odbcinst/SQLGetConfigMode.c\
	odbcinst/SQLGetInstalledDrivers.c\
	odbcinst/SQLGetPrivateProfileString.c\
	odbcinst/SQLGetTranslator.c\
	odbcinst/SQLInstallDriverEx.c\
	odbcinst/SQLInstallDriverManager.c\
	odbcinst/SQLInstallTranslatorEx.c\
	odbcinst/SQLInstallerError.c\
	odbcinst/SQLManageDataSources.c\
	odbcinst/SQLPostInstallerError.c\
	odbcinst/SQLReadFileDSN.c\
	odbcinst/SQLRemoveDSNFromIni.c\
	odbcinst/SQLRemoveDriver.c\
	odbcinst/SQLRemoveDriverManager.c\
	odbcinst/SQLRemoveTranslator.c\
	odbcinst/SQLSetConfigMode.c\
	odbcinst/SQLValidDSN.c\
	odbcinst/SQLWriteDSNToIni.c\
	odbcinst/SQLWriteFileDSN.c\
	odbcinst/SQLWritePrivateProfileString.c\
	odbcinst/_logging.c\
	odbcinst/_odbcinst_ConfigModeINI.c\
	odbcinst/_odbcinst_UserINI.c\
	odbcinst/_odbcinst_SystemINI.c\
	odbcinst/_odbcinst_GetSections.c\
	odbcinst/_odbcinst_GetEntries.c\
	odbcinst/_SQLGetInstalledDrivers.c\
	odbcinst/_SQLWriteInstalledDrivers.c\
	odbcinst/_SQLDriverConnectPrompt.c
LOCAL_MODULE := libodbcinstlc

include $(BUILD_STATIC_LIBRARY)


#original path: DriverManager/libodbc.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/DriverManager\
	unixODBC/include\
	unixODBC\
	unixODBC/libltdl
LOCAL_SRC_FILES:= \
	DriverManager/SQLAllocConnect.c\
	DriverManager/SQLAllocEnv.c\
	DriverManager/SQLAllocHandle.c\
	DriverManager/SQLAllocHandleStd.c\
	DriverManager/SQLAllocStmt.c\
	DriverManager/SQLBindCol.c\
	DriverManager/SQLBindParam.c\
	DriverManager/SQLBindParameter.c\
	DriverManager/SQLBrowseConnect.c\
	DriverManager/SQLBulkOperations.c\
	DriverManager/SQLCancel.c\
	DriverManager/SQLCancelHandle.c\
	DriverManager/SQLCloseCursor.c\
	DriverManager/SQLColAttribute.c\
	DriverManager/SQLColAttributes.c\
	DriverManager/SQLColumnPrivileges.c\
	DriverManager/SQLColumns.c\
	DriverManager/SQLConnect.c\
	DriverManager/SQLCopyDesc.c\
	DriverManager/SQLDataSources.c\
	DriverManager/SQLDescribeCol.c\
	DriverManager/SQLDescribeParam.c\
	DriverManager/SQLDisconnect.c\
	DriverManager/SQLDriverConnect.c\
	DriverManager/SQLDrivers.c\
	DriverManager/SQLEndTran.c\
	DriverManager/SQLError.c\
	DriverManager/SQLExecDirect.c\
	DriverManager/SQLExecute.c\
	DriverManager/SQLExtendedFetch.c\
	DriverManager/SQLFetch.c\
	DriverManager/SQLFetchScroll.c\
	DriverManager/SQLForeignKeys.c\
	DriverManager/SQLFreeConnect.c\
	DriverManager/SQLFreeEnv.c\
	DriverManager/SQLFreeHandle.c\
	DriverManager/SQLFreeStmt.c\
	DriverManager/SQLGetConnectAttr.c\
	DriverManager/SQLGetConnectOption.c\
	DriverManager/SQLGetCursorName.c\
	DriverManager/SQLGetData.c\
	DriverManager/SQLGetDescField.c\
	DriverManager/SQLGetDescRec.c\
	DriverManager/SQLGetDiagField.c\
	DriverManager/SQLGetDiagRec.c\
	DriverManager/SQLGetEnvAttr.c\
	DriverManager/SQLGetFunctions.c\
	DriverManager/SQLGetInfo.c\
	DriverManager/SQLGetStmtAttr.c\
	DriverManager/SQLGetStmtOption.c\
	DriverManager/SQLGetTypeInfo.c\
	DriverManager/SQLMoreResults.c\
	DriverManager/SQLNativeSql.c\
	DriverManager/SQLNumParams.c\
	DriverManager/SQLNumResultCols.c\
	DriverManager/SQLParamData.c\
	DriverManager/SQLParamOptions.c\
	DriverManager/SQLPrepare.c\
	DriverManager/SQLPrimaryKeys.c\
	DriverManager/SQLProcedureColumns.c\
	DriverManager/SQLProcedures.c\
	DriverManager/SQLPutData.c\
	DriverManager/SQLRowCount.c\
	DriverManager/SQLSetConnectAttr.c\
	DriverManager/SQLSetConnectOption.c\
	DriverManager/SQLSetCursorName.c\
	DriverManager/SQLSetDescField.c\
	DriverManager/SQLSetDescRec.c\
	DriverManager/SQLSetEnvAttr.c\
	DriverManager/SQLSetParam.c\
	DriverManager/SQLSetPos.c\
	DriverManager/SQLSetScrollOptions.c\
	DriverManager/SQLSetStmtAttr.c\
	DriverManager/SQLSetStmtOption.c\
	DriverManager/SQLSpecialColumns.c\
	DriverManager/SQLStatistics.c\
	DriverManager/SQLTablePrivileges.c\
	DriverManager/SQLTables.c\
	DriverManager/SQLTransact.c\
	DriverManager/SQLBrowseConnectW.c\
	DriverManager/SQLColAttributeW.c\
	DriverManager/SQLColAttributesW.c\
	DriverManager/SQLColumnPrivilegesW.c\
	DriverManager/SQLColumnsW.c\
	DriverManager/SQLConnectW.c\
	DriverManager/SQLDataSourcesW.c\
	DriverManager/SQLDescribeColW.c\
	DriverManager/SQLDriverConnectW.c\
	DriverManager/SQLDriversW.c\
	DriverManager/SQLErrorW.c\
	DriverManager/SQLExecDirectW.c\
	DriverManager/SQLForeignKeysW.c\
	DriverManager/SQLGetConnectAttrW.c\
	DriverManager/SQLGetConnectOptionW.c\
	DriverManager/SQLGetCursorNameW.c\
	DriverManager/SQLGetDescFieldW.c\
	DriverManager/SQLGetDescRecW.c\
	DriverManager/SQLGetDiagFieldW.c\
	DriverManager/SQLGetDiagRecW.c\
	DriverManager/SQLGetInfoW.c\
	DriverManager/SQLGetStmtAttrW.c\
	DriverManager/SQLGetTypeInfoW.c\
	DriverManager/SQLNativeSqlW.c\
	DriverManager/SQLPrepareW.c\
	DriverManager/SQLPrimaryKeysW.c\
	DriverManager/SQLProcedureColumnsW.c\
	DriverManager/SQLProceduresW.c\
	DriverManager/SQLSetConnectAttrW.c\
	DriverManager/SQLSetConnectOptionW.c\
	DriverManager/SQLSetCursorNameW.c\
	DriverManager/SQLSetDescFieldW.c\
	DriverManager/SQLSetStmtAttrW.c\
	DriverManager/SQLSetStmtOptionW.c\
	DriverManager/SQLSpecialColumnsW.c\
	DriverManager/SQLStatisticsW.c\
	DriverManager/SQLTablePrivilegesW.c\
	DriverManager/SQLTablesW.c\
	DriverManager/__connection.c\
	DriverManager/__handles.c\
	DriverManager/__info.c\
	DriverManager/__stats.c\
	DriverManager/__attribute.c
LOCAL_STATIC_LIBRARIES:= \
	liblstlc\
	libloglc\
	libinilc\
	libodbcinstlc\
	libltdlc
LOCAL_MODULE := libodbc

include $(BUILD_STATIC_LIBRARY)


#original path: cur/libodbccr.la
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -DHAVE_CONFIG_H -DHAVE_STDARG_H -ffunction-sections -fdata-sections

LOCAL_C_INCLUDES:= \
	unixODBC/cur\
	unixODBC/include\
	unixODBC/DriverManager\
	unixODBC/libltdl
LOCAL_SRC_FILES:= \
	cur/SQLAllocHandle.c\
	cur/SQLAllocHandleStd.c\
	cur/SQLAllocStmt.c\
	cur/SQLBindCol.c\
	cur/SQLBindParam.c\
	cur/SQLBindParameter.c\
	cur/SQLCancel.c\
	cur/SQLCloseCursor.c\
	cur/SQLColAttribute.c\
	cur/SQLColAttributes.c\
	cur/SQLColumnPrivileges.c\
	cur/SQLColumns.c\
	cur/SQLConnect.c\
	cur/SQLCopyDesc.c\
	cur/SQLDescribeCol.c\
	cur/SQLDescribeParam.c\
	cur/SQLEndTran.c\
	cur/SQLError.c\
	cur/SQLExecDirect.c\
	cur/SQLExecute.c\
	cur/SQLExtendedFetch.c\
	cur/SQLFetch.c\
	cur/SQLFetchScroll.c\
	cur/SQLForeignKeys.c\
	cur/SQLFreeHandle.c\
	cur/SQLFreeStmt.c\
	cur/SQLGetConnectAttr.c\
	cur/SQLGetConnectOption.c\
	cur/SQLGetCursorName.c\
	cur/SQLGetData.c\
	cur/SQLGetDescField.c\
	cur/SQLGetDescRec.c\
	cur/SQLGetDiagRec.c\
	cur/SQLGetDiagField.c\
	cur/SQLGetInfo.c\
	cur/SQLGetStmtAttr.c\
	cur/SQLGetStmtOption.c\
	cur/SQLGetTypeInfo.c\
	cur/SQLMoreResults.c\
	cur/SQLNativeSql.c\
	cur/SQLNumParams.c\
	cur/SQLNumResultCols.c\
	cur/SQLParamData.c\
	cur/SQLParamOptions.c\
	cur/SQLPrepare.c\
	cur/SQLPrimaryKeys.c\
	cur/SQLProcedureColumns.c\
	cur/SQLProcedures.c\
	cur/SQLPutData.c\
	cur/SQLRowCount.c\
	cur/SQLSetConnectAttr.c\
	cur/SQLSetConnectOption.c\
	cur/SQLSetCursorName.c\
	cur/SQLSetDescRec.c\
	cur/SQLSetDescField.c\
	cur/SQLSetParam.c\
	cur/SQLSetPos.c\
	cur/SQLSetScrollOptions.c\
	cur/SQLSetStmtAttr.c\
	cur/SQLSetStmtOption.c\
	cur/SQLSpecialColumns.c\
	cur/SQLStatistics.c\
	cur/SQLTablePrivileges.c\
	cur/SQLTables.c\
	cur/SQLTransact.c
LOCAL_MODULE := libodbccr

include $(BUILD_STATIC_LIBRARY)

