#Creating Library files of the Product and substrate
#Product:: RR_Diol and SS_Diol
#Substrate::Stilbene_Oxide

#For Stilbene_Oxide
DIR=Stilbene_oxide
$SCHRODINGER/utilities/ffld_server  -imae $DIR/Stilbene_Oxide.mae -version 14  -print_parameters -out_file $DIR/Stilbene_Oxide.ffld
q_ffld2q.py -o $DIR/Stilbene_Oxide $DIR/Stilbene_Oxide.ffld $DIR/stilbeneOxide_afterQMoptimization.pdb

#For the RRDiol Product
DIR=RRDiol
$SCHRODINGER/utilities/ffld_server  -imae $DIR/RRD_Product.mae -version 14  -print_parameters -out_file $DIR/RRD_Product.ffld
q_ffld2q.py -o $DIR/RRD_Product $DIR/RRD_Product.ffld $DIR/RR_product_afterQMoptimization.pdb

#For the SSDiol Product
DIR=SSDiol
$SCHRODINGER/utilities/ffld_server  -imae $DIR/SSD_Product.mae -version 14  -print_parameters -out_file $DIR/SSD_Product.ffld
q_ffld2q.py -o $DIR/SSD_Product $DIR/SSD_Product.ffld $DIR/SS_product_afterQMoptimization.pdb

#Manually Add the RESPcharges into the various Library files created

