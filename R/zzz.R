###
###

.pkgname <- "BSgenomehpv16"

.seqnames <- NULL

.circ_seqs <- "NC_001526.2"

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="HPV",
        common_name="hpv",
        genome="NC_001526.2",
        provider="NCBI",
        release_date="2023/01/31",
        source_url="https://www.ncbi.nlm.nih.gov/nuccore/NC_001526.2/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Hsapiens"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

