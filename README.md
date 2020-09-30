# Test IOC for Fast Archiver

The ideia is to test the Archiver Appliance to archive "fast" data. By "fast"
we mean something in the order of a few MB/s, usually 1 MB/s per IOC. We do
have a flexibility in how large we want our data to be, as long as the data
rate remains constant. So, some examples could be 1 large 8-bit waveform of
1M points each second, 1 32-bit waveform of 250k points each second, etc.

Collectivaly we would want to test a few hundred IOCs, something as 200, to
mimic a distributed application sending 1 MB/s to a central Archiver Appliance,
tottaling 200MB/s, storing the data for a few days (maximum 1 week).

## Build Instructions

This is a typical EPICS IOC. So follow the usual steps:

1. Crate a `configure/RELEASE.local` example with the EPICS modules versions.
There is an example you can use as a template called `configure/RELEASE.local.example`
2. `make`

## Running Instructions

In order to run the IOC you can use the convenience script
called `run-ioc.sh` located at the top directoty of this repository.

The options are:

```
./run-ioc.sh [P prefix] [R prefix] [SCAN rate] [Number of elements in waveform]
```
