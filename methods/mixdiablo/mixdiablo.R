# Import Library and data
library(mixOmics)
data("breast.TCGA")

# use the mirna, mrna and protein expression levels as predictive datasets
# note that each dataset is measured across the same individuals (samples)
X1 <- breast.TCGA$data.train$mirna
X2 <- breast.TCGA$data.train$mrna  
X3 <- breast.TCGA$data.train$protein
X <- list(mirna = X1, mrna = X2, protein = X3)

Y <- breast.TCGA$data.train$subtype # use the subtype as the outcome variable

# Multiblock PLS-DA
result.diablo.tcga <- block.plsda(X, Y) # run the method
plotIndiv(result.diablo.tcga) # plot the samples
plotVar(result.diablo.tcga) # plot the variables

# Multiblock sPLS-DA
# set the number of features to use for the X datasets
list.keepX = list(mirna = c(16, 17), mrna = c(18,5), protein = c(5, 5)) 

# run the method
result.sparse.diablo.tcga <-  block.splsda(X, Y, keepX = list.keepX) 

# plot the contributions of each feature to each dimension
plotLoadings(result.sparse.diablo.tcga, ncomp = 1) 
plotIndiv(result.sparse.diablo.tcga) # plot the samples
plotVar(result.sparse.diablo.tcga) # plot the variables
