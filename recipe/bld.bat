set HDF5_DIR=%LIBRARY_PREFIX%
set BZIP2_DIR=%LIBRARY_PREFIX%

"%PYTHON%" -m pip install --no-deps --ignore-installed . ^
                          --global-option="hdf5=%LIBRARY_PREFIX%" ^
                          --global-option="bzip2=%LIBRARY_PREFIX%"
if errorlevel 1 exit 1
