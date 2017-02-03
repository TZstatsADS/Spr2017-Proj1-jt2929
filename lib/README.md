# Project: 
### Code lib Folder

The lib directory contains various files with function definitions (but only function definitions - no code that actually runs).

There are three functions used throughout this project:
1. plot.yearterm : this takes this a vector of words and plots the % frequency of each word appearing in inaugural speeches for each President over time
2. dfsfunc: takes in a vector "cat" that contains the names of the individual categories we are interested in, and returns individual dataframe for each category containing all the relevant words from the GI database
3. catfunc: takes in a vector "cat" that contains the names of the individual categories we are interested in, and generates ggplots of % sum frequency of words under the category in inaugural address against index of Presidents
