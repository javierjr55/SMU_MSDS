# MLR Example with Keras and Boston Housing Data

library(keras)
library(tfruns)

install_keras()


boston_housing <- dataset_boston_housing()

c(train_data, train_labels) %<-% boston_housing$train
c(test_data, test_labels) %<-% boston_housing$test


library(tibble)

column_names <- c('CRIM', 'ZN', 'INDUS', 'CHAS', 'NOX', 'RM', 'AGE', 
                  'DIS', 'RAD', 'TAX', 'PTRATIO', 'B', 'LSTAT')
train_df <- as_tibble(train_data)
colnames(train_df) <- column_names

train_df


# Test data is *not* used when calculating the mean and std.

# Normalize training data
train_data <- scale(train_data) 

# Use means and standard deviations from training set to normalize test set
col_means_train <- attr(train_data, "scaled:center") 
col_stddevs_train <- attr(train_data, "scaled:scale")
test_data <- scale(test_data, center = col_means_train, scale = col_stddevs_train)

train_data[1, ] # First training sample, normalized


#Build the Model

build_model <- function() {
  
  model <- keras_model_sequential() %>%
    layer_dense(units = 64,,
                input_shape = dim(train_data)[2]) %>%
    layer_dense(units = 64, activation = "relu") %>%
    layer_dense(units = 1)
  
  model %>% compile(
    loss = "mse",
    optimizer = optimizer_rmsprop(),
    metrics = list("mean_absolute_error")
  )
  
  model
}

model <- build_model()
model %>% summary()


print_dot_callback <- callback_lambda(
  on_epoch_end = function(epoch, logs) {
    if (epoch %% 80 == 0) cat("\n")
    cat(".")
  }
)    


epochs <- 500

# Fit the model and store training stats
history <- model %>% fit(
  train_data,
  train_labels,
  epochs = epochs,
  validation_split = 0.2,
  verbose = 0,
  callbacks = list(print_dot_callback)
)


library(ggplot2)

plot(history, metrics = "mean_absolute_error", smooth = FALSE) +
  coord_cartesian(ylim = c(0, 5))


# The patience parameter is the amount of epochs to check for improvement.
early_stop <- callback_early_stopping(monitor = "val_loss", patience = 20)

model <- build_model()
history <- model %>% fit(
  train_data,
  train_labels,
  epochs = epochs,
  validation_split = 0.2,
  verbose = 0,
  callbacks = list(early_stop, print_dot_callback)
)

plot(history, metrics = "mean_absolute_error", smooth = FALSE) +
  coord_cartesian(xlim = c(0, 150), ylim = c(0, 5))


c(loss, mae) %<-% (model %>% evaluate(test_data, test_labels, verbose = 0))

paste0("Mean absolute error on test set: $", sprintf("%.2f", mae * 1000))


test_predictions <- model %>% predict(test_data)
test_predictions[ , 1]







#SLR mtcars

# Simple Linear Regression with NN and Keras

library(keras)
library(tfruns)

install_keras()


mtcars

train_data = mtcars[1:20,6] # weigth
train_labels = mtcars[1:20,1] # mpg


test_data = mtcars[21:32,6] # weigth
test_labels = mtcars[21:32,1] # mpg


library(tibble)

column_names <- c('MPG', 'WEIGHT')
train_df <- as_tibble(train_data)
colnames(train_df) <- column_names

train_df


# Test data is *not* used when calculating the mean and std.

# Normalize training data
train_data <- scale(train_data) 

# Use means and standard deviations from training set to normalize test set
col_means_train <- attr(train_data, "scaled:center") 
col_stddevs_train <- attr(train_data, "scaled:scale")
test_data <- scale(test_data, center = col_means_train, scale = col_stddevs_train)

train_data[1, ] # First training sample, normalized


#Build the Model

build_model <- function() {
  
  model <- keras_model_sequential() %>%
    layer_dense(units = 1,,
                input_shape = dim(train_data)[2]) %>%
    layer_dense(units = 1)
  
  model %>% compile(
    loss = "mse",
    optimizer = optimizer_rmsprop(),
    metrics = list("mean_absolute_error")
  )
  
  model
}

model <- build_model()
model %>% summary()


print_dot_callback <- callback_lambda(
  on_epoch_end = function(epoch, logs) {
    if (epoch %% 80 == 0) cat("\n")
    cat(".")
  }
)    


epochs <- 100

# Fit the model and store training stats
history <- model %>% fit(
  train_data,
  train_labels,
  epochs = epochs,
  validation_split = 0.2,
  verbose = 0,
  callbacks = list(print_dot_callback)
)


library(ggplot2)

plot(history, metrics = "mean_absolute_error", smooth = FALSE) +
  coord_cartesian(ylim = c(0, 50))


# The patience parameter is the amount of epochs to check for improvement.
early_stop <- callback_early_stopping(monitor = "val_loss", patience = 20)

model <- build_model()
history <- model %>% fit(
  train_data,
  train_labels,
  epochs = epochs,
  validation_split = 0.2,
  verbose = 0,
  callbacks = list(early_stop, print_dot_callback)
)

plot(history, metrics = "mean_absolute_error", smooth = FALSE) +
  coord_cartesian(xlim = c(0, 150), ylim = c(0, 50))


c(loss, mae) %<-% (model %>% evaluate(test_data, test_labels, verbose = 0))

paste0("Mean absolute error on test set: $", sprintf("%.2f", mae * 1000))


test_predictions <- model %>% predict(test_data)
test_predictions[ , 1]




















#SLR  mpg

# Simple Linear Regression with NN and Keras

library(keras)
library(tfruns)
library(ggplot2)

install_keras()


head(mpg)

train_data = mpg[1:200,8] # cty
train_labels = mpg[1:200,9] # hwy
train_labels = train_labels$hwy


test_data = mpg[201:234,8] # cty
test_labels = mpg[201:234,9] # hwy
test_labels = test_labels$hwy



# Normalize training data
train_data <- scale(train_data) 

# Use means and standard deviations from training set to normalize test set
col_means_train <- attr(train_data, "scaled:center") 
col_stddevs_train <- attr(train_data, "scaled:scale")
# Test data was *not* used when calculating the mean and std.
test_data <- scale(test_data, center = col_means_train, scale = col_stddevs_train)

train_data[1, ] # First training sample, normalized



#Build the Model

build_model <- function() {
  inputs = layer_input(shape = 1)
  output = layer_dense(inputs,units = 1,use_bias = TRUE)
  model <- keras_model(inputs,output)
  
  model %>% compile(
    loss = "mse",
    optimizer = optimizer_rmsprop(),
    metrics = list("mean_absolute_error")
  )
  
  model
}

model <- build_model()
model %>% summary()



print_dot_callback <- callback_lambda(
  on_epoch_end = function(epoch, logs) {
    if (epoch %% 80 == 0) cat("\n")
    cat(".")
  }
)    


epochs <- 4000

# Fit the model and store training stats
history <- model %>% fit(
  as.matrix(train_data),
  train_labels,
  epochs = epochs,
  validation_split = 0.2,
  verbose = 0,
  callbacks = list(print_dot_callback)
)


library(ggplot2)

plot(history, metrics = "mean_absolute_error", smooth = FALSE) +
  coord_cartesian(ylim = c(0, 50))


# The patience parameter is the amount of epochs to check for improvement.
early_stop <- callback_early_stopping(monitor = "val_loss", patience = 20)

model <- build_model()
history <- model %>% fit(
  as.matrix(train_data),
  train_labels,
  epochs = epochs,
  validation_split = 0.2,
  verbose = 0,
  callbacks = list(early_stop, print_dot_callback)
)

plot(history, metrics = "mean_absolute_error", smooth = FALSE) +
  coord_cartesian(ylim = c(0, 50))

c(loss, mae) %<-% (model %>% evaluate(as.matrix(test_data), test_labels, verbose = 0))

paste0("Mean absolute error on test set: ", sprintf("%.2f", mae)," mpg")


test_predictions <- model %>% predict(as.matrix(test_data))
test_predictions[ , 1]




# Compare intercept and slope with NN weightsj ... a little off... try with more data? ..... more epochs?

fit = lm(hwy~cty, data = mpg[1:200,])
summary(fit)

model$weights # weights here represent intercept and slope

plot(mpg[1:200,8]$cty, mpg[1:200,9]$hwy)
lines(test_data$cty,test_predictions,col = "red",pch = 15)

preds = predict(fit, newdata = test_data)
lines(test_data$cty,preds,col = "blue",pch = 15)


