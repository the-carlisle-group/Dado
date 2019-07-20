 :namespace acretools                                                 
    ⎕io ⎕ml←0 1                                                         
    
   Load←{
       9=⎕SE.⎕NC 'AcreTools':0
       f←SALT_Data.SourceFile
       ws←'acretools.dws',⍨∊'/',⍨¨¯5↓(~f∊'\/')⊆f
       '#.CarlisleGroup.AcreTools' ⎕SE.⎕CY ws
   }
    
    
    ∇ z←List;_
      _←Load 0 
      z←⎕SE.AcreTools.UserCommandList 0                                      
    ∇
        
   Help←{                                
         _←Load 0
         ⍺ ⎕SE.AcreTools.UserCommandHelp ⍵                             
   }                                                                   
   
  
   Run←{
     _←Load 0
     ⎕SE.AcreTools.UserCommandRun ⍵
     }                                                                   
 :endnamespace                                                         
