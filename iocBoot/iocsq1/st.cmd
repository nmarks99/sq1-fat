# ../../bin/${EPICS_HOST_ARCH}/sq1 st.cmd
< envPaths

# Shell prompt
epicsEnvSet("IOCSH_PS1", "$(IOC)>")

epicsEnvSet("PREFIX", "sq1:")
epicsEnvSet("LUA_SCRIPT_PATH", "./lua_scripts")

dbLoadDatabase("../../dbd/iocsq1Linux.dbd")
iocsq1Linux_registerRecordDeviceDriver(pdbbase)

# Add IP address of Windows machine
# epicsEnvSet("EPICS_CA_ADDR_LIST", "164.54.60.205")

dbLoadRecords("./sq1.db", "P=$(PREFIX)")

###############################################################################
iocInit
###############################################################################

# print the time our boot was finished
date
