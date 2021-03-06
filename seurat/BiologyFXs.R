CTL_Immune_GeneList <- function(QuickGO.path="./data/QuickGO"){

  getwd()

  #https://www.rndsystems.com/research-area/lymphoid-lineage-markers

  SGS.LS <- list()
  #### IxNG to IFNG

  SGS.LS$HighlyActivated    <- c("TNFRSF9", "NFKBID", "CCL4", "CCL4L2", "IRF8", "IFNG", "CD83", "CD82", "PLEK", "RGCC") #"ENSMMUG00000013779"
  SGS.LS$HighlyActivated2   <- c("TNFRSF9", "NFKBID", "CCL4", "CCL4L2", "IRF8", "IFNG") #the original from B.B.
  SGS.LS$HighlyActivated3   <- c("TNFRSF9", "NFKBID", "CCL4", "CCL4L2", "IRF8", "CD83", "CD82", "PLEK", "RGCC") #same as first without IFNG due to typo in original set
  SGS.LS$LessActivated      <- c("LTB", "IL7R", "PTPRCAP", "GZMK")
  SGS.LS$Pheno1             <- c("MT1M", "MGEA5")
  SGS.LS$TCellCanonical     <- c("CD3G", "CD3D", "CD3E")
  SGS.LS$TCellSecondary     <- c("CD2", "CD5", "CD6")
  SGS.LS$TCellTranscription <- c("MAL", "LAT", "TCRIM", "CD28", "ZAP70", "FYN", "GATA3", "LEF1", "TCF7", "RUNX2", "STAT4", "SATB1")
  SGS.LS$CD8Canonical       <- c("CD8A", "CD8B")
  SGS.LS$CD8Subphenos1      <- c("IL2RB", "KLRC1", "KLRG1", "PRF1", "GNLY", "GZMC", "GZMH", "TBX21")
  SGS.LS$BCellCanonical     <- c("CD19", "MS4A1", "CD79A")
  SGS.LS$BCellSecondary     <- c("CD20", "CD21", "CD22", "FCGR2B") #https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1479811/
  SGS.LS$BCellCanonicalV3   <- c("CD24", "CD38", "CD72", "CD74", "CD79B", "CD83", "CD86") #https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1479811/
  SGS.LS$CD4Canonical       <- c("CD4", "IL7R")
  SGS.LS$CD4Subphenos1      <- c("NOSIP", "RGS10", "FOXP3", "IL2RA", "LTB")
  SGS.LS$CD4Subphenos2      <- c("ANK3", "MXI1",  "CTSB")
  SGS.LS$NKCanonical        <- c("NCAM1", "CD8B", "GZMK", "LYAR", "NKG7", "GZMA", "GNLY", "FGFBP2", "FCGR3A", "CCL4", "GZMH")
  SGS.LS$Erythrocyte        <- c("HBB", "GYPA", "BCAM", "CD36", "EPO", "HPX", "SLC14A1", "LEPR") #https://www.rndsystems.com/research-area/red-blood-cells--rbcs
  SGS.LS$Megakaryocytes     <- c("PF4", "GP9", "ITGA2B", "TMEM40", "LY6G6F","SEPT5", "PTCRA", "TREML1", "CLDN5", "HGD")
  SGS.LS$Myeloid            <- c("ITGAM", "FUT4", "ANPEP", "CD14", "ITGAX","FCGR3A") #https://www.bio-rad-antibodies.com/flow-myeloid-cell-immunophenotyping.html#1
  SGS.LS$Macrophage         <- c("CD14", "ITGAX","FCGR1A", "CD68", "TFRC", "CD86", "CD163", "TLR2", "TLR4") #https://www.bio-rad-antibodies.com/macrophage-m1-m2-tam-tcr-cd169-cd-markers-antibodies.html
  SGS.LS$PlasmaCells        <- c("SDC1")
  SGS.LS$Eosinophils        <- c("CCR3")
  SGS.LS$Basophil           <- c("LMO4", "ENPP3", "IL3RA")
  SGS.LS$Neutrophil         <- c("CEBPE", "S100A8", "S100A9", "FUT4")
  SGS.LS$Monocytes          <- c("CSF1R", "CD14", "FCGR1A", "CD68", "S100A12", "MS4A7", "CKB", "LILRA3")
  SGS.LS$MonocytesFCGR3A    <- c("HES4", "CDKN1C", "FCGR3A", "MS4A7", "CKB", "LILRA3", "IFITM3", "MS4A4A", "LRRC25")
  SGS.LS$MonocytesCD34p     <- c("CD34", "THY1", "ENG", "KIT", "PROM1" )
  SGS.LS$MAIT               <- c("CD8A", "CD8B", "CD4", "KLRB1", "DPP4")
  SGS.LS$Dendritic          <- c("CD74")
  SGS.LS$WBC                <- c("PTPRC")
  SGS.LS$Granulocyte        <- c("CSF2RB", "CSF3R", "IL1R2", "IL1RN", "IL8RB", "IL13RA1", "FPR1", "MME")
  SGS.LS$Lymphoid           <- c("PTPRC", "CD2", "CD5", "RPL21", "RPL23", "RPL27", "RPL31", "RPL35", "RPS14", "RPS21", "RPS24", "RPS3A", "RPS6", "TGT", "TPI1")

  # Blood Monocytes, DCs, and etc #10.1126/SCIENCE.AAH4573
  SGS.LS$Vilani_DC1_CD141CLEC9A       <- c("CLEC9A", "C1ORF54", "HLA-DPA1", "CADM1", "CAMK2D")
  SGS.LS$Vilani_DC2_CD1C_A            <- c("CD1C", "FCER1A", "CLEC10A", "ADAM8", "CD1D")
  SGS.LS$Vilani_DC3_CD1C_B            <- c("S100A9", "S100A8", "VCAN", "LYZ", "ANXA1")
  SGS.LS$Vilani_DC4_CD1CnegCD141neg   <- c("FCGR3A", "FTL", "SERPINA1", "LST1", "AIF1")
  SGS.LS$Vilani_DC5_AXLposSIGLEC6pos  <- c("AXL", "PPP1R14A", "SIGLEC6", "CD22", "DAB2")
  SGS.LS$Vilani_DC6_pDC               <- c("GZMB", "IGJ", "AK128525", "SERPINF1", "ITM2C")

  SGS.LS$Vilani_Mono1_classical_CD14high_CD16neg <- c("CD14", "VCAN", "S100A8", "S100A9", "FCN1", "ITGB2", "LRP1", "CSF3R", "TKT", "LYZ", "APLP2", "FPR1", "CD36", "S100A12", "CLEC4E", "ITGAM", "SLC2A3", "CTSD", "NEAT1", "PTAFR", "TREM1", "NAIP", "NCF1", "FCGR2A", "SCPEP1", "CTSA", "NLRP3", "ACSL1", "SDCBP", "SLC11A1", "IRS2", "VNN2", "DPYD", "CLEC7A", "BST1", "PLBD1", "PYGL", "QPCT", "BC013828", "CD163", "AQP9", "PELI1", "FAM198B", "GAS7", "STAB1", "CDA", "DOK3", "IRAK3", "PLAUR", "AL137655", "LILRA6", "TLR4", "AX747598", "TLR2", "AGTRAP", "CRISPLD2", "CCR1", "NFAM1", "ETS2", "RAB27A", "BNIP3L", "HPSE", "PER1", "MEGF9", "CD300E", "CYP1B1", "FCAR", "SOD2", "UPP1", "IER3", "C5AR1", "NLRP12", "SMA", "DMXL2", "NCF1B", "CREB5", "CR1", "ALDH1A1", "ASGR1", "FNDC3B", "DUSP6", "TOM1", "CDC42EP3", "ZBTB16", "DYSF", "KCNE3", "CD93", "CEBPD", "FCGR1A", "PLEKHM1", "CPM", "MPP7", "AK302511", "IL1B", "PFKFB3", "PLD3", "SMA3", "F13A1", "G0S2", "LOC100133161", "PHF21A", "TLR8", "CLMN", "TNFAIP3")
  SGS.LS$Vilani_Mono2_nonclassical_CD14posCD16high <- c("LAIR2", "ASAH1", "APOBEC3A", "TSPAN14", "LIPA", "CYTIP", "SIGLEC10", "LILRB1", "EMR1", "TTYH3", "CAMKK2", "CX3CR1", "C3AR1", "BC013828", "RASGEF1B", "BIRC3", "PLIN2", "CD300C", "CD83", "XYLT1", "KLF2", "FBP1")
  SGS.LS$Vilani_Mono3_undef1 <- c("G0S2", "NAMPT", "NEAT1", "AL137655", "CSF3R", "FCGR3B", "SRGN", "TREM1", "TNFRSF10C", "MXD1", "SOD2", "CXCR2", "SLC25A37", "S100A8", "FPR1", "ITM2B", "MNDA", "VNN2", "SDCBP", "CXCR1", "S100A9", "AQP9", "SORL1", "ACSL1", "AX747598", "R3HDM4", "NCF1", "IFITM2", "FCGR2A", "XPO6", "GCA", "C5AR1", "TKT", "PELI1", "SLC2A3", "CLEC4E", "MMP25", "GLUL", "CD14", "LOC388312", "NCF1C", "VMP1", "RTN3", "ACTN1", "PTAFR", "S100A12", "SEC14L1", "DQ574721", "LITAF", "TLR2", "SHKBP1", "LIMK2", "LOC100505702", "PYGL", "RNF24", "DNAJC25-GNG10", "IL8", "FPR2", "LOC731275", "SLC12A6", "IL1R2", "VNN3", "CFD", "VCAN", "BC013828", "NAIP", "ZBTB16", "BCL2A1", "FAM129A", "PLAUR", "FNDC3B", "FP15737", "SEPX1", "LOC100133161", "PER1", "FBXL5", "IL17RA", "TLR4", "IGF2R", "ITGAM", "HIST1H2AC", "LRP1", "KREMEN1", "C12ORF35", "PRRG4", "CR1", "RAB27A", "LOC100505815", "BST1", "NUMB", "USP15", "CDA", "IER3", "ACADSB", "DYSF", "PXN", "PDP2", "TNFRSF1A", "LRG1", "LOC91948", "FLJ45445", "SMAP2", "LOC643802", "NINJ1", "ABTB1", "CCNY", "TMEM154", "CCR1", "CARD8", "TACC3", "TMEM71", "PTGS2", "HPSE", "C3ORF72", "FAM157A", "AK130076", "CD163", "NBEAL2", "IL1RAP", "GK", "AZGP1P1", "DOK3", "PROK2", "FAM115C", "QPCT", "ALPL", "BEST1", "CES3", "CREB5", "SPAG9", "GPR97", "TBL1X", "FAM198B", "FCAR", "PHF21A", "IRS2", "CYP1B1", "NCF1B", "BC048113", "BACH1", "AX747405", "RCBTB2", "CEBPD", "ALPK1", "LAT2", "OSBPL8", "PCNX", "LPPR2", "CCPG1", "DOCK5", "TUBA4A", "F2RL3", "NCF4", "FAM157B", "TECPR2", "SLA", "TM6SF1", "CRISPLD2", "FAS", "PADI4", "RUFY1", "AK302511", "PDE4B", "AK091866", "DQ580909", "FAM126B", "LRP10", "PADI2", "TRIB1", "ZDHHC18", "F5", "PDLIM7", "RBM47", "SIRPA", "ARHGAP26", "DSTYK", "TLR6", "FBXL13", "LOC649305", "P2RY8", "HBP1", "SGSM1", "ABCA1", "SEMA4D", "ABHD5", "MRS2P2")
  SGS.LS$Vilani_Mono4_undef2 <- c("PRF1", "GNLY", "KLRC4-KLRK1", "TCRBV3S1", "CTSW", "CCL5", "KLRD1", "FGFBP2", "NKG7", "IL2RB", "SPON2", "HOPX", "GZMA", "CST7", "ZAP70", "GPR56", "SYNE2", "KLRF1", "GZMH", "IL32", "TXK", "IFITM1", "IKZF3", "LCK", "TC2N", "S1PR5", "S100A8", "MCTP2", "S100A12", "CD96", "SAMD3", "TRGC2", "TTC38", "PXN", "S100A9", "SH2D1B", "LAIR2", "SYNE1", "PRKCH", "RARRES3", "PIK3R1", "CCL4", "PARP8", "TGFBR3", "GSTM1", "CD2", "CD247", "PDE4D", "PRDM1", "CBLB", "GIMAP1", "BC013828", "DENND2D", "GZMM", "SKAP1", "TMEM41A", "KLRB1", "PLEKHG3", "FCRL6", "PYHIN1", "AAK1", "CCR1", "IRS2", "STAT4", "IL18RAP", "INADL", "DIP2A", "LOC388692", "FAIM3", "CD160", "PAPD5", "PAM", "PIK3IP1", "PRSS23", "PVRIG", "VNN2", "CREB5", "CCND2", "RORA", "ATXN7", "PTPN4", "LIMK2", "SEPX1", "KLF12", "TRDC", "AK094156", "NCR3", "KIF21B", "PTGDR", "IER3", "ITK", "BTN3A2", "CPD", "NCAM1", "ZBTB16", "RAB27A", "RUNX3", "SLC25A37", "SLFN13", "GCA", "RASA3", "IPCEF1", "SCML4", "NID1", "PADI4", "S1PR1", "ZBTB38", "FCGR1A", "PARP15", "ETS1", "LAT", "TRPM2", "FNDC3B", "CCL3", "CLEC4D", "OPTN", "RASSF3", "LOC100216546", "IL1B", "GBP5", "ENC1", "KLRG1", "SYTL3", "BC051736", "TRAPPC10", "LIN54", "LOC374443", "ZNF44", "F2R", "TFDP2", "CEP78", "CXCR2", "G0S2", "GABARAPL1", "TUBD1", "PDPR", "DQ573668", "FXYD6-FXYD2", "BRF2", "SLAMF6", "CREM", "TGIF1", "SLFN5", "ARHGAP24", "ZMYM5", "ZNF276", "SUPV3L1", "FAM190B", "LPIN1")



  AnnotationFiles <- list.files(QuickGO.path, pattern = "QuickGO", full.names = T)
  GeneLists <- list()

  for(AnnFile in AnnotationFiles){
    # AnnFile = AnnotationFiles[1]
    tempName = gsub(".txt", "", gsub("_","",gsub("annotations-", "", gsub(".tsv","",gsub("-","",basename(AnnFile))))))
    GeneLists$Extra[[tempName]] <-  read.table(
      AnnFile,
      sep="\t", header=TRUE, row.names = NULL, fill = TRUE )
  }

  SGS.LS$QuickGOgenes <- as.character(data.table::rbindlist(lapply(GeneLists$Extra, function(setX){
    subset(setX, TAXON.ID == 9606)[,c("GO.NAME", "SYMBOL")] #10090 = mouse ; 9606 = human
  }))$SYMBOL)

  return(SGS.LS)
}


RhesusGeneDavidConv <- function(ColNames2Conv, RhesusConvDavid.path, ENSMB.tag = "ENSMM", returnFull=F){

  #Seurat 3 cant update the gene names !!
  # see https://github.com/satijalab/seurat/issues/1207

  print("Reading in David Data...")
  noGeneSYM <- ColNames2Conv[grepl(ENSMB.tag, ColNames2Conv)]


  David6.8ConvTable <- data.frame(read.csv(RhesusConvDavid.path, sep = "\t", header = T))
  rownames(David6.8ConvTable) <- David6.8ConvTable$From
  David6.8ConvTable <- David6.8ConvTable[noGeneSYM, ]
  length(unique(noGeneSYM)); length((noGeneSYM))
  rownames(David6.8ConvTable) <- noGeneSYM

  David6.8ConvTable$Final <- as.character(David6.8ConvTable$To)

  David6.8ConvTable$Final[which(is.na(David6.8ConvTable$To))] <- rownames(David6.8ConvTable)[which(is.na(David6.8ConvTable$To))]

  duplicatedGeneNames <- names(which(table(David6.8ConvTable$Final)>1))

  #change the second duplace name to add a .2
  #perhaps can avg the expr?
  for(geneN in duplicatedGeneNames){

    David6.8ConvTable$Final[grep(geneN , David6.8ConvTable$Final)][2] <- paste(geneN, ".2", sep="")

  }


  if(returnFull) return(David6.8ConvTable) else return(David6.8ConvTable$Final)


}

