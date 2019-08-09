   :Namespace                                           
      ⎕IO ⎕ML←0 1
       
      OnSessionStart←{
         s←Include 'System'
         s.LoadAcreToolsApplication SourceFile
       }
       GetProjectSpace←{
        n←1⊃⎕NPARTS SourceFile 
        a←⎕SE.zApps⍎n
        a⍎'.'@('/'∘=)⊃a.Packages
    }
    ∇ z←List
        z←(GetProjectSpace 0).UCMD.List 0                                      
    ∇
    Help←{                                
      (GetProjectSpace 0).UCMD.Help ⍵                             
   }
    Run←{
      (GetProjectSpace 0).UCMD.Run ⍵
     }  
   :EndNamespace                                                         

