#Name: Eashan Deshmukh
#Student id: 221534051
#email: s221534051@deakin.edu.au

dat <- as.matrix(read.table("Forest_2022.txt"))

set.seed(221534051)

ndat <- dat[sample(1:517,330),c(1:13)] 

#Converting data to dataframe
#Dataframe to excel

df=as.data.frame(ndat)

#install.packages("writexl")
library("writexl")
write_xlsx(df,"./sample_forest_2022.xlsx")

#Before applying transformation
#We'll analyse the histogram before applying the transformations.

#Then we need to perform normalisation.

#Then we need to check the skewness and the histogram.

#(iv) Use scatter plots and histograms to understand the relationship 
#between each of the variables X5, X6, X7, X8, X9, X10, X11, X12, and 
#your variable of interest Y. (You should build 8 scatter plots and 9 histograms)

#hist for variable V1

# Give the chart file a name.
png(file = "hist_V1.png")

# Create the histogram.
hist(ndat[,"V1"],main = "histogram [V1] before transformation", xlab = "V1",col = "yellow",border = "blue")

# Save the file.
dev.off()

hist(ndat[,1],main = "histogram [V1] before transformation", xlab = "V1",col = "yellow",border = "blue", xlim = c(0,10))

hist(ndat[,2],main = "histogram [V2] before transformation", xlab = "V2",col = "blue",border = "white", xlim = c(0,10), ylim = c(0,250), breaks = 4)

#hist for variable V2

# Give the chart file a name.
png(file = "hist_V2.png")

# Create the histogram.
hist(ndat[,2],main = "histogram [V2] before transformation", xlab = "V2",col = "blue",border = "white", xlim = c(0,10), ylim = c(0,250), breaks = 4)

# Save the file.
dev.off()

hist(ndat[,3],main = "histogram [V3] before transformation", xlab = "V3",col = "red",border = "white", xlim = c(0,12), breaks = 4)

#hist for variable V3

# Give the chart file a name.
png(file = "hist_V3.png")

# Create the histogram.
hist(ndat[,3],main = "histogram [V3] before transformation", xlab = "V3",col = "red",border = "white", xlim = c(0,12), breaks = 4)

# Save the file.
dev.off()

hist(ndat[,4],main = "histogram [V4] before transformation", xlab = "V4",col = "brown",border = "white", xlim = c(0,8), breaks = 4)

#hist for variable V4

# Give the chart file a name.
png(file = "hist_V4.png")

# Create the histogram.
hist(ndat[,4],main = "histogram [V4] before transformation", xlab = "V4",col = "brown",border = "white", xlim = c(0,8), breaks = 4)

# Save the file.
dev.off()

hist(ndat[,5],main = "histogram [V5] before transformation", xlab = "V5",col = "pink",border = "white", xlim = c(50,100), breaks = 5)

#hist for variable V5

# Give the chart file a name.
png(file = "hist_V5.png")

# Create the histogram.
hist(ndat[,5],main = "histogram [V5] before transformation", xlab = "V5",col = "pink",border = "white", xlim = c(50,100), breaks = 5)

# Save the file.
dev.off()

hist(ndat[,6],main = "histogram [V6] before transformation", xlab = "V6",col = "blue",border = "white", xlim = c(0,300))

#hist for variable V6

# Give the chart file a name.
png(file = "hist_V6.png")

# Create the histogram.
hist(ndat[,6],main = "histogram [V6] before transformation", xlab = "V6",col = "blue",border = "white", xlim = c(0,300))

# Save the file.
dev.off()

hist(ndat[,7],main = "histogram [V7] before transformation", xlab = "V7",col = "yellow",border = "white", xlim = c(0,900))

#hist for variable V7

# Give the chart file a name.
png(file = "hist_V7.png")

# Create the histogram.
hist(ndat[,7],main = "histogram [V7] before transformation", xlab = "V7",col = "yellow",border = "white", xlim = c(0,900))

# Save the file.
dev.off()

hist(ndat[,8],main = "histogram [V8] before transformation", xlab = "V8",col = "brown",border = "white", xlim = c(0,60))

#hist for variable V8

# Give the chart file a name.
png(file = "hist_V8.png")

# Create the histogram.
hist(ndat[,8],main = "histogram [V8] before transformation", xlab = "V8",col = "brown",border = "white", xlim = c(0,60))

# Save the file.
dev.off()

hist(ndat[,9],main = "histogram [V9] before transformation", xlab = "V9",col = "purple",border = "white", xlim = c(0,40))

#hist for variable V9

# Give the chart file a name.
png(file = "hist_V9.png")

# Create the histogram.
hist(ndat[,9],main = "histogram [V9] before transformation", xlab = "V9",col = "purple",border = "white", xlim = c(0,40))

# Save the file.
dev.off()

hist(ndat[,10],main = "histogram [V10] before transformation", xlab = "V10",col = "violet",border = "white", xlim = c(0,100))

#hist for variable V10

# Give the chart file a name.
png(file = "hist_V10.png")

# Create the histogram.
hist(ndat[,10],main = "histogram [V10] before transformation", xlab = "V10",col = "violet",border = "white", xlim = c(0,100))

# Save the file.
dev.off()

hist(ndat[,11],main = "histogram [V11] before transformation", xlab = "V11",col = "orange",border = "white", xlim = c(0,10))

#hist for variable V11

# Give the chart file a name.
png(file = "hist_V11.png")

# Create the histogram.
hist(ndat[,11],main = "histogram [V11] before transformation", xlab = "V11",col = "orange",border = "white", xlim = c(0,10))

# Save the file.
dev.off()

hist(ndat[,12],main = "histogram [V12] before transformation", xlab = "V12",col = "green",border = "white", xlim = c(0,10))

#hist for variable V12

# Give the chart file a name.
png(file = "hist_V12.png")

# Create the histogram.
hist(ndat[,12],main = "histogram [V12] before transformation", xlab = "V12",col = "green",border = "white", xlim = c(0,10))

# Save the file.
dev.off()

hist(ndat[,13],main = "histogram [V13] before transformation", xlab = "V13",col = "red",border = "white")

#hist for variable V13

# Give the chart file a name.
png(file = "hist_V13.png")

# Create the histogram.
hist(ndat[,13],main = "histogram [V13] before transformation", xlab = "V13",col = "red",border = "white")

# Save the file.
dev.off()

#Scatterplot

plot(x = ndat[,1],y = ndat[,13],
     xlab = "V1",
     ylab = "V13",
     xlim = c(0,10),
     #  ylim = c(15,30),		 
     main = "V1 vs V13"
)

png(file = "scatter_V1_V13.png")

plot(x = ndat[,1],y = ndat[,13],
     xlab = "V1",
     ylab = "V13",
     xlim = c(0,10),
     main = "V1 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,2],y = ndat[,13],
     xlab = "V2",
     ylab = "V13",
     xlim = c(0,10),
     #  ylim = c(15,30),		 
     main = "V2 vs V13"
)

png(file = "scatter_V2_V13.png")

plot(x = ndat[,2],y = ndat[,13],
     xlab = "V2",
     ylab = "V13",
     xlim = c(0,10),
     main = "V2 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,3],y = ndat[,13],
     xlab = "V3",
     ylab = "V13",
     xlim = c(0,12),
     main = "V2 vs V13"
)

png(file = "scatter_V3_V13.png")

plot(x = ndat[,3],y = ndat[,13],
     xlab = "V3",
     ylab = "V13",
     xlim = c(0,12),
     main = "V3 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,4],y = ndat[,13],
     xlab = "V4",
     ylab = "V13",
     xlim = c(0,8),
     main = "V4 vs V13"
)

png(file = "scatter_V4_V13.png")

plot(x = ndat[,4],y = ndat[,13],
     xlab = "V4",
     ylab = "V13",
     xlim = c(0,8),
     main = "V4 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,5],y = ndat[,13],
     xlab = "V5",
     ylab = "V13",
     xlim = c(50,100),
     main = "V5 vs V13"
)

png(file = "scatter_V5_V13.png")

plot(x = ndat[,5],y = ndat[,13],
     xlab = "V5",
     ylab = "V13",
     xlim = c(50,100),
     main = "V5 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,6],y = ndat[,13],
     xlab = "V6",
     ylab = "V13",
     xlim = c(0,300),
     main = "V6 vs V13"
)

png(file = "scatter_V6_V13.png")

plot(x = ndat[,6],y = ndat[,13],
     xlab = "V6",
     ylab = "V13",
     xlim = c(0,300),
     main = "V6 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,7],y = ndat[,13],
     xlab = "V7",
     ylab = "V13",
     xlim = c(0,900),
     main = "V7 vs V13"
)

png(file = "scatter_V7_V13.png")

plot(x = ndat[,7],y = ndat[,13],
     xlab = "V7",
     ylab = "V13",
     xlim = c(0,900),
     main = "V7 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,8],y = ndat[,13],
     xlab = "V8",
     ylab = "V13",
     xlim = c(0,60),
     main = "V8 vs V13"
)

png(file = "scatter_V8_V13.png")

plot(x = ndat[,8],y = ndat[,13],
     xlab = "V8",
     ylab = "V13",
     xlim = c(0,60),
     main = "V8 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,9],y = ndat[,13],
     xlab = "V9",
     ylab = "V13",
     xlim = c(0,50),
     main = "V9 vs V13"
)

png(file = "scatter_V9_V13.png")

plot(x = ndat[,9],y = ndat[,13],
     xlab = "V9",
     ylab = "V13",
     xlim = c(0,50),
     main = "V9 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,10],y = ndat[,13],
     xlab = "V10",
     ylab = "V13",
     xlim = c(0,100),
     main = "V10 vs V13"
)

png(file = "scatter_V10_V13.png")

plot(x = ndat[,10],y = ndat[,13],
     xlab = "V10",
     ylab = "V13",
     xlim = c(0,100),
     main = "V10 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,11],y = ndat[,13],
     xlab = "V11",
     ylab = "V13",
     xlim = c(0,10),
     main = "V11 vs V13"
)

png(file = "scatter_V11_V13.png")

plot(x = ndat[,11],y = ndat[,13],
     xlab = "V11",
     ylab = "V13",
     xlim = c(0,10),
     main = "V11 vs V13"
)
# Save the file.
dev.off()

plot(x = ndat[,12],y = ndat[,13],
     xlab = "V12",
     ylab = "V13",
     main = "V12 vs V13"
)

png(file = "scatter_V12_V13.png")

plot(x = ndat[,12],y = ndat[,13],
     xlab = "V12",
     ylab = "V13",
     main = "V12 vs V13"
)
# Save the file.
dev.off()

# Check skewness before transformaiton

#https://www.programmingr.com/statistics/skewness/
install.packages("moments")
library(moments)

skewness(ndat[,1])
skewness(ndat[,2])
skewness(ndat[,3])
skewness(ndat[,4])
skewness(ndat[,5])
skewness(ndat[,6])
skewness(ndat[,7])
skewness(ndat[,8])
skewness(ndat[,9])
skewness(ndat[,10])
skewness(ndat[,11])
skewness(ndat[,12])
skewness(ndat[,13])

#We'll proceed with transformation here
#Min-Max Transformation to selected variables first

newdat <- ndat

# min-max 1,2,4,6,13

newdat[,9] = (newdat[,9] - min(newdat[,9]))/(max(newdat[,9]) - min(newdat[,9]))
skewness(newdat[,9])

newdat[,9] = 0.15*((newdat[,9]*mean(newdat[,9]))/sd(newdat[,9]))+0.5
skewness(newdat[,9])

# polynomial transformation

newdat[,9] = newdat[,9]^1.1
skewness(newdat[,9])

hist(newdat[,9],main = "histogram [V9] after transformation", xlab = "V9",col = "purple",border = "white")

newdat[,6] = (newdat[,6] - min(newdat[,6]))/(max(newdat[,6]) - min(newdat[,6]))
skewness(newdat[,6])

newdat[,6] = newdat[,6]^0.9
skewness(newdat[,6])

hist(newdat[,6],main = "histogram [V6] after transformation", xlab = "V6",col = "purple",border = "white")

newdat[,11] = (newdat[,11] - min(newdat[,11]))/(max(newdat[,11]) - min(newdat[,11]))
skewness(newdat[,11])

newdat[,11] = newdat[,11]^0.9
skewness(newdat[,11])

hist(newdat[,11],main = "histogram [V11] after transformation", xlab = "V11",col = "blue",border = "white")

newdat[,8] = (newdat[,8] - min(newdat[,8]))/(max(newdat[,8]) - min(newdat[,8]))
skewness(newdat[,8])

newdat[,8] = 0.15*((newdat[,8]*mean(newdat[,8]))/sd(newdat[,8]))+0.5
skewness(newdat[,8])

newdat[,8] = newdat[,8]^-3.7
skewness(newdat[,8])

newdat[,8] = (newdat[,8] - min(newdat[,8]))/(max(newdat[,8]) - min(newdat[,8]))
skewness(newdat[,8])

newdat[,8] = max(newdat[,8]) - min(newdat[,8]) - newdat[,8]

hist(newdat[,8],main = "histogram [V8] after transformation", xlab = "V8",col = "red",border = "white")

newdat[,13] = (newdat[,13] - min(newdat[,13]))/(max(newdat[,13]) - min(newdat[,13]))
skewness(newdat[,13])

newdat[,13] = newdat[,13]^0.9
skewness(newdat[,13])

hist(newdat[,13],main = "histogram [V13] after transformation", xlab = "V13",col = "red",border = "white")

df=as.data.frame(newdat)

ndf = subset(df, select = c(V6,V8,V9,V11,V13) )


write.table(ndf, "eashan_transformed.txt", append = FALSE, sep = " ", dec = ".",
            row.names = FALSE, col.names = FALSE)

install.packages("lpSolve")
library(lpSolve)

source("AggWaFit718.R")

daat <- as.matrix(read.table("eashan_transformed_final.txt"))


# find the weights for a weighted arithmetic mean that best 
fit.QAM(daat[,c(1:4,5)]) # by default, it uses AM
WAMweights <- c(0.414, 0.327, 0.258, 0)

#  Weighted power means with p=0.5, the outputs files are PM05output1.txt and PM05stats1.txt
fit.QAM(daat[,c(1:4,5)],output.1="PM05output1.txt",stats.1="PM05stats1.txt", g=PM05,g.inv = invPM05) # p = 0.5
PM05wt <- c(0.442, 0.250, 0.296, 0.010)

#  Weighted power means with p=2, the outputs files are QMoutput1.txt and QMstats1.txt
fit.QAM(daat[,c(1:4,5)],output.1="QMoutput1.txt",stats.1="QMstats1.txt",g=QM,g.inv = invQM) # p = 2
QMwt <- c(0.263, 0.531, 0.206, 0)

#  OWA, the outputs files are OWAoutput1.txt and OWAstats1.txt 
fit.OWA(daat[,c(1:4,5)],"OWAoutput1.txt","OWAstats1.txt") # OWA
ow <- c(0.208, 0.481, 0, 0.310)

#Check individual correlation:

df=as.data.frame(daat)
cor(df$V1, df$V5)
cor(df$V2, df$V5)
cor(df$V3, df$V5)
cor(df$V4, df$V5)

#prediction

new_dat <- c(181.1, 14.3, 20.7, 4.9)
new_dat = (new_dat - min(new_dat))/(max(new_dat) - min(new_dat))
skewness(new_dat)
new_dat = new_dat^0.35
skewness(new_dat)

QAM(new_dat, WAMweights)
QAM(new_dat, PM05wt)
QAM(new_dat, QMwt)
OWA(new_dat, ow)