 :Namespace                                           
    LoadAcreToolsApplication←{
        p n←2↑⎕NPARTS ⍵ 
        s←⍎('zApps.',n)⎕SE.⎕NS ''
        _←s.⎕CY p,n,'\',n,'.dws'
        m←s.CarlisleGroup.AcreTools.Main.SetAppConfig p,n,'\' 
        9≠m.⎕NC 'API':0 
        _←⍎'⎕SE.',n,'←m.API'
        0
       }
 :EndNamespace                                                         

