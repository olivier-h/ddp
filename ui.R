shinyUI(
	pageWithSidebar(
		headerPanel("Central Limit Theorem application on exponential distribution"),
		sidebarPanel(
			p(
				'In this application we investigate the exponential distribution in R.
        For various sample sizes, we simulate many samples and plot the mean of each sample in an histogram
        to see their distribution.'),
      p('
        The Central Limit Theorem states that the mean of many random variables independently drawn from
        the same distribution is distributed approximately normally.'),
      p('
        This application permits de verify that for a sample count large enough, sample means distibution
        is approximatively normal.The theoretical mean is calculated and compared to sample mean.
        The theoretical variance is calculated and compared to sample variance.'),
			sliderInput('sampleCount', 'Sample count : ', value = 1000, min = 1000, max = 10000, step = 1000,),
			sliderInput('sampleSize', 'Sample size : ', value = 1, min = 1, max = 1000, step = 1,)
		),
		mainPanel(plotOutput('myHist'))
	)
)