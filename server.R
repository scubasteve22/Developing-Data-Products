plcalc <- function(interest, amount, years, freq) round((amount * ( ((interest / 100) / 12) / (1 - (1 + ((interest / 100) / 12))^ -(years * 12)))) / freq, 2) 

shinyServer(
  function(input, output) {
    output$prediction <- renderPrint({plcalc(input$interest, input$amount, input$years, as.numeric(input$freq))})
    
  }
)

  

