 :namespace acretools                                                 
    ⎕io ⎕ml←0 1                                                         
    
   Load←{
       9=⎕SE.⎕NC 'AcreTools':0
       f←{6::##.t  ⋄ SALT_Data.SourceFile} 0
       ws←'acretools.dws',⍨∊'/',⍨¨¯5↓(~f∊'\/')⊆f
       '#.CarlisleGroup.AcreTools' ⎕SE.⎕CY ws
   }
    
    
    ∇ z←List;_
      _←Load 0 
      z←⎕SE.AcreTools.UserCommandList 0                                      
    ∇
        
   Help←{                                
      ⍺ ⎕SE.AcreTools.UserCommandHelp ⍵                             
   }                                                                   
   
  
   Run←{
      ⎕SE.AcreTools.UserCommandRun ⍵
     }                                                                   
 :endnamespace                                                         
