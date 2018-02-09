# CrossCorrelation
# Language: R
# Input: CSV (time series datasets)
# Output: TXT (cross-correlation value)
# Tested with: PluMA 1.0, R 3.2.5

PluMA plugin to compute cross-correlation between two time-series datasets.
The plugin accepts CSV file input and assumes three columns: the first is the
name of each time-series sample, the second column is the first dataset, and the
third column is the second dataset.  It thus assumes each row in the file to be
one time-series sample.

The plugin then outputs cross-correlation values in an output text file with
two columns: the first is an index starting at 1 (we leave the computation
frequency at R defaults) and the second is the cross-correlation value at that index.
