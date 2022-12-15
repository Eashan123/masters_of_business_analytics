install.packages("lpSolve")
install.packages("lpSolveAPI")
library(lpSolve)
library(lpSolveAPI)

#Q1)

model <- make.lp(0, 2) # initialise 0 constaint and two variables
lp.control(model, sense= "minimize")
set.objfn(model, c(5,8)) # 5x + 8y   Setting the objective function

add.constraint(model, c(1,1), ">=", 60) # x + y >= 60

add.constraint(model, c(15,-5), ">=", 0) # 15x - 5y >= 0

add.constraint(model, c(-10,20), ">=", 0) # -10x + 20y >= 0

add.constraint(model, c(-30,20), "<=", 0) # -30x + 20y <= 0

set.bounds(model, lower = c(0,0), columns = c(1, 2)) # x1, x2 >= 0

set.bounds(model, upper = c(Inf,Inf), columns = c(1, 2))

RowNames <- c("Constraint 1", "Constraint 2", "Constraint 3", "Constraint 4")
ColNames <- c("A", "B")
dimnames(model) <- list(RowNames, ColNames) # Rename the rows and columns in the model 

solve(model)
get.objective(model)   # Retrieve the value of the objective function
get.variables(model)   # Retrieve the values of the decision variables
get.constraints(model) # Retrieve the values of the constraints

#Q2

lprec = make.lp(19, 12)
lp.control(lprec, sense = "maximize")
#set objective function:

set.objfn(lprec, c(2396, 1897.2, 3397, 2376, 1877.2, 3377, 2416, 1197.2, 3417, 2296, 1797.2, 3297))

# set constraints:

set.row(lprec, 1, c(1,1,1,1), indices = c(1,4,7,10))
set.row(lprec, 2, c(1,1,1,1), indices = c(2,5,8,11))
set.row(lprec, 3, c(1,1,1,1), indices = c(3,6,9,12))
set.row(lprec, 4, c(1,1,1), indices = c(1,2,3))
set.row(lprec, 5, c(1,1,1), indices = c(4,5,6))
set.row(lprec, 6, c(1,1,1), indices = c(7,8,9))
set.row(lprec, 7, c(1,1,1), indices = c(10,11,12))
set.row(lprec, 8, c(0.2, -0.8, -0.8, -0.8), indices = c(1,4,7,10))
set.row(lprec, 9, c(-0.1, 0.9, -0.1, -0.1), indices = c(1,4,7,10))
set.row(lprec, 10, c(-0.05, -0.05, 0.95, -0.05), indices = c(1,4,7,10))
set.row(lprec, 11, c(-0.05, -0.05, -0.05, 0.95), indices = c(1,4,7,10))
set.row(lprec, 12, c(0.35, -0.65, -0.65, -0.65), indices = c(2,5,8,11))
set.row(lprec, 13, c(-0.2, 0.8, -0.2, -0.2), indices = c(2,5,8,11))
set.row(lprec, 14, c(-0.05, -0.05, 0.95, -0.05), indices = c(2,5,8,11))
set.row(lprec, 15, c(-0.1, -0.1, -0.1, 0.9), indices = c(2,5,8,11))
set.row(lprec, 16, c(0.5, -0.5, -0.5, -0.5), indices = c(3,6,9,12))
set.row(lprec, 17, c(-0.1, 0.9, -0.1, -0.1), indices = c(3,6,9,12))
set.row(lprec, 18, c(-0.1, -0.1, 0.9, -0.1), indices = c(3,6,9,12))
set.row(lprec, 19, c(-0.3, -0.3, -0.3, 0.7), indices = c(3,6,9,12))

set.rhs(lprec, c(1,0.7,0.75,10,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0))
set.constr.type(lprec, c(">=", ">=", ">=", "<=", "<=", "<=", "<=", "=", "=", "=", "=", "=", "=", "=", "=", "=", "=", "=", "="))
set.type(lprec, c(1:12), "real")
set.bounds(lprec, lower = rep(0,12), upper = rep(Inf, 12))
solve(lprec)
val <- get.objective(lprec)
sol <- get.variables(lprec)
cons <- get.constraints(lprec)

#Q3
lprec <- make.lp(0, 6) #var - y1,y2,y3,y4,y5,v
lp.control(lprec, sense="minimize")
set.objfn(lprec, c(0,0,0,0,0,1)) #y1,y2,y3,y4,y5,V

add.constraint(lprec, c(-1,1,1,1,1,1), ">=", 0)
add.constraint(lprec, c(-1,-1,1,1,1,1), ">=", 0)
add.constraint(lprec, c(-1,-1,-1,1,1,1), ">=", 0)
add.constraint(lprec, c(-1,-1,-1,-1,1,1), ">=", 0)
add.constraint(lprec, c(1,1,1,1,-1,1), ">=", 0)
add.constraint(lprec, c(1,1,1,1,1,0), "=", 1)

set.bounds(lprec, lower=c(0,0,0,0,0,-Inf))

RowNames <- c("Constraint 1", "Constraint 2", "Constraint 3","Constraint 4","Constraint 5","Constraint 6")

ColNames <- c("y1", "y2", "y3", "y4", "y5", "v")

dimnames(lprec) <- list(RowNames, ColNames) # Rename the rows and columns in the model 

solve(lprec)
get.objective(lprec)
get.variables(lprec)