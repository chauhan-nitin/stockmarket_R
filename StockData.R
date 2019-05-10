# install.packages("quantmod")
library(quantmod)
# Quantitative Financial Modelling and Trading Framework for R
?quantmod
# Load and Manage Data from Multiple Sources
?getSymbols
getSymbols('^GSPC', src='yahoo')
# Data object saved
dim(GSPC) # 3106 x 6
head(GSPC)
tail(GSPC)
class(GSPC) # time-series wrapper
plot(GSPC$GSPC.Open)
lineChart(GSPC, line.type='h', theme='white')
barChart(GSPC,bar.type='hlc',TA=NULL)
candleChart(GSPC, TA=NULL, subset='2015')
candleChart(GSPC, multi.col=TRUE, subset='2015-01::2015-03')

chartSeries(GSPC, type="matchsticks", TA=NULL, subset='2015-01::2015-03')
chartSeries(GSPC, theme= 'white', TA="addVo();addBBands();addCCI()", subset='2015')
chartSeries(GSPC, theme= 'white', TA="addVo();addBBands();addCCI()", subset='2009::2011')
 # Convert the time-series object to dataframe
GSPC <- data.frame(GSPC)
summary(GSPC)
# Getting multiple stock data
basket_symbols <- c('YELP', 'AMZN', 'AAPL')
getSymbols(basket_symbols, src='yahoo')
# Create a combined stock dataframe using as.xts function
basket <- data.frame(as.xts(merge(YELP,AMZN,AAPL)))
head(basket)


library(TTR)
# his package contains many of the most popular technical analysis functions, as well as functions to retrieve U.S. stock symbols, and data from Yahoo Finance.
?TTR
chartSeries(GSPC, theme='white')
addSMA(n=200)
addROC(n=200)
