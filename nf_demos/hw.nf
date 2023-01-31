#!/usr/bin/env nextflow

/*

Test nextflow file

*/


process showPath {

 script:
 """
 echo The path is: $PATH
 """
}

process printPython {

 script:
 """
 #!/usr/bin/env python
  
 print("Test python!")
 """
}


// This is the last step
workflow {
 showPath()
 printPython()

}
