# Double-checking issues with the mapping

While waiting for the relevant .bam/.bai files to transfer to my computer, I checked the initial example screenshot sent by Mats of contig_3964 - 3,350-9,139
* BLASTx of contig, searching against Bacteria (tried genetic codes 1 and 11)
* Hits found to elongation factor G between ~4000 and ~6100 on the Skeletonema contig
  * Major coverage spikes appear between ~4000 and ~4300 (some before and after), which appears suggestive of bacterial contamination
  * Top hits appear to be from family Rhodospirillaceae (class Alphaproteobacteria, order Rhodospirillales)
    * So far, no other members of this order have been identified in association with S. marinoi, however...
    * Photosynthetic bacteria, often found in anaerobic conditions, so unlikely to be from standard S. marinoi microbiome
      * Possibly contamination from the sediment? - samples taken from **sediment** cores
      * In the limited view of the screenshot, all of the samples in question are from the 2.5cm layer, so still fairly close to the surface
        (and from the same layer...)
    * From 'The Prokaryotes: A Handbook on Habitats, Isolation, and Identification of Bacteria', Chapter 14: Isolation of Members of the Family Rhodospirillaceae
      * "The greatest variety of species is found in the mud and water of ponds, ditches, and shores of **eutrophic** lakes." (emphasis mine)
        * However, "In eutrophic lakes, the Rhodospirillaceae are more or less restricted to the shore vegetation. Not more than 1~10 cells/ml were found in the
                    pelagic water (Biebl, 1973; Swoager and Lindstrom, 1971)."
* To test this principle, check first contig in the file (contig_807_dbAK) in the same way
  * Hits to UDP-glucose 4-epimerase and pirin family protein
    * UDP-glucose 4-epimerase in various proteobacteria (~28700 - ~30000)
    * Pirins in Gammaproteobacteria (oceanospirillaceae) and Bacteroidetes (Cytophagaceae and Flavobacteriaceae) (~18500 - ~19500)





Does this imply that the bacteria from the sediments have contaminated the sample?
* Investigate the other contigs and see if similar patches are present
* Hits to bacteria were only in the order of 60%-70% identical; check to see whether the reads match up better to the diatom or bacterial sequence

Consider - even if there is contamination, why is there not an apparent Skeletonema signal in this contig?
* Is the contamination that extreme?

---

Now that the data has been downloaded, the above theory doesn't immediately show evidence...
* Checking for coverage spikes in the 2.5cm samples, some of them bear SOME resemblance to the genes of Rhodospirillaceae species (e.g. end of contig_7709),
  but it is far from conclusive evidence...
  * 2.5cm spike in contig_25183 (~2000bp) doesn't seem to correspond to any bacterial sequences...
    * Spike also appears in 9.5cm and 19.5cm data, in all three cases as part of a region of some read coverage (the height and width of this region varies)
    * The spike doesn't appear to correspond to any feature in particular (even in diatoms); it is in the middle of a predicted protein

* Any similar patterns in 9.5cm and 19.5cm samples?

---

Look for consistent patterns in the data
* Look at first ten files from the MF02.5 data
  * Consistently high coverage	- 462, 473, 477, 478
  * Consistently medium coverage- 476
  * Consistently low/no coverage- 467, 471, 474, 475, 479
* Even this pattern is inconsistent - e.g. in contig_2985, all samples show a high peak at ~10kb, and no coverage elsewhere (isolated patches of 1-2x coverage)
  * Initial bacterial BLASTx only turns up a protein in the CENTRE of the contig, not the end
    * BLASTing the end gives no results either

---

# Samples

| Depth (cm) | Sample ID | General coverage |                 Observations                | 
|------------|-----------|------------------|---------------------------------------------|
|    2.5     |    462    |    **High**      |
|    2.5     |    467    |      Low         |
|    2.5     |    471    |      Low         |
|    2.5     |    473    |    **High**      |
|    2.5     |    474    |      Low         |
|    2.5     |    475    |      Low         |
|    2.5     |    476    |    __Medium__    |
|    2.5     |    477    |    **High**      |
|    2.5     |    478    |    **High**      |
|    2.5     |    479    |      Low         |
|    2.5     |    480    |      Low         |
|    2.5     |    484    |    **High**      |
|    2.5     |    486    |      Low         |
|    2.5     |    487    |    **High**      |
|    2.5     |    488    |    **High**      |
|    2.5     |    489    |    __Medium__    |
|    2.5     |    491    |      Low         |
|    2.5     |    492    |      Low         |
|    2.5     |    494    |      Low         |
|    2.5     |    495    |    **High**      |
|    2.5     |    496    |    __Medium__    |
|------------|-----------|------------------|---------------------------------------------|
|    9.5     |    113    |    **High**      |
|    9.5     |    114    |      Low         |
|    9.5     |    123    |      Low         |
|    9.5     |    127    |    VERY low      |
|    9.5     |    167    |    VERY low      |
|    9.5     |    168    |      Low         |
|    9.5     |    252    |    **High**      |
|    9.5     |    253    |    **High**      |
|    9.5     |    286    |    **High**      |
|    9.5     |    304    |    **High**      |
|    9.5     |    505    |    **High**      |
|    9.5     |    506    |    **High**      |
|    9.5     |    507    |    **High**      |
|    9.5     |    508    |    **High**      |
|    9.5     |    510    |    __Medium__    |
|    9.5     |    511    |    **High**      |
|    9.5     |    512    |    __Medium__    |
|    9.5     |    513    |      Low         |
|    9.5     |    514    |      Low         |
|    9.5     |    515    |    **High**      |
|    9.5     |    517    |      Low         |
|    9.5     |    518    |      Low         |
|    9.5     |    519    |    __Medium__    |
|    9.5     |    520    |    **High**      |
|    9.5     |    521    |    **High**      |
|    9.5     |    522    |    **High**      |
|    9.5     |    523    |    **High**      |
|    9.5     |    524    |    **High**      |
|    9.5     |    525    |    **High**      |
|    9.5     |    528    |      Low         |
|    9.5     |    529    |    __Medium__    |
|    9.5     |    530    |    **High**      |
|    9.5     |    531    |    **High**      |
|    9.5     |    532    |      Low         |
|    9.5     |    534    |      Low         |
|------------|-----------|------------------|---------------------------------------------|
|   19.5     |    115    |    **High**      |
|   19.5     |    132    |      Low         |
|   19.5     |    535    |      Low         |
|   19.5     |    536    |    **High**      |
|   19.5     |    537    |      Low         |
|   19.5     |    538    |    **High**      |
|   19.5     |    539    |      Low         |
|   19.5     |    541    |    **High**      |
|   19.5     |    545    |    **High**      |
|   19.5     |    546    |    **High**      |
|   19.5     |    548    |    **High**      |
|   19.5     |    549    |    **High**      |
|   19.5     |    550    |    **High**      |
|   19.5     |    552    |    **High**      |
|   19.5     |    553    |    **High**      |
|   19.5     |    554    |    **High**      |
|   19.5     |    555    |      Low         |
|   19.5     |    556    |      Low         |
|   19.5     |    557    |      Low         |
|   19.5     |    558    |      Low         |
|   19.5     |    559    |    **High**      |
|   19.5     |    561    |      Low         |
|   19.5     |    562    |      Low         |
|   19.5     |    564    |      Low         |
|   19.5     |    567    |      Low         |


# Contigs

|     Contig           |      Interesting features                                                                     |      Taxa                              |
|----------------------|-----------------------------------------------------------------------------------------------|----------------------------------------|
| contig_807_dbAK      | All samples - only high coverage is between 8k-12k, corresponding to kinases                  | Cyanobacteria (primarily) and diatoms  |
| contig_15073         | All samples - peak at 3.24-3.27kb, corresponding to..............................
| contig_6170          | All samples - peak in first ~110bp, possible 5' UTR  of mitochondrial carrier family protein? | Heterokonts, no bacteria               |
| contig_8235          | Fairly consistent coverage                                                                    | -                                      |
| contig_1389          | Fairly consistent coverage                                                                    | -                                      |
| contig_1964          | Fairly consistent coverage                                                                    | -                                      |
| contig_3743          | Fairly consistent coverage                                                                    | -                                      |
| contig_11016         | Fairly consistent coverage                                                                    | -                                      |
| contig_806           | Fairly consistent coverage                                                                    | -                                      |
| contig_12445         | Possible small peak(s) 4.1-4.25kb
| contig_26994         | All samples - small peak at 4.06-4.09kb
| contig_2985          | All samples - only high coverage is from 10.2kb, corresponding to........................
| contig_11773         | Fairly consistent coverage EXCEPT for gap from 3.6-4.2kb, corresponding to..................
| contig_19913         | Fairly consistent coverage
| contig_7362          | Spikes at 0-1kb (all), 2.7kb (all?), ~16.5kb (all), ~34kb (9.5+19.5), ~35kb (2.5), corresponding to..................
| contig_3964          | Spikes at 4-4.3kb (2.5) (elongation factor G in family Rhodospirillaceae) and 15.65kb (all) (); small peak at 15.26-15.28kb (all)
| contig_2287          | Fairly consistent coverage
| contig_1816          | Huge spikes at 0-200bp (all) and 44.3-44.5kb (all), corresponding to...................
| contig_688           | Small spike around 1.00-1.04kb (2.5+19.5)
| contig_3738          | Fairly consistent coverage
| contig_2080          | Small spike around 0.25bp (all)
| contig_8765          | Spike at 35.7-35.9kb (all)
| contig_2671          | Area of high coverage at 29.3-30.4kb (all), corresponding to.....................
| contig_3287          | Area of high coverage at 5-6kb (all), corresponding to.........................
| contig_13116         | Small spikes at ~220bp (all) and ~3kb (all)
| contig_3264          | Fairly consistent coverage
| contig_17690         | Huge spike at 1.7-1.8kb (all), corresponding to..........................
| contig_4781          | Fairly consistent coverage
| contig_10471         | Fairly consistent coverage
| contig_10793         | Small peak at 60-100bp, and coverage gap between 150-650bp, corresponding to....................
| contig_3204          | Small peak at 0-120bp, corresponding to...........................
| contig_7256          | All samples - spike at 3.28-3.3kb is a GAP between hits to formamidase family protein in phylum Cyanobacteria (intron in Heterokonta formamidase!) |
| contig_5250          | Fairly consistent coverage
| contig_3770          | 2.5cm samples - spikes at 10-11kb, corresponding to ribonucleoside-diphosphate reductase in order Cytophagales (other samples more even) |
| contig_8879          | Fairly consistent coverage
| contig_25183         | Small peak ~1950bp (all), first 1.2kb seems very variable
| contig_19295         | Fairly consistent coverage
| contig_7709          | Small peaks from 7.7kb (all), low coverage elsewhere
| contig_1130_dbAK     | Fairly consistent coverage
| contig_10096_revcomp | Fairly consistent coverage
| contig_19234_revcomp | Fairly consistent coverage
| contig_25662_revcomp | Fairly consistent coverage
| contig_4919_revcomp  | Variable regions at 3-4kb (all) and 7.5-10kb (all)
| contig_19324_revcomp | Fairly consistent coverage
| contig_4385_revcomp  | Small peak ~3.75kb, corresponding to.......................
| contig_18396_revcomp | Tiny gap at 790bp (~3-4bp)
| contig_15921_revcomp | Small, variable peaks from 8.3-8.5kb
| contig_2985_revcomp  | Huge peaks from 350-530bp, smaller at 100-200bp and 200-250bp, rest almost empty
| contig_11773_revcomp | Gap between 1.7-2.4kb
| contig_7536_revcomp  | Small peak at 1.8-1.85kb, ~gap from 3.6-3.8kb, 3.8-4.6kb very variable
| contig_18620_revcomp | Gap between 270-330bp
| contig_1177_revcomp  | Fairly consistent coverage
| contig_12325_revcomp | Small peak at 2.53-2.55kb
| contig_1464_revcomp  | 2.45-2.6kb has some gaps
| contig_1816_revcomp  | Peak around 16kb (all), 38-41kb very variable with some small peaks, huge peak at 60.2-60.4kb
| contig_192_revcomp   | Very variable throughout
| contig_3151_revcomp  | Small peak ~16.1kb
| contig_8335_revcomp  | Small peaks ~9kb and ~13.5kb, huge peak at 19.15-19.35kb
| contig_2912_revcomp  | Fairly consistent coverage
| contig_7670_revcomp  | Fairly consistent coverage
| contig_3395_revcomp  | Peaks at ~1.5kb and ~4.5kb
| contig_7632_revcomp  | Gaps from 170/210-230bp, depending on sample
| contig_6964_revcomp  | Peaks at 6.55-6.65kb and 6.7-6.75kb
| contig_15227_revcomp | Fairly consistent coverage
| contig_19739_revcomp | Fairly consistent coverage
| contig_5639_revcomp  | Some gap between 3.38-3.44kb
| contig_10759_revcomp | Peak at 7.77-7.8kb
| contig_1836_revcomp  | Huge peak at 5.29-5.39kb
| contig_28_revcomp    | Coverage is consistent but high throughout, with occasional peaks
| contig_2911_revcomp  | Very variable throughout, with small peaks ~3.1-3.3kb
| contig_6944_revcomp  | Small peak at ~6.4kb, huge peak from 11.6-11.7kb
| contig_12040_revcomp | Fairly consistent coverage
| contig_4642_revcomp  | Peak at 10.55-10.6kb
| contig_9559_revcomp  | Small peak at 0-100bp
| contig_19636_revcomp | Fairly consistent coverage
| contig_1726_revcomp  | Fairly consistent coverage
| contig_44_revcomp    | Fairly consistent coverage
