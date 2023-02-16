// procrss_python.nf
nextflow.enable.dsl=2

process PYSTUFF {
  
  debug true
  script:
  """
  #!/usr/bin/env python
  import sys  
  #import gzip
  
  #reads = 0
  #bases = 0

  #with.open('${projectDir}/data/yeast/reads/ref1_1.fq.gz', 'rb') as read:
  #	for id in read:
  #	    seq = next(read)
  #	    reads += 1
  #	    bases += len(seq.strip())
  #	    next(read)
  #	    next(read)
  #print("reads", reads)
  #print("bases", bases)
  
  print(sys.version_info)  

  """
}


workflow {
	
	PYSTUFF()
 
}
