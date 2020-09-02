install.packages("openxlsx")

library("openxlsx")

df <- data.frame(
  group = c("Male", "Female", "Child"),
  value = c(25, 25, 50)
)

df2 <- data.frame(
  group = c("Male", "Female", "Child"),
  value = c(25, 25, 50)
)

base <- list(df,df2)

names(base) <- paste("sheet", seq_along(base), sep="_")

write.xlsx(base, file="/Users/lud/Desktop/test.xlsx")

# sinon penser à faire une boucle dans la liste [[i]]
