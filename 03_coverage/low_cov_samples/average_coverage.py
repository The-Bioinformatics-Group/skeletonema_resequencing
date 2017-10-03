#!/usr/bin/env python

import sys

input_files = sys.argv[1:]

for in_file in input_files:
	sample_name = []
	contig_len = 0
	total_coverage = []
	for line in open(in_file):
		# Identify the header line
		if line[0:6] == "Contig":
			# Identify sample names
			for sample in line.split():
				if sample == "Contig" or sample == "Pos":
					pass
				else:
					# Store sample names in a list
					sample_name.append(sample)
			
			# Set the length of the coverage list
			for i in line.split():
				if i == "Contig" or i == "Pos":
					pass
				else:
					total_coverage.append(0)
#			print len(total_coverage)
#			print len(sample_name)
		else:
			# Store the contig name
			contig_name = line.split()[0]
			contig_len += 1
			number_of_samples = len(sample_name)
			sample_nr = 0
			for value in line.split()[2:]:
				if sample_nr < number_of_samples:
#					print sample_nr, number_of_samples
#					print pos
#					print value
					# Add coverage value to list
					total_coverage[sample_nr] += int(value)
					# Increment the position number
					sample_nr += 1


	# Calculate average coverage
	average_coverage = []
	for cov in total_coverage:
		average_coverage.append(float(cov)/contig_len)
	
	# Print the result to STDOUT
	print "# %s" % sample_name
	print "%s %s %s" % (contig_name, contig_len, average_coverage)
#	print "# Length:  %s" % contig_len
#	print sample_nae 
#	print total_coverage
#	print average_coverage
#	print len(sample_name), len(average_coverage)
				
