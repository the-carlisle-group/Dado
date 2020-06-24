
>**He too spoke well - whoever it was, for his identity is uncertain - who said, when asked why he took so much trouble 
over a piece of craftsmanship that would never reach more than a very few people: "A few is enough for me; so is one; so is none."**

Seneca, *Epistles 7.11*

>**No man but a blockhead ever wrote code except for money.**

Samuel Johnson

# Dado
Dado is a collection of User Commands that implements a framework for Dyalog APL development operations.  See the wiki for how to install and use Dado in your Dyalog APL session as a user (as an APL developer).

These notes are for working and developing Dado itself.

## Bootstrapping
Dado functions can be called directly from the Dado project space when working on Dado itself.
This is useful for testing new functionality and debugging. You can also use a properly installed version of Dado when working on Dado. Thus when working on Dado, you can decide whether to use the current state of things or the installed state.

You can call `#.Dado.BootStrapBuild 0` to install the current state of the project as a User Command.
This function creates a new application folder (`dist/Application`) but does not create a new release, or push or publish anything. 
The application folder is then automatically copied over to the location of the user command. Restart APL to see the effects.

## The Octokit dll
The Octokit is a GitHub API client for .NET. 
The Ockokit dll may be blocked by Windows when it is downloaded from GitHub.
If you have any problems with it, edit the properties of the file and manually unblock it.
Note that this affects end-users of Dado as well as developers of AcreTools itself.
As a developer you will have this dll in two places - as a project you manage and as a user command.
Make sure it is unblocked in both places. You will find it under `Dado/Assets/Runtime`.
If you attempt to use a blocked version, a subsequent attempt to use an unblocked version will not work
without restarting APL. So, unblock all locations and restart APL.
