T=readtable('DATASIITsecondtry.csv');
     %       ^^^^^^^^^------ your csv filename
V=T{:,3};
I=T{:,4};
save('data.mat','p','q')
  %   ^^^^^^^^^----- your resulting .mat filename  