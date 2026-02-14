# Vinyl Profitability Calculator

## Executive Summary

> Record stores all around the world use discogs as common ground for pricing and product evaluation. Its easy to look up a records price, but its very difficult to make an evaluation relative to demand. Record store owners may ask "how popular is a record compared to others in the same price range." Or "How much should we offer for a used record given marketplace demand". **The tool built in this project will create a value matrix, where record sellers can evaluate Discogs data and interpret a live visual metric of demand.** Discogs is the worlds largest online database for physical music purchases. The R shiny app, and its contents, are comprised of full length LP data scraped from discogs. The desirability index will be calculated as want count divided by have count plus want count. This will serve as a community popularity score for each record. The assumption is that records with a higher proportion of want count and high ratings indicate profitability. The goal of this project is to configure an application capable of dictating vinyl profitability.

---

## Motivation

> Record store owners and hobbyist alike collect records intuitively. They may purchase in bulk and price records individually given their experience selling. This approach has its advantages; personal experience is an asset, but it is not concise. I'd like to provide a more consistent method, a tool that enables exact marketplace value in terms of demand. This tool will optimize the record store buying process and net more profit than estimating popularity.

---

## Data Questions

>* Which records are popular but low in cost?
>* Do records with a higher want count also have a higher price point?
>* What are the most popular records in a specific price range?
>* How much should businesses offer based on marketplace price?

---

## Minimum Viable Product (MVP)

> The web app created In this project will have a ranking system based on rating and popularity. It will have multiple filter features to sort records by price range, minimum rating, want count and have count. There will be a scatter plot visualization of each record based on popularity and price. This tool will enable a user to view which records are high in demand but low in cost. This app is intended to help vinyl collectors, independent record stores and music lovers with an application to find valuable, low priced records.

---

## Schedule

| Step | Task | Date |
|------|------|------|
| 1 | Get the data | 2/3 |
| 2 | Clean and explore the data | 2/7 |
| 3 | Create presentation and Shiny App | 2/14 |
| 4 | Internal Demos | 2/17 |
| 5 | Midcourse Project Presentations | 2/21 |

---

## Data Source

> The data In this project is scraped from [Discogs](https://www.discogs.com). The data and web-scrape is conducted in Jupyter notebook. The python markdown file and URL is available in the repository. The data was sourced January 11, 2026 at 8:11pm CST. 

---

## Issues and Challenges

> The data collected in this project does not include sale windows. Real record store inventory and sales history would make this tool much more powerful. For proof of concept and to initiate this process a ranking system will need to be created. The tier system will incorporate rating and want count.



