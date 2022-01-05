# Dado Release 0.0.77                    
1. Add default OnSave to config file
2. Add OnSave config parameter
3. Create gitattributes file (Issue #88) (#92)
4. Accommodate SSH URLs (#89)
5. Intitial effort at distributing code in namespace scripts
6. Add .github folder to omit list in CopyProject (Issue #71)
7. Add project-to-scripted namespace functionality

# Dado Release 0.0.76 2020-07-01 16:54:15
1. Add DyalogProjectsFolder to config file
2. Split session output on Build into multiple lines (Issue #69)
3. Provide proper error message on Build when not in project (Issue #66)
4. Build workspaces using targeted Dyalog version

# Dado Release 0.0.75 2020-06-29 12:04:27
1. Quote paths when retrieving dependencies (Issue #67)
2. Modify ReleaseOnGithub

# Dado Release 0.0.74 2020-06-26 13:55:28

# Dado Release 0.0.73 2020-06-26 13:40:23

# Dado Release 0.0.72 2020-06-26 13:15:14
1. Fix up BootStrapBuild
2. WIP
3. Move dist folder to op sys temp folder (Issue #65)
4. Fix build ID message (Issue #61)
5. Remove Dyalog system file (Issue #59)

# Dado Release 0.0.71 2020-06-25 12:27:46
1. Fix DownloadProject to handle spaces in path (Issue #57)'
2. Restructure BuildID JSON (Issue #58)
3. Update README.md
4. Update bootstrap function
5. Add Dyalog system files
6. Enhance ExecuteAPL to handle multi-line session input

# Dado Release 0.0.70 2020-06-13 08:02:11
1. Update to Acre 8.2.0+323
2. Add development dependency parameter (Issue #33)
3. Diplay current branch in session on OpenProject
4. Enhance ExecuteAPL function (Issue #50)
5. Address issue #54

# Dado Release 0.0.69 2020-06-05 08:04:52
1. Fix issue #53

# Dado Release 0.0.68 2020-06-02 16:17:22
1. Add About command

# Dado Release 0.0.67 2020-06-02 16:01:42
1. Fix OnRelease feature

# Dado Release 0.0.66 2020-06-02 15:50:26

# Dado Release 0.0.65 2020-06-02 15:46:52
1. Add OnRelease callback
2. Update README.md

# Dado Release 0.0.64 2020-05-29 15:53:19
1. Rename project from AcreTools to Dado
2. Update README.md
3. Update README.md
4. Update README.md

# Dado Release 0.0.63 2020-05-13 08:33:33
1. Add DependencyReport function to user commands and API
2. Update to Acre 1.8.0+318

# Dado Release 0.0.62 2020-05-13 08:05:58
1. Add new command DependencyReport

# Dado Release 0.0.61 2020-03-23 13:02:09
1. Add BuildID to build process
2. Update README.md
3. Fix Issue #41

# Dado Release 0.0.60 2020-01-15 10:32:34
1. Fix issues #38 and #40

# Dado Release 0.0.59 2020-01-14 16:05:52
1. handle config files without Version

# Dado Release 0.0.58 2020-01-14 15:54:39
1. Handle config files without URLs

# Dado Release 0.0.57 2020-01-14 12:13:38

# Dado Release 0.0.56 2020-01-14 12:12:19

# Dado Release 0.0.55 2020-01-14 12:09:59

# Dado Release 0.0.54 2020-01-14 12:02:55
1. Fix IsPackage

# Dado Release 0.0.53 2020-01-14 10:56:32
1. Update Acre to 7.0.0

# Dado Release 0.0.52 2020-01-14 10:45:52
1. Prevent reference injection in unnamed namespaces

# Dado Release 0.0.51 2020-01-12 08:03:34
1. Rename package cache folder
2. Quote paths for embedded spaces
3. Update README.md

# Dado Release 0.0.50 2020-01-10 14:40:32
1. Refactor ReleaseNewVersion, adding CreateNewVersion

# Dado Release 0.0.49 2020-01-10 10:18:46
1. Relocate package cache folder

# Dado Release 0.0.48 2020-01-09 11:55:47

# Dado Release 0.0.47 2020-01-09 11:48:48

# Dado Release 0.0.46 2020-01-09 11:24:39

# Dado Release 0.0.45 2020-01-09 11:21:54

# Dado Release 0.0.44 2020-01-09 11:18:42
1. Add tests for dependencies
2. Handle circular dependencies

# Dado Release 0.0.43 2020-01-04 14:32:20

# Dado Release 0.0.42 2019-12-27 20:25:03
1. Rename AddToGitHub to AddRemote
2. Turn of status window when executing APL remotely

# Dado Release 0.0.41 2019-10-15 10:57:01

# Dado Release 0.0.40 2019-10-15 10:55:33
1. Move unused assets to RandD folder
2. remove obsolete stub workspace files
3. Inlcude package in release artifacts
4. Delete obsolete functions
5. Revamp build process
6. Redesign build process
7. Changes
8. Remove obsolete functions
9. Numerous changes

# Dado Release 0.0.39 2019-09-10 09:01:04
1. Implement package management
2. Changes far too numerous to even consider
3. Even more changes
4. Many more changes
5. More changes

# Dado Release 0.0.38 2019-09-03 13:38:07
1. Changes too numerous to list
2. Too many changes to mention
3. Fix Issue #21
4. Guard all commands when not in project (Issue #17)
5. Do not overwrite existing names when injecting references (Issue @22)
6. Double quote workspace path when calling stub ws (Issue #23)
7. Add automatic dependency detection and download

# Dado Release 0.0.37 2019-08-24 12:08:35
1. Update to acre 6.0

# Dado Release 0.0.36 2019-08-24 10:50:53
1. Change csv separator for git commit report

# Dado Release 0.0.35 2019-08-24 08:58:30
1. Fix Issue #11 and Issue #12
2. Support JSON and APLAN in config files (Issue #9)

# Dado Release 0.0.34 2019-08-21 13:46:29
1. Make UCMD list function more dynamic
2. Add folder to Git ignore file (Issue #8)

# Dado Release 0.0.33 2019-08-18 14:09:13
1. Add AliasType parameter

# Dado Release 0.0.32 2019-08-15 11:32:10
1. Revamp install yet again

# Dado Release 0.0.31 2019-08-14 15:52:50

# Dado Release 0.0.30 2019-08-14 15:36:45

# Dado Release 0.0.29 2019-08-14 15:22:42

# Dado Release 0.0.28 2019-08-14 15:07:12
1. Define references for cross-project calls

# Dado Release 0.0.27 2019-08-09 16:29:56

# Dado Release 0.0.26 2019-08-09 16:28:24

# Dado Release 0.0.25 2019-08-09 16:13:37
1. Add API to QuadSE

# Dado Release 0.0.24 2019-08-09 09:10:52
1. Revamp installation

# Dado Release 0.0.23 2019-08-07 16:39:45
1. Initial UCMD replacement
2. Update README.md
3. Update README.md
4. Update README.md

# Dado Release 0.0.22 2019-08-05 13:29:29

# Dado Release 0.0.21 2019-08-05 13:27:58

# Dado Release 0.0.20 2019-08-05 12:53:32

# Dado Release 0.0.19 2019-08-05 12:40:09

# Dado Release 0.0.18 2019-08-05 12:37:56

# Dado Release 0.0.17 2019-08-05 12:33:11
1. Update README.md
2. Update README.md

# Dado Release 0.0.16 2019-08-05 11:52:08

# Dado Release 0.0.15 2019-08-05 11:40:27
1. Add startup session functionality

# Dado Release 0.0.14 2019-08-01 16:35:06
1. Add PushMaster command

# Dado Release 0.0.13 2019-08-01 16:23:03

# Dado Release 0.0.13 2019-08-01 14:58:29
1. Modify CopyUserCommandFile to reflect new file name
2. Rename UCMD.dyalog to UCMD.txt so NOT found by User Command framework
3. Move UCMD.dyalog file to Runtime Assets folder
4. Redesign how application ws is created (Issue #10)

# Dado Release 0.0.12 2019-07-31 09:59:25
1. Only include ucmd.dyalog if user command app (Issue #6)

# Dado Release 0.0.11 2019-07-31 08:59:28
1. Rename CheckOut command to Checkout
2. Rename ShowCommit family of commands

# Dado Release 0.0.10 2019-07-28 11:26:37
1. Extract Build function from ReleaseNewVersion
2. Add command SourceCode to display source

# Dado Release 0.0.9 2019-07-27 15:56:29
1. Revamp User Command installation
2. Update README.md

# Dado Release 0.0.8 2019-07-26 09:39:40
1. Add new user command Version

# Dado Release 0.0.7 2019-07-24 09:22:10
1. Generalize UCMD installation for any project
2. Enhance user command process

# Dado Release 0.0.6 2019-07-20 17:33:54
1. Refactor user command code

# Dado Release 0.0.5 2019-07-19 09:16:01
1. Add automatic UCMD install

# Dado Release 0.0.4 2019-07-18 17:34:20
1. Implement as user command
2. Add ReleaseExperimentalVersion function
3. Fix ShowChanges output

# Dado Release 0.0.3 2019-02-07 10:04:30
1. Add testing framework, other misc changes

# Dado Release 0.0.2 2019-02-06 13:32:14
1. Fix value error on missing ApplicationStartup parameter (Issue #3)

# Dado Release 0.0.1 2019-01-12 13:05:39
1. Changes
2. Changes
3. Changes
4. Changes...
5. changes
6. Changes
7. Changes
8. Update README.md
9. Clean up
10. More changes
11. cleanup
12. Make left arg consistent
13. Clean up
14. Rename some functions
15. Fix quad lx
16. Move Git code up
17. clean up
18. Cleanup
19. Use release instead of version
20. Add extra heading level to app notes
21. Change release note file names
22. Fix release not bugs
23. Revamp release notes
24. Add application release notes.
25. Automate release process
26. Replace Acre Load with Open to reflect new Acre version.
27. Acre renaming
28. Changes
29. Changes to NewVersionBranch
30. Change to PullMaster, etc.
31. Cleanup
32. Version 0.0.0
33. New flow functions, etc.
34. Fix to ProcessLog so renames are handled properly.
35. New Git utilities for history.
36. Update package.json
37. Create package.json
38. Redo of BuildApplication
39. Changes to build application process
40. Fix to BuildApplication_
41. Added BuildID and BuildDate to package config file.
42. []NA for windows
43. TempDir user V17 i-beam
44. Add caching
45. Fix for empty folder name
46. Enhanced function keys and other changes.
47. Add Help function and change PFKeys
48. Integrate new Acre Refresh function.
49. Combined uncommitted and committed changes to one function.
50. New Git functions, PFKEYS, etc.
51. Add DeleteBranch, changed MergeToMaster
52. New Git functions
53. quad vars and fix fqdn
54. get out if no foos
55. git tools refactor
56. removed obsolete functions
57. Add better filepath translation
58. translate file path to ws path
59. Use AcreConfig namespace provided by ACRE on OpenProject
60. Cleanup and various changes
61. Update README.md
62. Universal GUID function
63. Get system temp dir
64. Win and Linux compatible DeleteFolder
65. Changed Folder Structure for Packages, etc.
66. APLVersion structure
67. Changes
68. Changes
69. Cleanup
70. Allow correct language detection
71. Wholesale chantges...
72. changes
73. Update README.md
74. BuildApplication function added
75. git utilities
76. Changes to BuildPackage, etc.
77. Changes
78. Update README.md
79. Update README.md
80. Update README.md
81. Added RunInProcess function
82. Added SetAcreConfig
83. Update README.md
84. Added SetReference Function
85. Changes
86. Changes
87. Changes
88. Changes
89. Update README.md
90. Update README.md
91. Update README.md
92. Initial commit
