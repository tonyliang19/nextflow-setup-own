#!/usr/bin/env nextflow

// This is a Shebang syntax to indicate we use nextflow ^, and where to find it

// Enables dsl2 syntax
nextflow.enable.dsl=2

/*

 This follows a Java-style comment, and usage of a nextflow file i:

    Usage:
        nextflow run <file.nf> --input <input_file>
    // For single line comment and should only be one line


    Workflow parameters (generic) are written as:
    params.<parameter> and inititliazed with ` = `, the equal sign ? like assign variable
*/

// note `input` is the parameter name
params.input = "data/reads_1.fq.gz"

// default workflow name
workflow {

    // Input data received through channels
    input_ch = Channel.fromPath(params.input)

    /* The script to execut is called by its process name, 
       input is provided in the brackets.    */

    NUM_LINES(input_ch)

    /* Process output is assessed using the `out` channel
       The channel operatover view() is to print process output to terminal . */

    NUM_LINES.out.view()
}

/*   Here defines a process block, written convetion is uppercase?
     or use aaaaBBBB 
*/

process NUM_LINES {
    

    // The input assigns input value to variable `read`, and should be interpreted as a file `path`
    // Maybe like java int x;
    input:
    path read

    output:
    stdout
    
    script:

    /* Triple quote syntax """, Triple-single-quoted strings may span multiple lines. The content of the string can cross line boundaries without the need to split the string in several pieces and without concatenation or newline escape characters. */
    """
    printf '${read} '
    gunzip -c ${read} | wc -l
    """

}

