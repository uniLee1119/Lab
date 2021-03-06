\name{bar_example}
\alias{bar_example}

\title{Bar examples}


\examples{
bar_example1 <- function() {
  dat <- data.frame(
    time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
    total_bill = c(14.89, 17.23)
  )
  ggplot(data=dat, aes(x=time, y=total_bill)) +
    geom_bar(stat="identity")
}
bar_example2 <- function() {
  dat <- data.frame(
    time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
    total_bill = c(14.89, 17.23)
  )
  # Map the time of day to different fill colors
  ggplot(data=dat, aes(x=time, y=total_bill, fill=time)) +
    geom_bar(stat="identity")
}
bar_example3 <- function() {
  dat <- data.frame(
    time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
    total_bill = c(14.89, 17.23)
  )
  # Add a black outline
  ggplot(data=dat, aes(x=time, y=total_bill, fill=time)) +
    geom_bar(colour="black", stat="identity")
}
bar_example4 <- function() {
  dat <- data.frame(
    time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
    total_bill = c(14.89, 17.23)
  )
  ggplot(data=dat, aes(x=time, y=total_bill, fill=time)) +
    geom_bar(colour="black", stat="identity") +
    guides(fill=FALSE)
}
bar_example5 <- function() {
  dat <- data.frame(
    time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
    total_bill = c(14.89, 17.23)
  )
  # Add title, narrower bars, fill color, and change axis labels
  ggplot(data=dat, aes(x=time, y=total_bill, fill=time)) +
    geom_bar(colour="black", fill="#DD8888", width=.8, stat="identity") +
    guides(fill=FALSE) +
    xlab("Time of day") + ylab("Total bill") +
    ggtitle("Average bill for 2 people")
}
bar_example6 <- function() {
  # Bar graph of counts
  ggplot(data=tips, aes(x=day)) +
    geom_bar(stat="count")
  ## Equivalent to this, since stat="bin" is the default:
  # ggplot(data=tips, aes(x=day)) +
  #    geom_bar()
}
bar_example7 <- function() {
  # Stacked bar graph -- this is probably not what you want
  ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
    geom_bar(stat="identity")
}
bar_example8 <- function() {
  # Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
  ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
    geom_bar(stat="identity", position=position_dodge())
}
bar_example9 <- function() {
  ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black")
}
bar_example10 <- function() {
  # Change colors
  ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("#999999", "#E69F00"))
}
bar_example11 <- function() {
  # Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
  ggplot(data=dat1, aes(x=sex, y=total_bill, fill=time)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black")
}
bar_example12 <- function() {
  # A bar graph
  ggplot(data=dat1, aes(x=time, y=total_bill, fill=sex)) +
    geom_bar(colour="black", stat="identity",
             position=position_dodge(),
             size=.3) +                        # Thinner lines
    scale_fill_hue(name="Sex of payer") +      # Set legend title
    xlab("Time of day") + ylab("Total bill") + # Set axis labels
    ggtitle("Average bill for 2 people") +     # Set title
    theme_bw()
}
bar_example13 <- function() {
  datn2 <- datn
  datn2$dose <- factor(datn2$dose)
  # Use datn2 from above
  ggplot(data=datn2, aes(x=dose, y=length, fill=supp)) +
    geom_bar(stat="identity", position=position_dodge())
}
bar_example14 <- function() {
  # Use the original data frame, but put factor() directly in the plot specification
  ggplot(data=datn, aes(x=factor(dose), y=length, fill=supp)) +
    geom_bar(stat="identity", position=position_dodge())
}


}
