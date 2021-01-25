@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  citygml-tools startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%
set WORKING_DIR=%CD%

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CITYGML_TOOLS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Xms1G"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\citygml-tools-1.4.2.jar;%APP_HOME%\lib\global-app-mover-1.4.2.jar;%APP_HOME%\lib\height-changer-1.4.2.jar;%APP_HOME%\lib\lod-filter-1.4.2.jar;%APP_HOME%\lib\reproject-1.4.2.jar;%APP_HOME%\lib\texture-clipper-1.4.2.jar;%APP_HOME%\lib\citygml-tools-common-1.4.2.jar;%APP_HOME%\lib\citygml4j-2.11.2.jar;%APP_HOME%\lib\picocli-4.5.2.jar;%APP_HOME%\lib\gt-epsg-extension-23.1.jar;%APP_HOME%\lib\gt-epsg-hsql-23.1.jar;%APP_HOME%\lib\gt-referencing-23.1.jar;%APP_HOME%\lib\commons-imaging-1.0-alpha1.jar;%APP_HOME%\lib\citygson-1.1.2.jar;%APP_HOME%\lib\jaxb-runtime-2.3.2.jar;%APP_HOME%\lib\xsom-2.3.2.jar;%APP_HOME%\lib\gt-metadata-23.1.jar;%APP_HOME%\lib\gt-opengis-23.1.jar;%APP_HOME%\lib\net.opengis.ows-23.1.jar;%APP_HOME%\lib\org.w3.xlink-23.1.jar;%APP_HOME%\lib\jai_core-1.1.3.jar;%APP_HOME%\lib\hsqldb-2.4.1.jar;%APP_HOME%\lib\ejml-ddense-0.34.jar;%APP_HOME%\lib\commons-pool-1.5.4.jar;%APP_HOME%\lib\jgridshift-core-1.2.jar;%APP_HOME%\lib\GeographicLib-Java-1.49.jar;%APP_HOME%\lib\gson-2.8.6.jar;%APP_HOME%\lib\stax-ex-1.8.1.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.2.jar;%APP_HOME%\lib\txw2-2.3.2.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.8.jar;%APP_HOME%\lib\FastInfoset-1.2.16.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.1.jar;%APP_HOME%\lib\relaxng-datatype-2.3.2.jar;%APP_HOME%\lib\ejml-core-0.34.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\javaee-api-7.0.jar;%APP_HOME%\lib\systems-common-java8-0.7.2.jar;%APP_HOME%\lib\org.eclipse.emf.ecore.xmi-2.15.0.jar;%APP_HOME%\lib\org.eclipse.emf.ecore-2.15.0.jar;%APP_HOME%\lib\org.eclipse.emf.common-2.15.0.jar;%APP_HOME%\lib\javax.mail-1.5.0.jar;%APP_HOME%\lib\si-units-java8-0.7.1.jar;%APP_HOME%\lib\uom-se-1.0.8.jar;%APP_HOME%\lib\si-quantity-0.7.1.jar;%APP_HOME%\lib\activation-1.1.jar;%APP_HOME%\lib\uom-lib-common-1.0.2.jar;%APP_HOME%\lib\unit-api-1.0.jar


@rem Execute citygml-tools
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CITYGML_TOOLS_OPTS%  -classpath "%CLASSPATH%" org.citygml4j.tools.CityGMLTools %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CITYGML_TOOLS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CITYGML_TOOLS_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
