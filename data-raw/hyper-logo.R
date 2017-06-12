png("public/images/logo.png", width = 50, height = 50)
op <- par(mar = rep(0, 4), family = "sans")
plot(0, 0, type ="n", axes = FALSE, xlab = "", ylab = "")
text(0, 0, lab = "[ ... ]", cex = 1.8)
par(op)
dev.off()

