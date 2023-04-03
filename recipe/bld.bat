set HDF5_DIR=%LIBRARY_PREFIX%
set BZIP2_DIR=%LIBRARY_PREFIX%
set COPY_DLLS=FALSE

del /F /Q .\tables\*.c

%PYTHON% setup.py install --hdf5=%LIBRARY_PREFIX% ^
                          --bzip2=%LIBRARY_PREFIX% ^
                          --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
