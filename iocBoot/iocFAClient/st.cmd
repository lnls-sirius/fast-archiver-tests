#!../../bin/linux-x86_64/FAClient

< envPaths

epicsEnvSet("P", "$(P=Archiver-Client:)")
epicsEnvSet("R", "$(R=Prod-001:)")
epicsEnvSet("NELEMENTS", "$(NELEMENTS=100000)")

cd "${TOP}"

## Register all support components
dbLoadDatabase("${TOP}/dbd/FAClient.dbd")
FAClient_registerRecordDeviceDriver(pdbbase)

## Load record instances
dbLoadRecords("${TOP}/db/FAClient.db", "P=${P}, R=${R}, NELEMENTS=${NELEMENTS}")

cd "${TOP}/iocBoot/${IOC}"
iocInit
