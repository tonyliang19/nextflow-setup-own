/*
This is a test nextflow script file to test out some stuffs

Like pass channels , parameters , and use Rscript, Python

*/


// Declare syntax version? Optional?
// nextflow.enable.dsl=2

// Script parameters define here
// use syntax params.<var_name> = <something>


// Pipeline configuration properties defined in a `nextflow.config`
// in the pipeline execution directory


// Or simply use variables
name = "Tony"

// print statement
// You could use $VAR_NAME to retrieve value of VAR_NAME
// Or using $ {{ VAR_NAME }}

println "Hello, I'm $name"

// More advanced stuff
// defining function?

// This `it` is implicit variable that represents value that is passed
// to function when it is called
cube = { it * it * it }
println cube(3)


// Or could be pass function as an argument of other built-in fun
// like `collect`

// So this calls cube on each of these numbers and
// return array with cube(i) <--- like for loop? lapply in R
[1,2,3,4].collect(cube)


