shinyServer(
  
  function(input, output) {
    
    output$myHist <- renderPlot({
      
      set.seed(100)
      
      sampleSize <- input$sampleSize
      sampleCount <- input$sampleCount
      
      title = paste("Distribution of ", sampleCount, " averages of ", sampleSize, " random exponentials")
      
      mns = NULL
      for (i in 1 : sampleCount) mns = c(mns, mean(rexp(sampleSize, 0.2)))
      
      hist(
        mns,
        xlab = "Averages of random exponentials",
        ylab = "Frequency",
        main = title)
            
      theoreticalMean = paste("Theoretical Mean : ", 1/0.2)
      sampleMean = paste("Sample Mean : ", round(mean(mns), 3))
      
      theoreticalVariance = paste("Theoretical Variance : ", round(1/0.2^2/sampleSize, 3))
      sampleVariance = paste("Sample Variance : ", round(var(mns), 3))
      
      legend(
        "topright",
        bty = "n",
        lty = 0,
        cex = 1,
        legend = c(theoreticalMean, sampleMean, "", theoreticalVariance, sampleVariance))
            
    })
  }
)