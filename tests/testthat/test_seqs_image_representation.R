context("Representing sequences as an image")


test_that("Handling image representation of sequences", {
    # testSeqs_filename <- system.file("extdata",
    #                         "example_data.fa.gz",
    #                         package = "seqArchR",
    #                         mustWork = TRUE)
    # testSeqsOK <- suppressMessages(seqArchR::prepare_data_from_FASTA(
    #                         testSeqs_filename, raw_seq = TRUE))
    testSeqsOK <- readRDS(system.file("extdata", "tssSeqsRaw.rds",
                                      package = "seqArchR",
                                      mustWork = TRUE))
    positionLabelsTest <- seq(1, 100)
    vdiffr::expect_doppelganger(
            "Sample image of sequences",
            suppressMessages(
                seqArchR::viz_seqs_acgt_mat(as.character(testSeqsOK),
                                    pos_lab = positionLabelsTest,
                                    xt_freq = 25, yt_freq = 200))
    )
})
