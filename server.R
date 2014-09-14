library(shiny)
library(UsingR)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {


	output$fHeight <- renderText({
		if(input$fatherHeight >= 10) {
			if(input$fatherHeight <= 100) {
  				paste(input$fatherHeight)
			}
			else {
				paste("Invalid Data Provided")
			}
		}
		else {
			paste("Invalid Data Provided")
		}
	})
	
	output$pHeight <- renderText({
 		if(input$fatherHeight >= 10) {
			if(input$fatherHeight <= 100) {
 				fit <- lm(sheight ~ fheight, data = father.son)
  				predictedSonHeight <- fit$coeff[1] + fit$coeff[2] * input$fatherHeight
  				paste(predictedSonHeight)
			}
			else {
				paste("Invalid Data Provided")
			}
		}
		else {
			paste("Invalid Data Provided")
		}
	})
})