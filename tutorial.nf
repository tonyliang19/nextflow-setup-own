// This is a variable
params.str = "Hello World"

// This is a process that outputs some stuff
process splitLetters {
    output:
        path "chunk_*"

    """
    printf "${params.str}" | split -b 6 - chunk_
    """
}

// This is a process that splits letters and convert to upper
process convertToUpper {
    input:
        path x
    output:
        stdout

    """
    cat $x | tr "[a-z]" "[A-Z]"
    """
}

workflow {

    splitLetters | flatten | convertToUpper | view { it.trim() }
}