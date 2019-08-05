# AcreTools
AcreTools is a collection of User Commands for working with Acre projects and Git (and GitHub). See the wiki for how to install and use AcreTools in your Dyalog APL session as a user (as an APL programmer).

These notes are for working and developing AcreTools itself.

## Bootstrapping
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

## The Octokit dll
The Ockokit dll may be blocked by Windows when it is downloaded from GitHub.
If you have ay problems with it, edit the properties of the file and manually unblock it.
Note that this affects end-users of AcreTools as well as developers of AcreTools itself.
As a developer you will have this dll in two places - as a project you manage and as an user command.
Make sure it is unblocked in both places. 
If you attempt to use a blocked version, a subsequent attempt to use an unblocked version will not work
without restarting APL. So, unblock all locations and restart APL.
