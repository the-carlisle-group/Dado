 :namespace ucmd                                                 
    ⍝ AcreTools User Command File
    ⍝ This file is identical for any Acre-based user command project. 
    ⎕IO ⎕ML←0 1                                                         
    GetProjectSpace←{
        9=⎕NC 'ProjectSpace':ProjectSpace 
        f←{6::##.t  ⋄ SALT_Data.SourceFile} 0
        s←⎕NS ''
        _←s.⎕CY '.dws',⍨(⊃⌽⍸'_'=f)↑f
        r←s.CarlisleGroup.AcreTools.SetAppConfig ⊃⎕NPARTS f  
        ⎕THIS.ProjectSpace←r
        r
    }
    ∇ z←List
      z←(GetProjectSpace 0).UserCommandList 0                                      
    ∇
    Help←{                                
      (GetProjectSpace 0).UserCommandHelp ⍵                             
   }
    Run←{
      (GetProjectSpace 0).UserCommandRun ⍵
     }                                                                   
 :endnamespace                                                         
