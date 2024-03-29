#!/bin/bash


##CONST
jtID=1
##CONST

if [ $# -eq 10 ]
then
    R=$1
    data_condorDir=$2
    data_date=$3
    dataetaBin=$4
    MC_condorDir=$5
    MC_date=$6
    MCetaBin=$7
    etaBinOut=$8
    useSimpleBinning=$9
    BayeskIter=${10}
else
    echo "usage:"
    echo "source run_bayesUnfoldDataSpectra.sh [R=3,4] [dataCondorDir] [data_date] [dataetaBin] [MCCondorDir] [MC_date] [MCetaBin] [etaBinOut] [useSimpleBinning] [BayeskIter]"
    return
fi

#### unfoldDataSpectra
echo ""
echo "running bayesUnfoldDataSpectra"
echo ""

./bayesUnfoldDataSpectra.exe ${data_condorDir}/ppData_HighPtJetTrig_ak${R}PFJets_${data_date}_${dataetaBin} ${MC_condorDir}/ppMC_Py8_CUETP8M1_QCDjetAllPtBins_ak${R}PFJets_${MC_date}_JERS_${MCetaBin} unf_HPtJetTrig_w_Py8_${etaBinOut} ${jtID} ${useSimpleBinning} ${BayeskIter}

return