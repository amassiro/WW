Jet Energy Resolution
====

Test file in:

    /afs/cern.ch/work/v/vuko/public/wzJets-test.root
    /home/amassiro/Cern/Code/VBF/qqHWW/AnalysisPackage_qqHWWlnulnu/test/WW/JER
    
Recipe:

    https://twiki.cern.ch/twiki/bin/viewauth/CMS/JetResolution

To plot:

    r99t wzJets-test.root draw.cxx
    r99t wwJets-test.root drawWW.cxx
    
    

    
Results from WW:

nominal

    residual[0] = 0.0341667 +/- 0.000559652
    residual[1] = 0.0363367 +/- 0.000571476
    residual[2] = 0.0503956 +/- 0.00105134
    residual[3] = 0.0534288 +/- 0.00116874
    residual[4] = 0.0898486 +/- 0.00306731
 
down

    residual[0] = 0 +/- 0
    residual[1] = 0.00474695 +/- 7.46563e-05
    residual[2] = 0.0286482 +/- 0.000597652
    residual[3] = 0.0292603 +/- 0.00064006
    residual[4] = 0.0477256 +/- 0.00162929

up

    residual[0] = 0.0515842 +/- 0.000844952
    residual[1] = 0.052095 +/- 0.00081931
    residual[2] = 0.0662676 +/- 0.00138246
    residual[3] = 0.0712116 +/- 0.00155773
    residual[4] = 0.121961 +/- 0.0041636

 
Summary:

    (0.0342, 0.0363, 0.0504, 0.0534, 0.0898 )   nominal
    (0.0000, 0.0047, 0.0286, 0.0293, 0.0477 )   down
    (0.0516, 0.0521, 0.0663, 0.0712, 0.1220 )   up


