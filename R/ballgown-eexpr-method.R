setMethod("eexpr", "ballgown", function(x, meas="rcount"){
  meas = match.arg(meas, c("rcount","ucount","mrcount","cov","mcov","all"))
  if(meas!="all"){
    expr = data(x)$exon[,-c(1:5)]
    expr = expr[,sapply(colnames(expr), function(x) strsplit(x,split="\\.")[[1]][1]==meas)]
    rownames(expr) = data(x)$exon$e_id
    expr = as.matrix(expr)
  }else{
    expr = data(x)$exon
  }
  return(expr)
})
