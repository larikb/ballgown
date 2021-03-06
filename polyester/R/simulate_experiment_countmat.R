simulate_experiment_countmat = function(fasta, readmat, outdir, 
    fraglen=250, fragsd=25, readlen=100, error_rate=0.005, paired=TRUE){

    transcripts = readDNAStringSet(fasta)

    for(i in 1:ncol(readmat)){
        tObj = rep(transcripts,times=readmat[,i])
  
        #get fragments
        tFrags = generate_fragments(tObj, fraglen=fraglen)

        #reverse_complement some of those fragments
        rctFrags = reverse_complement(tFrags)

        #add sequencing error
        errFrags = add_error(rctFrags, error_rate)

        #get reads from fragments
        reads = get_reads(errFrags, readlen, paired)

        #write read pairs
        write_reads(reads, readlen=readlen, 
            fname=paste0(outdir, '/sample_', sprintf('%02d', i)), 
            paired=paired)
    }
}