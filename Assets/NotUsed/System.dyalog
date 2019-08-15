 :Namespace                                           
    LoadAcreToolsApplication←{
        p n←2↑⎕NPARTS ⍵ 
        s←⍎('zApps.',n)⎕SE.⎕NS ''
        _←s.⎕CY p,n,'\',n,'.dws'
        a←s.CarlisleGroup.AcreTools.Main
        m←s a.SetupApplication p,n,'\' 
        c←m.AcreConfig  
        0⊣⍎'⎕SE.',n,'←a.GetAPISpace m'
        }
 :EndNamespace                                                         

