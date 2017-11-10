# Runs for Steve
# 11/10/2017

bd14 <- bam_data(w = w_14, s = s_14, dA = dA_14, Qhat = Qhat_14)
bp14 <- bam_priors(bamdata = bd14, Serr_sd = 3e-05)

est14 <- bam_estimate(bd14, bampriors = bp14, variant = "manning", reparam = FALSE)
est14_2 <- bam_estimate(bd14, bampriors = bp14, meas_error = FALSE)
est14_3 <- bam_estimate(bd14, bampriors = bp14, meas_error = TRUE)

# val14 <- bam_validate(est14, qobs = Qobs_14)
# val14_2 <- bam_validate(est14_2, qobs = Qobs_14)


bam_hydrograph(est14, qobs = Qobs_14)
bam_hydrograph(est14_2, qobs = Qobs_14)
bam_hydrograph(est14_3, qobs = Qobs_14)
ggsave("graphs/hydrograph11-14.png")

bam_hydrograph(est14_3, qobs = Qobs_14) + scale_y_log10()
ggsave("graphs/hydrograph11-14_log.png")


bd5 <- bam_data(w = w_5, s = s_5, dA = dA_5, Qhat = Qhat_5)

est5 <- bam_estimate(bd5, reparam = FALSE)
est5_2 <- bam_estimate(bd5, meas_error = FALSE)
est5_3 <- bam_estimate(bd5, meas_error = TRUE)

bam_hydrograph(est5_3, qobs = Qobs_5)
ggsave("graphs/hydrograph1-5.png")

bam_hydrograph(est5, qobs = Qobs_5) +
  scale_y_log10()
ggsave("graphs/hydrograph1-5_log.png")



bam_hydrograph(est5_2, qobs = Qobs_5)
bam_hydrograph(est5_3, qobs = Qobs_5)



val5 <- bam_validate(est5, qobs = Qobs_5)
val5_2 <- bam_validate(est5_2, qobs = Qobs_5)



# Conclusion: bamr isn't getting n, because it really has no way of doing so. 