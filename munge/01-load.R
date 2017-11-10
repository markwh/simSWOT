# 01-load.R

w_14 <- read.csv("data/BAMCombined-11-14/W.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
s_14 <- read.csv("data/BAMCombined-11-14/S.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
dA_14 <- read.csv("data/BAMCombined-11-14/dA.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
Qobs_14_m <- read.csv("data/BAMCombined-11-14/Qobs.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
Qobs_14 <-  apply(Qobs_5_m, 2, mean)
Qhat_14 <- read.csv("data/BAMCombined-11-14/Qp.txt", sep = "\t", header = FALSE) %>% 
  `[`(1, 1)

w_5 <- read.csv("data/BAMCombined-1-5/W.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
s_5 <- read.csv("data/BAMCombined-1-5/S.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
dA_5 <- read.csv("data/BAMCombined-1-5/dA.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
Qobs_5_m <- read.csv("data/BAMCombined-1-5/Qobs.txt", sep = "\t", header = FALSE) %>% 
  as.matrix()
Qobs_5 <- Qobs_5_m %>% 
  apply(2, mean)
Qhat_5 <- read.csv("data/BAMCombined-1-5/Qp.txt", sep = "\t", header = FALSE) %>% 
  `[`(1, 1)


