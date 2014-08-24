shinyUI(fluidPage(
  titlePanel("ScubaSteve22 Personal Loan calculator"),
  
  fluidRow(
    # Application title

    sidebarPanel(
      numericInput('interest', 'Annual Interest Rate (%)', 10, min = 5, max = 20, step = 0.5),
      sliderInput('amount', 'Loan Amount ($)', 27500, min = 5000, max = 50000, step = 500),
      sliderInput('years', 'Loan Term (years)', 4, min = 1, max = 7, step = 1),
      selectInput("freq", label = p("Frequency of payments:"), 
                  choices = list("Monthly" = 1, "Fortnightly" = 2,
                                 "Weekly" = 4), selected = 1),
      submitButton('Submit')
    ),
    mainPanel(img(src = "PLPIC.png"), height = 150, width = 6),
    mainPanel(
      h3('Monthly Repayment ($):'),
      verbatimTextOutput("prediction")
      
   #   Your repayment at 13.9% p.a. is $2,087* per month on a fixed rate
   
    )
  )
))


