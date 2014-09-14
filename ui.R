library(shiny)

# Define UI for application that draws a histogram
shinyUI(
	fluidPage(

		# Application title
		titlePanel("Son's Height Predictor!"),

		# Sidebar with a slider input for the number of bins
		sidebarLayout(
			sidebarPanel(
    				h3("Enter the Height of the Father in inches in the box below."),
    				p("Enter only positive numbers i.e. numbers greater than 0."),
    				p("You may enter numbers with decimals."),
    				p("Minimum accepted value = 10 inches, Maximum accepted value = 100 inches."),
    				numericInput("fatherHeight", label = h4("Father's Height (in inches):"), 65.0000, min=10.0000, max=100.0000),
    				submitButton("Submit")
    			),

			# Show a plot of the generated distribution
			mainPanel(
    				h3("What does the Tool do?"),
    				p("This tool uses linear regression model based on data collected for the heights of father and sons to predict the height of a son based on the provided height of the father."),
    				br(),
    				br(),
    				h3("Entered Father's Height (in inches)"),
    				textOutput("fHeight"),
    				br(),
    				h3("Predicted Son's Height (in inches)"),
    				textOutput("pHeight")
			)
		)
	)
)