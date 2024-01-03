#Creating Library files of the Product and substrate
#Product:: RR_Diol and SS_Diol
#Substrate::Stilbene_Oxide

#For Stilbene_Oxide
$SCHRODINGER/utilities/ffld_server  -imae Stilbene_Oxide.mae -version 14  -print_parameters -out_file Stilbene_Oxide.ffld
q_ffld2q.py -o Stilbene_Oxide Stilbene_Oxide.ffld stilbeneOxide_afterQMoptimization\ -\ Copy.pdb

#For the RRDiol Product
$SCHRODINGER/utilities/ffld_server  -imae RRD_Product.mae -version 14  -print_parameters -out_file RRD_Product.ffld
q_ffld2q.py -o RRD_Product RRD_Product.ffld RR_product_afterQMoptimization\ -\ Copy.pdb

#For the SSDiol Product

$SCHRODINGER/utilities/ffld_server  -imae SSD_Product.mae -version 14  -print_parameters -out_file SSD_Product.ffld
q_ffld2q.py -o SSD_Product SSD_Product.ffld SS_product_afterQMoptimization\ -\ Copy.pdb

#Manually Add the RESPcharges into the various Library files created
