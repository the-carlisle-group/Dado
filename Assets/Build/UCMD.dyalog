 :namespace ucmd                                                 
    ⎕IO ⎕ML←0 1                                                         
    GetProjectSpace←{
        9=⎕NC 'ProjectSpace':ProjectSpace 
        f←{6::##.t  ⋄ SALT_Data.SourceFile} 0
        s←⎕NS ''
        p n←2↑⎕NPARTS f 
        d←p,n,'\'
        _←s.⎕CY d,n,'.dws'
        r←s.CarlisleGroup.AcreTools.SetAppConfig d 
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
