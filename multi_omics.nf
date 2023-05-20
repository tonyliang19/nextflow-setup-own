// This is just a template file now to fill in


// Define some process to run several methods
// Preferably if they share a same language, and similar environment setup
// otherwise have to use more process

// Define variables and params to use later
raw_data_dir = "raw_data/"


// Should have a common pre-processor
process preProcessor {
    input:
        path(raw_data_dir)
        // ...
        // ...
        // add more items here?
    
    output:
        path("${out_dir}")
    """
    #! /usr/bin/env Rscript/Python/ or some other language?

    pandas.read_csv(raw_data_dir) // dplyr::read_csv(raw_data_dir)
    ...
    
    # Do something here

    """
}

process runMethod1 {

    debug true

    script:
	"""
	#! /usr/bin/env Rscript
	library(mixOmics)
	# data(breast.TCGA)
	# X1 <- breast.TCGA$data.train$mirna
	# X2 <- breast.TCGA$data.train$mrna
	# X3 <- breast.TCGA$data.train$protein
	# X <- list(mirna = X1, mrna = X2, protein = X3)
	# Y <- list(mirna = X1, mrna = X2, protein = X3)
	# print(X1)
	print("Try")   
	"""

}

process runMethod2 {
    input:
        // ...
        // ...
        // add more items here?
    
    output:
        // add some items here

    script:
        """
        #! /usr/bin/env Rscript/Python/ or some other language?

        pandas.read_csv(raw_data_dir) // dplyr::read_csv(raw_data_dir)
        ...
        
        # Do something here

        """
}

workflow {

	runMethod1()


}

// ... add more processes if needed
