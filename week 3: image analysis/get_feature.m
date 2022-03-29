function feature  =  get_feature(img)

 gray_feature = graycomatrix(img);
 stats = graycoprops(gray_feature,'Contrast Correlation Energy Homogeneity');
 Contrast = stats.Contrast;
 Correlation = stats.Correlation;
 Energy = stats.Energy;
 Homogeneity = stats.Homogeneity;
feature = [Contrast Correlation  Energy Homogeneity ];