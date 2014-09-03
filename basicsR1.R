plot(density(train$Age,na.rm=TRUE))

count<-table(train$Survived,train$Sex)
barplot(counts, xlab = "Gender", ylab = "Number of People", main = "survived and deceased between male and female")

practise=train[-c(1,9:12)]
# to remove redundant  columns

train$Sex=gsub("female",1,train$Sex)
#to replace categorical to dummy 

master_vector=grep("Mr.",train$Name,fixed=TRUE)
#will store row index containing the word
for(i in master_vector){
  
}

#to add a column
train["moither"]=NA

for(i in 1:nrow(trainData)) {
  if(trainData$Name[i] == "Mrs" & trainData$Parch[i] > 0) {
    trainData$Mother[i] = 1
  } else {
    trainData$Mother[i] = 2
  }
}

#logistoc regression model , glm =>  generalised linear model
train.glm <- glm(Survived ~ Pclass + Sex + Age + Sex*Pclass ,family = binomial, data = train)
summary(train.glm)

p.hats <- predict.glm(train.glm, newdata = testData, type = "response")




