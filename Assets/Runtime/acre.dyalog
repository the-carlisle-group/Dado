 :namespace acreInit                                                    
    ⎕io ⎕ml←0                                                          
    name  ← ,'acre'  ⍝ string                                           
    group ← ,¨ 'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'  'acre'    ⍝  list                                            
    cmds  ← ,¨ 'AfterSave'  'CaseCode'  'Changefile'  'Changes'  'Close'  'Config'  'CreateProject'  'Deletefile'  'EditArray'  'Erase'  'FromAPLAN'  'Itemname'  'Log'  'Nameclass'  'OpenProject'  'Projects'  'PurgeHistory'  'Redo'  'Refresh'  'Restore'  'SetChanged'  'Sourcefile'  'Stats'  'ToAPLAN'  'Undo'  'Version'    ⍝  list                                            
    help  ← ,¨ 'Specify or query callback to run after saving to file'  'Toggle between names with and without case-codes'  'Putative changefile name(s) of item(s) in tracked project'  'List changed items in project or changes to one'  'Close (stop tracking) a tracked project'  'Clone of project configuration namespace'  'Create a new project'  'Putative deletefile name(s) of item(s) in tracked project'  'Edit any named array. In APLAN if not regular text.'  'Erase an item, items or a space from a tracked project'  'Evaluate an APLAN expression'  'Full or relative ns path of item in putative sourcefile'  'Hide, show, clear or query the log'  'Nameclass of item(s)'  'Load project code into ws for development'  'List spaces & folders of all tracked projects.'  'Fix changes to a tracked project'  'Re-apply last undone change.'  'Update tracked project with source changes since previous'  'Bring back items ]erased'  'Write items as if changed in the editor'  'Putative sourcefile name(s) of item(s) in tracked project'  'Project Statistics'  'Format a value as APLAN'  'Revert to previous version'  'Version of acre in use'    ⍝  list                                            
    type  ← ,¨ 'shared'  'shared'  'item'  'item'  'project'  'project'  'shared'  'item'  'shared'  'item'  'shared'  'shared'  'shared'  'shared'  'shared'  'shared'  'item'  'item'  'project'  'item'  'item'  'item'  'project'  'shared'  'item'  'shared'    ⍝  list                                            
    syn   ← ,¨ ']acre.AfterSave #.function.name | '''' '  ']acre.CaseCode item(s) '  ']acre.Changefile item(s) '  ']acre.Changes space | item  -when[=]'  ']acre.Close space  -all'  ']acre.Config space  -all'  ']acre.CreateProject folder space  -casecode:off -keephistory:off -variables:off'  ']acre.Deletefile item(s) '  ']acre.EditArray item '  ']acre.Erase item(s) | space  -confirm: -recursive'  ']acre.FromAPLAN name | "expression" '  ']acre.Itemname sourcefile(s) '  ']acre.Log hide | show | file | clear | all | find "string" | number '  ']acre.Nameclass item(s) '  ']acre.OpenProject folder [space]  -dependencies:on -track:on'  ']acre.Projects   -when[=]'  ']acre.PurgeHistory space | item '  ']acre.Redo item(s) '  ']acre.Refresh space  -all'  ']acre.Restore item '  ']acre.SetChanged item(s) | space '  ']acre.Sourcefile item(s) '  ']acre.Stats space  -all'  ']acre.ToAPLAN name | "expression" '  ']acre.Undo item(s) '  ']acre.Version  '    ⍝  list                                            
    parse ← ,¨ '999S'  '999S'  '999S'  '999S -when[=]'  '999S -all'  '999S -all'  '999S -casecode:off -keephistory:off -variables:off'  '999S'  '999S'  '999S -confirm: -recursive'  '999S'  '999S'  '999S'  '999S'  '999S -dependencies:on -track:on'  '999S -when[=]'  '999S'  '999S'  '999S -all'  '999S'  '999S'  '999S'  '999S -all'  '999S'  '999S'  '999S'    ⍝  list                                            
  ∇ r←List                                                             
    r←{⎕NS''}¨⍳⍴cmds                                                   
    r.(Name Desc Group Parse)←↓⍉↑cmds help group parse                 
  ∇                                                                    
   Help←{r←'' 'Syntax: ',¨help syn⊃¨⍨cmds⍳⊂⍵                           
         0≥⎕SE.⎕NC name:⍕⍪r                                            
         ⍕⍪r,⊂⎕SE.acre._code.(MS.HA,Cc ⍵)                               
   }                                                                   
   Run←{cmd arg←⍵                                                      
    (path wsid)←,\{⍵(↑{⍺⍵}↓)⍨(1+⊢⍳⌈/)+\⍵∊'\/'}##.SourceFile            
    new←{⎕se.acre._code. newSession''}⍣(~new)⊢new←0∊⎕SE.⎕NC name        
    z←⎕SE.{6::0 ⋄ ⊢'#.acre'∘⎕CY ⍵}⍣new⊢wsid                             
    nsi←((⎕XSI+.=¨'.')⍳1)⊃⎕NSI  ⍝ whence called                        
    type←type⊃⍨cmds⍳⊂cmd                                               
  ⍝                    ↓↓↓↓                                            
    ⎕SE.acre._code. userCmdRun new cmd arg type nsi path wsid name      
   }                                                                   
 :endnamespace                                                         
