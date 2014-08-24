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
      
      mainPanel(h5('Basic instructions:')),
      mainPanel(p('The key to financial stablility is affordability andmaking sure that 
                  you are able to repay what you borrow.  The purpose of this application 
                  is to help you understand your financial commitments based upon your loan
                  requirements.  Simply enter the annual fixed rate, the amount you wish
                  to borrow and the repayment period for loan and we will tell you your
                  necessary repayments.  We know that people get paid on different cycles
                  so you can also change the frequency of payment to meet your needs.  So 
                  enter your details hit submit and I hope we can help assist you in
                  your financial wellbeing.')),
    
    mainPanel(
      h4('Monthly Repayment ($):'),
      verbatimTextOutput("prediction")
      
    )
  )
))


