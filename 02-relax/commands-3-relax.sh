#!/bin/bash

S_REPLICA=1
N_REPLICAS=1

FEP=RRD_Diol

for i in $(seq -f "%03g" $S_REPLICA $N_REPLICAS)

      do
      rm -rI relax_$i
	q_genrelax.py ./genrelax.proc \
	      --top ../01-preparation/RRDiol/RRDiol.top \
              --pdb ../01-preparation/RRDiol/RRDiol.pdb \
              --fep ../01-preparation/fep/$FEP.fep \
              --rs ./run_relax_q.sh \
              --outdir relax_$i
	#cp input/sub_script.sh relax_$i
done