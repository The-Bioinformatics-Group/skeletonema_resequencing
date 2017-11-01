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
