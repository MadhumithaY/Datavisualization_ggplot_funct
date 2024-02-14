#ggplot functions
#1.Aestheics - A visual property of an object in your plot.
#2.Geoms - The geometric object used to represent your data.
#3.Facets - Let you display smaller groups, or subsets, of your data.
#4.Labels and annotations - Let you customize your plot
#tidyverse package is a system of packages in R commonly used for data manipulation, exploration and visualization
#Note : Run step by step 
install.packages(tidyverse)

#after installing call out tidyverse package
library(tidyverse)

#Let's call out ggplot2 which is the most common data visualization package used in R
library(ggplot2)

##Let's call out our default data set Palmerpenguins, 
#In this data set there are 3 common types of penguin species 
#(Adeline,Gentoo,Chinstrap), it's based on the suryvey that body mass increases when flipper length increases
library(palmerpenguins)

#There are 3 steps to create data visualization using ggplot
#1. Start with the ggplot function and choose a dataset to work with.
#2. Add a geom_function to display your data
#3. Map the variable you want to plot in the arguments of the aes() function
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#We can also add color, shape and size to the plot by adding them in our existing code
#In this code we are adding color, shape and size to the penguin species, so we have to mention this in our code
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species, shape=species, size=species))

#If we need specific color to our data set instead of default we can add them using color code outsid ethe aes function
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="orange")

#In the above plot, the points we messy, so we can create a line instead of points by using smooth function
ggplot(data=penguins) + 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#we can also add points to the plot for more details
ggplot(data=penguins) + 
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

#In the above plot, points overlap on each other, we can avoid this by sing jitter function
#Jitter function creates a scatter plot and adds a small amount of random noise to wach point in the plot
ggplot(data=penguins) + 
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))

#In ggplot package we can use different kind of visualization charts for each data
#Now we are going to use bar chart for Diamond data set, which gives the details about the cutting types of diamond
#It has five set of cutting types include: fair,good,very good,premium and ideal
#Let's plot a bar chart using geom_bar function
#Remember that we can use bar graph for single variable, in default it counts the values of x axis repeating and add it to the y-axis
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut))

#Likewise we can add color to our bars
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,color=cut))
#we can add different colors to our bars
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=cut))
#Instead of cut, we can use clarity to get more details
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity))

#Now we are going to run a code of facets
#Facets, let you display smaller groups, or subsets, of your data
#There are two types of functions used in facets: i.facet_wrap, ii.facet_grid
#i.facet_wrap can be use for single variable
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species)

#Facts of ~tidle: used to define the relationship between dependent variable and independent variable
#variables on the left-hand side of ~ are dependent variables
#variables on the right-hand side of ~ are independent variables

#ii.facet_grid is used for two variables
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

#Tip: If the text in x axis is overlapped we can rearrange the angle for more clarity
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=cut))+
  facet_wrap(~cut)+ theme(axis.text.x = element_text(angle=45))

#Finally adding label and annotation to our plot
#Annotate- add notes to a document or diagram to explain or comment upon it
#Adding label to our plot starts with labs() function
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins : Body Mass Vs Flipper Length",subtitle="Sample of three penguin species",caption = "Data Collected by Dr.Kristen Gorman")

#Let add commands using annotate() function
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins : Body Mass Vs Flipper Length",subtitle="Sample of three penguin species",caption = "Data Collected by Dr.Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="purple",fontface="bold",size=4.5,angle=25)



#Credits to Google Data Analysis course on coursera - Course7-Module4 for more reference