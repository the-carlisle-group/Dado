 :Namespace                                           
    LoadAcreToolsApplication←{
        p n←2↑⎕NPARTS ⍵ 
        s←⍎('AcreTools.',n)⎕SE.⎕NS ''
        _←s.⎕CY p,n,'\',n,'.dws'
        _←s.CarlisleGroup.AcreTools.SetAppConfig p,n,'\' 
        ⍬
       }
 :EndNamespace                                                         

