# AcreTools
AcreTools is a collection of User Commands for working with Acre projects and Git (and GitHub). See the wiki for how to install and use AcreTools in your Dyalog APL session as a user (as an APL programmer).

These notes are for working and deloping AcreTools itself.

## BootStrapping ##
Many AcreTools functions can be called directly from the AcreTools project space.
This is useful for testing new functionality and debugging.
However, in general, you should a use a properly installed version of AcreTools when working on AcreTools itself. 
That is, you should use User Commands.

Specifically, you cannot call `#.CarlisleGroup.AcreTools.ReleaseNewVersion` to release a new version. 
You must use `]ACRETOOLS.RealeaseNewVersion`. 
This will work in most cases, unless you are making changes deep inside the build process.  
In this case, you might get an error. If so, you should directly call `#.CarlisleGroup.AcreTools.BootStrapBuild 0`.
This function creates a new application folder (`dist/Application`) but does not create a new release. 
Manually copy and paste the application folder to the installed location of AcreTools, restart APL,
and re-attempt put out release using `]ACRETOOLS.ReleaseNewVersion`  


