{
 TF1* gaus = new TF1("gaus","gaus",0.8,1.2);
 TH1F* histo = new TH1F("histo","",100,0,3);
 
 double min[10] = {0.0, 0.5, 1.1, 1.7, 2.3};
 double max[10] = {0.5, 1.1, 1.7, 2.3, 5.0};
 
//  https://twiki.cern.ch/twiki/bin/viewauth/CMS/JetResolution
//  double c[10]   = {1.052, 1.057, 1.096, 1.134, 1.288};
 
 //---- for JER nuisance
//  double c_down[10]   = {0.990, 1.001, 1.032, 1.042, 1.089 };
//  double c_down[10]   = {1.000, 1.001, 1.032, 1.042, 1.089 };  //--> fix the first to 1, otherwise unphysical
//  double c_up[10]     = {1.115, 1.114, 1.161, 1.228, 1.488 };
 

//  double c[10]   = {1.000, 1.001, 1.032, 1.042, 1.089 }; //---- down
 double c[10]     = {1.115, 1.114, 1.161, 1.228, 1.488 }; //---- up
 
 
 TCanvas* cc[10];
 for (int i=0; i<5; i++) {
  TString ccName = Form ("cc_%d",i);
  cc[i] = new TCanvas (ccName.Data(),"",800,600);
  TString cut = Form ("dR<0.05 && abs(genJetEta) > %f && abs(genJetEta) <= %f",min[i],max[i]);
  std::cout << " cut = " << cut << std::endl;
  TString name = Form ("hJetsResoltion_%d",i);
  std::cout << " name = " << name << std::endl;
  histo = (TH1F*) _file0 -> Get (name.Data());
  histo->Fit("gaus","RQ");
  std::cout << " sigma = " << gaus->GetParameter (2) / gaus->GetParameter (1) << " +/- " << gaus->GetParError (2) / gaus->GetParameter (1) << std::endl;
  std::cout << " residual[" << i << "] = " << sqrt( c[i]*c[i] - 1. ) * gaus->GetParameter (2) / gaus->GetParameter (1) << " +/- " << sqrt( c[i]*c[i] - 1. ) * gaus->GetParError (2) / gaus->GetParameter (1) << std::endl;
 }
 
 
}