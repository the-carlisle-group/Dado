 :namespace acreInit                                                    
    ⎕io ⎕ml←0                                                          
    name  ← ,'acre'  ⍝ string                                           
    group ← ,¨ 'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'    ⍝  list                                            
    cmds  ← ,¨ 'Changes'  'Close'  'CreateProject'  'EditArray'  'Erase'  'FromAPLAN'  'Log'  'OpenProject'  'Projects'  'PurgeHistory'  'Redo'  'Refresh'  'Restore'  'SetChanged'  'Stats'  'ToAPLAN'  'Undo'    ⍝  list                                            
    help  ← ,¨ 'List changed items in project or changes to one'  'Close (stop tracking) a tracked project'  'Create a new project'  'Edit any array. In APLAN if not regular text.'  'Erase an item, items or a space from a tracked project'  'Evaluate an APLAN expression'  'Hide, show, clear or request all or n msgs from the log'  'Load project code into ws for development'  'List spaces & folders of all tracked projects.'  'Fix changes to a tracked project'  'Re-apply last undone change.'  'Update tracked project with source changes since previous'  'Bring back items ]erased'  'Write items as if changed in the editor'  'Project Statistics'  'Format a value as APLAN'  'Revert to previous version'    ⍝  list                                            
    type  ← ,¨ 'item'  'project'  'shared'  'shared'  'item'  'shared'  'shared'  'shared'  'shared'  'item'  'item'  'project'  'item'  'item'  'project'  'shared'  'item'    ⍝  list                                            
    syn   ← ,¨ ']acre.Changes space | item -help -when[=]'  ']acre.Close space -help'  ']acre.CreateProject folder space -help -casecode:off -variables:off -keephistory:off'  ']acre.EditArray item -help'  ']acre.Erase item(s) | space -help -confirm:'  ']acre.FromAPLAN name | "expression" -help'  ']acre.Log "hide" | "show" | "file" | "clear" | "all" | number -help'  ']acre.OpenProject folder [space] -help -dependencies:on -track:on'  ']acre.Projects  -help -when[=]'  ']acre.PurgeHistory space | item -help'  ']acre.Redo item(s) -help'  ']acre.Refresh space -help'  ']acre.Restore item -help'  ']acre.SetChanged item(s) | space -help'  ']acre.Stats space -help'  ']acre.ToAPLAN name | "expression" -help'  ']acre.Undo item(s) -help'    ⍝  list                                            
    parse ← ,¨ '-help -when[=]'  '-help'  '-help -casecode:off -variables:off -keephistory:off'  '-help'  '-help -confirm:'  '-help'  '-help'  '-help -dependencies:on -track:on'  '-help -when[=]'  '-help'  '-help'  '-help'  '-help'  '-help'  '-help'  '-help'  '-help'    ⍝  list                                            
  ∇ r←List                                                             
    r←{⎕NS''}¨⍳⍴cmds                                                   
    r.(Name Desc Group Parse)←↓⍉↑cmds help group parse                 
  ∇                                                                    
   Help←{r←'' 'Syntax: ',¨help syn⊃¨⍨cmds⍳⊂⍵                           
         0≥⎕SE.⎕NC name:⍕⍪r                                            
         ⍕⍪r,⊂⎕SE.acre._code.(MS.HA,Cc ⍵)                               
   }                                                                   
   Run←{cmd arg←⍵                                                      
    arg.help:Help cmd                                                  
    (path wsid)←,\{⍵(↑{⍺⍵}↓)⍨(1+⊢⍳⌈/)+\⍵∊'\/'} {6::##.SourceFile ⋄ SourceFile}0            
    new←{⎕se.acre._code. newSession''}⍣(~new)⊢new←0∊⎕SE.⎕NC name        
    z←⎕SE.{6::0 ⋄ ⊢'#.acre'∘⎕CY ⍵}⍣new⊢wsid                             
    nsi←((⎕XSI+.=¨'.')⍳1)⊃⎕NSI  ⍝ whence called                        
    type←type⊃⍨cmds⍳⊂cmd                                               
  ⍝                    ↓↓↓↓                                            
    ⎕SE.acre._code. userCmdRun new cmd arg type nsi path wsid name      
   }                                                                   
 :endnamespace                                                         
