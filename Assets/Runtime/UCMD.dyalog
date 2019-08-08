   :Namespace                                           
      ⎕IO ⎕ML←0 1
       
      OnSessionStart←{
         s←Include 'System'
         s.LoadAcreToolsApplication SourceFile
       }
       GetProjectSpace←{
        n←1⊃⎕NPARTS SourceFile 
        a←⎕SE.AcreTools⍎n
        a⍎'.'@('/'∘=)⊃a.Packages
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
   :EndNamespace                                                         

