##################
# Shape analysis #
##################


rm -r output_Latinos_tree_2012_2orMoreJet2012
mkdir output_Latinos_tree_2012_2orMoreJet2012
ls output_Latinos_tree_2012/ |  awk '{print "./bin/FilterCut.exe output_Latinos_tree_2012/"$1" output_Latinos_tree_2012_2orMoreJet2012/"$1" 012Jet2012"}' 
ls output_Latinos_tree_2012/ |  awk '{print "./bin/FilterCut.exe output_Latinos_tree_2012/"$1" output_Latinos_tree_2012_2orMoreJet2012/"$1" 012Jet2012"}'   &> skim2j.sh
chmod +x skim2j.sh
./skim2j.sh




# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~    Shape analysis  DYee and DYmumu  ~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# now estimation of number of events
./bin/MCDATAComparisonPLOTTool_ManyWP.exe test/WW/DYRinout/testMCDATAComparisonPLOTTool_DYRinout_AllHiggsMassPoints.cfg

rm test/WW/DYRinout/result-value.txt
rm test/WW/DYRinout/result-value-ee.txt
rm test/WW/DYRinout/result-value-mumu.txt
rm test/WW/DYRinout/result-syst.txt
rm test/WW/DYRinout/result-syst-ee.txt
rm test/WW/DYRinout/result-syst-mumu.txt
rm test/WW/DYRinout/result-syst-stat.txt
rm test/WW/DYRinout/result-syst-stat-ee.txt
rm test/WW/DYRinout/result-syst-stat-mumu.txt
rm test/WW/DYRinout/result-syst-stat-MC.txt
rm test/WW/DYRinout/result-syst-stat-MC-ee.txt
rm test/WW/DYRinout/result-syst-stat-MC-mumu.txt
rm test/WW/DYRinout/result-syst-method.txt
rm test/WW/DYRinout/result-syst-method-ee.txt
rm test/WW/DYRinout/result-syst-method-mumu.txt
rm test/WW/DYRinout/result-syst-method-MC.txt
rm test/WW/DYRinout/result-syst-method-MC-ee.txt
rm test/WW/DYRinout/result-syst-method-MC-mumu.txt
rm test/WW/DYRinout/result-SF.txt
rm test/WW/DYRinout/result-SF-ee.txt
rm test/WW/DYRinout/result-SF-mumu.txt
rm test/WW/DYRinout/result-SF-MC.txt
rm test/WW/DYRinout/result-SF-MC-ee.txt
rm test/WW/DYRinout/result-SF-MC-mumu.txt
rm test/WW/DYRinout/result-R.txt

echo DY     > test/WW/DYRinout/result-value.txt
echo DYee   > test/WW/DYRinout/result-value-ee.txt
echo DYmumu > test/WW/DYRinout/result-value-mumu.txt
echo DY     > test/WW/DYRinout/result-syst.txt
echo DYee   > test/WW/DYRinout/result-syst-ee.txt
echo DYmumu > test/WW/DYRinout/result-syst-mumu.txt
echo DY     > test/WW/DYRinout/result-syst-stat.txt
echo DYee   > test/WW/DYRinout/result-syst-stat-ee.txt
echo DYmumu > test/WW/DYRinout/result-syst-stat-mumu.txt
echo DY     > test/WW/DYRinout/result-syst-stat-MC.txt
echo DYee   > test/WW/DYRinout/result-syst-stat-MC-ee.txt
echo DYmumu > test/WW/DYRinout/result-syst-stat-MC-mumu.txt
echo DY     > test/WW/DYRinout/result-syst-method.txt
echo DYee   > test/WW/DYRinout/result-syst-method-ee.txt
echo DYmumu > test/WW/DYRinout/result-syst-method-mumu.txt
echo DY     > test/WW/DYRinout/result-syst-method-MC.txt
echo DYee   > test/WW/DYRinout/result-syst-method-MC-ee.txt
echo DYmumu > test/WW/DYRinout/result-syst-method-MC-mumu.txt
echo DY     > test/WW/DYRinout/result-SF.txt
echo DY     > test/WW/DYRinout/result-SF-ee.txt
echo DY     > test/WW/DYRinout/result-SF-mumu.txt
echo DY     > test/WW/DYRinout/result-SF-MC.txt
echo DY     > test/WW/DYRinout/result-SF-MC-ee.txt
echo DY     > test/WW/DYRinout/result-SF-MC-mumu.txt
echo DY     > test/WW/DYRinout/result-R.txt


for ((i=1; i<2; i++)) do  echo "r00t test/WW/DYRinout/GetDY-Result-forDataCard.cxx\(\\\"out_DYRinout_Latinos_2jet_WW_27Nov2000-ForResult.root\\\",$i,2,\\"\\"\)" ; done
for ((i=1; i<2; i++)) do  r00t test/WW/DYRinout/GetDY-Result-forDataCard.cxx\(\"out_DYRinout_Latinos_2jet_WW_27Nov2000-ForResult.root\",$i,2,\"\"\) ; done



more test/WW/DYRinout/result-SF-ee.txt
more test/WW/DYRinout/result-SF-mumu.txt

more test/WW/DYRinout/result-SF-MC-ee.txt
more test/WW/DYRinout/result-SF-MC-mumu.txt


####################
#### @ WW level ####

for ((i=3; i<4; i++)) do  echo "r00t test/WW/DYRinout/GetDY-Result-forDataCard.cxx\(\\\"out_DYRinout_Latinos_2jet_WW_27Nov2000-ForResult.root\\\",$i,2,\\"-shape\\"\)" ; done
for ((i=3; i<4; i++)) do  r00t test/WW/DYRinout/GetDY-Result-forDataCard.cxx\(\"out_DYRinout_Latinos_2jet_WW_27Nov2000-ForResult.root\",$i,2,\"-shape\"\) ; done

for ((i=3; i<4; i++)) do  echo "r00t test/WW/DYRinout/GetDY-Result-forDataCard.cxx\(\\\"out_DYRinout_Latinos_2jet_WW_27Nov2000-ForResult.root\\\",$i,2,\\"-shape-WW\\"\)" ; done
for ((i=3; i<4; i++)) do  r00t test/WW/DYRinout/GetDY-Result-forDataCard.cxx\(\"out_DYRinout_Latinos_2jet_WW_27Nov2000-ForResult.root\",$i,2,\"-shape-WW\"\) ; done


##################################################
##################################################

more test/WW/DYRinout/result-SF-mumu-shape-WW.txt
more test/WW/DYRinout/result-SF-ee-shape-WW.txt

more test/WW/DYRinout/result-SF-MC-mumu-shape-WW.txt
more test/WW/DYRinout/result-SF-MC-ee-shape-WW.txt



# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~    Shape analysis  ttbar  ~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ---- cut based analysis

rm test/WW/ttbar/result-eff-cut-of.txt
for ((i=0; i<1; i++)) do root -l test/WW/ttbar/GetTop-Macro-forDataCard.cxx\($i,\"of\"\,\"cut\",true\)  ; done
rm TopCard_2j-cut-of_new.txt
for ((i=0; i<1; i++)) do cat test/WW/ttbar/result-cut-of-0.txt >>  TopCard_2j-cut-of_new.txt  ; done
rm TopCard_2j-cut-of-ScaleFactor_new.txt
for ((i=0; i<1; i++)) do cat test/WW/ttbar/result-SF-cut-of-0.txt >>  TopCard_2j-cut-of-ScaleFactor_new.txt  ; done

rm test/WW/ttbar/result-eff-cut-sf.txt
for ((i=0; i<1; i++)) do root -l test/WW/ttbar/GetTop-Macro-forDataCard.cxx\($i,\"sf\"\,\"cut\",true\)  ; done 
rm TopCard_2j-cut-sf_new.txt
for ((i=0; i<1; i++)) do cat test/WW/ttbar/result-cut-sf-0.txt >>  TopCard_2j-cut-sf_new.txt  ; done
rm TopCard_2j-cut-sf-ScaleFactor_new.txt
for ((i=0; i<1; i++)) do cat test/WW/ttbar/result-SF-cut-sf-0.txt >>  TopCard_2j-cut-sf-ScaleFactor_new.txt  ; done

rm test/WW/ttbar/result-eff-cut-sfof.txt
for ((i=0; i<1; i++)) do root -l test/WW/ttbar/GetTop-Macro-forDataCard.cxx\($i,\"sfof\"\,\"cut\",true\)  ; done
rm TopCard_2j-cut-sfof_new.txt
for ((i=0; i<1; i++)) do cat test/WW/ttbar/result-cut-sfof-0.txt >>  TopCard_2j-cut-sfof_new.txt  ; done
rm TopCard_2j-cut-sfof-ScaleFactor_new.txt
for ((i=0; i<1; i++)) do cat test/WW/ttbar/result-SF-cut-sfof-0.txt >>  TopCard_2j-cut-sfof-ScaleFactor_new.txt  ; done






# prepare data driven #
r00t test/createDDAnalysisWW2j.cxx





















