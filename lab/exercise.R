# Create a vector of 100 Credit Card Users
credit_card_users <- paste("User", 1:100)
# Create a vector of amount of money owed using the runif function
money_owed <- runif(100, -50, 100)
# Create a vector of amount of money paid (that are typically higher than the amount Owed) (use runif again)
money_paid <- runif(100, 50, 200)
# Create a data.frame by combining the vectors
bank <- data.frame(credit_card_users, money_owed, money_paid)
# Create a column "Difference" that stores the difference between amount Paid and amount Owed
bank$difference <- bank$money_paid - bank$money_owed
# Create a column that is TRUE if the person Paid more than they Owe
bank$true <- bank$difference > 0
# What was the amount Owed of User 57?
user_57 <- bank[57, 'money_owed']
print(user_57)
# How many users paid more than they owe?
users_paid <- sum(bank$true == TRUE)
# What was the total amount of money paid for all users?
total <- sum(bank$money_paid)
# What was the name of the user who had the highest "Difference"?
highest_difference <- bank$credit_card_users[bank$difference == max(bank$difference)]
# Who was the user with the largest amount paid? 

# What was the average "Difference"?

# challenge: how to use dplyr to answer these questions?
