####### Twitter Data Collection ##################

require("twitteR")   
#Connect with Twitter API using below 
options(httr_oauth_cache=T)

consumer_key    = 'p80VwhTVt9UHJA9PpryoMt7MM'
consumer_secret = 'Wr1GLeo7vGHt8IDEhtY4uMYUEvqqpZT25dI6mRnJd2aNm0TfFL'
access_token    = '	2565284426-6ayc6lR1vr2AnEIoM4XzURqmZ4P8ZmEW96TjmGz'
access_secret   = 'ixmvC1iEcVKiDtaNTSszutyFRn8hyltKeBDivFcg6iiRb'
download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")
setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)

#Search Twitter with any string as 'search.string' 
search.string = "xxx"
data=searchTwitter(search.string,lang="en",resultType="recent",n=200)
data <- do.call("rbind", lapply(data, as.data.frame))

#################################################

#Fetch Wikipedia
library(devtools)
install_github("Ironholds/WikipediR")
library(WikipediR)
library(tm.plugin.webmining)
library(stringr)

#Get Wikipedia content
wp_content <- page_content("en","wikipedia",
                           page_name = "India_national_cricket_team")


html <- wp_content$parse$text

#Parse HTML
text=extractHTMLStrip(html)
text=str_replace_all(text,"\n", " ")
text=data.frame(text)