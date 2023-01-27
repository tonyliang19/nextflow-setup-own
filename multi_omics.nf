// This is just a template file now to fill in


// Define some process to run several methods
// Preferably if they share a same language, and similar environment setup
// otherwise have to use more process

// Define variables and params to use later
raw_data_dir = "data/"


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
    input:
        path(raw_data_dir)
        // ...
        // ...
        // add more items here?
    
    output:
        path("${out_dir}")

    script:
        """
        #! /usr/bin/env Rscript/Python/ or some other language?

        pandas.read_csv(raw_data_dir) // dplyr::read_csv(raw_data_dir)
        ...
        
        # Do something here

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

// ... add more processes if needed