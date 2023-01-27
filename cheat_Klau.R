#The function cheat() 
cheat <- function(exercise){ #takes argument exercise
  if (exercise == "Q3") {
    library(ggplot2)
    install.packages("titanic")
    library(titanic)
    titanic_train$Survived[titanic_train$Survived == 0] <- "dead" #assign dead to Survived = 0
    titanic_train$Survived[titanic_train$Survived == 1] <- "alive" #assign alive to Survived = 1
    Q3_plot <- ggplot(data = titanic_train,
                      mapping = aes(x = Sex,
                                    fill = factor(Survived,
                                                  levels = c("dead", "alive")))) +
      geom_bar(position = "stack") + #stack bars on top of each other
      labs(fill = "How did it go?") #add legend label "How did it go?"
    return(Q3_plot)
  } 
  if (exercise == "Q5") {
    library(ggplot2)
    plot(ToothGrowth$supp, ToothGrowth$len)
    Q5_plot <-
      ggplot(data = ToothGrowth, mapping = aes(x = supp, y = len)) +
      geom_boxplot() #make plot with ggplot function to be able to change it
    Q5_improved <-
      Q5_plot + ggtitle("Plot of length by supp condition") + #adding title
      xlab("Teeth supp") + ylab("Teeth length") + #adding x and y axis labels
      theme(plot.title = element_text(hjust = 0.5, face = "bold", size = 12)) + #customize title
      theme(axis.ticks.x = element_blank()) #removing x-axis ticks
    return(Q5_improved)
  }
  if (exercise == "Q7") {
    Q7_data <- ChickWeight
    Q7_plot <- ggplot(data = Q7_data, aes(x = Time, y = weight)) +
      geom_smooth(method = lm) #plot a smooth plot with x = Time and y = weight
    return(Q7_plot)
  }
}
cheat("Q7") #test function 