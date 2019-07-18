 :namespace acretools                                                 
    ⎕io ⎕ml←0 1                                                         
    
    ∇ z←List 
      z←{                                       
         c←⊂'AddToGitHub' 'Add project to GitHUb'
         c,←⊂'Commit' 'Commit changes to feature branch'
         c,←⊂'CheckOut' 'Checkout a branch'
         c,←⊂'NewFeatureBranch'  'Create a new feature branch'
         c,←⊂'MergeFeatureBranch' 'Merge feature branch into master branch'
         c,←⊂'ReleaseNewVersion' 'Release a new version'
         c,←⊂'RebaseFeatureBranch' 'Rebase feature branch to the master branch'
         c,←⊂'RebaseContinue' 'Continue rebase after dealing with merge conflicts'
         c,←⊂'RunGitCommand' 'Run arbitrary Git command'
         c,←⊂'ShowBranches' 'Show branches'
         c,←⊂'ShowCommit'  'Show single commit in detail'
         c,←⊂'ShowCommits' 'Show recent commits'
         c,←⊂'ShowCommits' 'Show recent commits in detail' 
         c,←⊂'ShowChanges' 'Show changes on current branch'
         c,←⊂'ShowHistory' 'Show history of an item'
         c,←⊂'ShowProjects' 'Show projects'
         c,←⊂'ShowTags' 'Show tags'
         z←{⎕NS ''}¨⍳≢c
         z.(Group Parse)←⊂'acretools' ''
         z.(Name Desc)←c
         z
       }0
    ∇
        
   Help←{                                
         'No help available at this time'                              
   }                                                                   
   
   Load←{
       9=⎕SE.⎕NC 'AcreTools':0
       f←SALT_Data.SourceFile
       ws←'acretools.dws',⍨∊'/',⍨¨¯5↓(~f∊'\/')⊆f
       '#.CarlisleGroup.AcreTools' ⎕SE.⎕CY ws
   }

   Run←{
     _←Load 0
     c a←⍵                                                      
     (⎕SE.AcreTools⍎c) a 
     }                                                                   
 :endnamespace                                                         
