> ## Vinyl Profitability Calculator
>
> ### Executive Summary
> This project will create a tool to see which records on Discogs are most profitable. Discogs is the worlds largest online database for physical music purchases. The data I have collected contains, vinyl records, ratings, price, want count and have count. The goal of this project is to figure out which records are most popular and least expensive with an R Shinny App. A desirability index will be calculated by want and have votes on Discogs. The assumption is that records with a lower proportion of haves to wants will indicate profitability. The biggest challenge of this project is mapping data to the Discogs data to create other interactive features like genre, release year and sales windows.
>
> ### Motivation
> Many record stores collect, sell and price records based on personal experience. I’ve spoken with record store owners and enthusiasts about which records they seek. While, pricing is often denoted with Discogs, desirability is often intuitive. Record stores often buy in bulk and hope to get valuable records in these large shipments. I’d like to create a more exacting tool to optimize a record stores buying process.
>
>
> ### Data Questions
> We have the price and an index of how many people want these records. The first question I’d like to answer is, do records that have a higher want count have a higher price point? Which variables in our dataset are the biggest drivers of price? In an effort to streamline the process of finding the fastest selling records. I’d like to answer, Which records are most desired but lowest in cost compared to a desirability score? Which records have high demand but low prices? Because of the limited data we have we will assume that the desirability index we create is indicative of record store shelf life. Do community ratings predict market value. Can we create a undervalued record score based on rating, want, have and price?
>
> Minimum Viable Product (MVP)
> The web app that I create will have a ranking table containing records with a undervalued record score. It will have a filter feature to sort by price range, minimum rating, want count and have count. There will be a Scatter plot visualization of desirability proportion vs. price.  This tool will enable a user to view which records are high in demand but low in cost. This app is intended to help vinyl collectors, independent record stores and music lovers with an application to find valuable, low priced records.
>
>
> ### Data Source
> The data In this project is scraped from discogs.com. The data and webscrape is conducted in Jupyter notebook. The python markdown file and URL will be available in the repository.
>
> ### Issues and Challenges
> This data does not have real world sale windows. Real data on sale price windows may not be readily available to map with this dataset. We need to quantify record value and predicted sale windows. The biggest challenge will be evaluating which records are most likely to sell quick based on rating, price, want count and have count. 
