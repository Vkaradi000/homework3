Victoria Karadimas

Homework 3

Safinaz Ali and Liam O'Neill



load("/Users/victoria/Desktop/B2000/Household_Pulse_data (2).RData")

# from orig_data, pick a subset
restrict1 <- (Household_Pulse_data == 5) | (Household_Pulse_data == "Female")
data_new <- subset(Household_Pulse_data,restrict1)

restrict1 <- (Household_Pulse_data == 5) | (Household_Pulse_data == "Age<=25")
data_new <- subset(Household_Pulse_data,restrict1)

My group and i decided  to compare two groups,
1. how many of the employed people were vaccinated ?
2. What age group got the most vaccinated ?

restrict1 <-(Household_Pulse_data$RECVDVACC == "yes got vaxx") & (Household_Pulse_data$ANYWORK == "yes employment in last 7 days")
data_new <- subset(Household_Pulse_data,restrict1)

summary(restrict1)
Mode   FALSE    TRUE 
logical   34517   34597


>restrict2 <-(Household_Pulse_data$RECVDVACC == "yes got vaxx") & (Household_Pulse_data$TBIRTH_YEAR) 
data_new <- subset(Household_Pulse_data,restrict2)

summary(restrict2)
   Mode   FALSE    TRUE 
logical    8788   60326 




We concluded, that the older age group was more vaccinated compared to the younger age group.
Also those who were employed were more likely to be vaccinated.
