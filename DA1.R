# Introduction to RStudio
loan50 <- read.csv('loan50.csv')

# Part 1 - Exploring a Single Quantitative Variable
# For this portion of the assignment, you’ll practice using R to explore the
# annual_income variable in the loan50.csv data set.

# a.  Construct a histogram of the annual income data. Include informative
#     labels and a title. Include your histogram below. To copy or save a graph
#     from RStudio, click the Export button just above the preview of the graph.
#     From there you can choose to Save Image or Copy to Clipboard.
hist(loan50$annual_income, 
     main = "Distribution of Annual Income for \n50 Lending Club Loans", 
     xlab = "Annual Income in Dollars")

# b.  Construct a boxplot of the annual income data. Include informative labels
#     and a title. Include your boxplot below.
boxplot(loan50$annual_income, 
        horizontal = TRUE, 
        main = "Distribution of Annual Income for \n50 Lending Club Loans", 
        xlab = "Annual Income in Dollars")

# c.  Using the histogram you constructed in part a and the boxplot from part b,
#     describe the shape of the distribution of the annual income variable and
#     comment on the presence of any outliers.
#     
#     The distribution of annual Income for 50 Lending Club Loans as skewed
#     right.

# d.  Calculate the mean of the annual income data.
mean(loan50$annual_income)

# e.  Calculate the median of the annual income data.
median(loan50$annual_income)

# f.  Which measure of center (mean or median) is more appropriate for these
#     data? Why? Consider the shape of the distribution discussed in part c.
#
#     Median is best in this case because the data is skewed with outliers.

# g.  Calculate the standard deviation of the annual income data.
sd(loan50$annual_income)

# h.  Calculate the interquartile range of the annual income data.
IQR(loan50$annual_income)


# Part 2 – Visualizing Two Variables
# Let’s continue to explore the annual income data, but now consider how annual
# income data may vary between loan status (current or fully paid).

# a.  Construct a side-by-side boxplot for annual income broken up by loan
#     status. Include informative labels and a title.
boxplot(loan50$annual_income ~ loan50$loan_status, 
        horizontal = TRUE, 
        main = "Distribution of Annual Income for \n50 Lending Club Loans", 
        xlab = "Annual Income in Dollars", 
        ylab = "Loan Status")

# b.  How do the distributions of annual income compare for loan status? Comment
#     on the shape, center, spread, and presence of outliers for the two groups.

# Part 3 – Exploring a Single Categorical Variable
# Finally, we’ll focus our attention only on the loan status variable.

# a.  Construct a table of counts for the loan status variable. Report the
#     number of observations in each category below.
counts <- table(loan50$loan_status)
counts

# b.  Construct a table of proportions for the loan status variable. Report the
#     proportions for each category below.
prop.table <- prop.table(counts)
prop.table

# c.  Construct a barplot that displays the distribution of loan status types.
#     Include informative labels and a title. Include your barplot below.
barplot(prop.table,
        ylim = c(0,1),
        main = "Distribution of Loan Status Types for \n50 Lending Club Loans", 
        ylab = "Proportion")
