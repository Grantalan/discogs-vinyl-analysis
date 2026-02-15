# Vinyl Profitability Calculator

---

## Executive Summary

> The tool built in this project will create a value matrix, where record sellers can evaluate Discogs data and interpret a live visual metric of demand. Discogs is the world's largest online database for physical music purchases. Record stores all around the world use Discogs as common ground for pricing and product evaluation. It's easy to look up a record's price, but it is very difficult to make an evaluation **relative to demand.** The web application built in this project is comprised of full-length LP data scraped from Discogs. A popularity score will be assigned to each record based on want and have count variables. Records with a higher proportion of want count and high ratings are more desirable and may increase sale velocity. The goal of this project is to configure an application capable of dictating vinyl profitability.

---

## Motivation

> Record store owners and hobbyists alike collect records intuitively. They may purchase in bulk and price records individually given their experience selling. This approach has its advantages; personal experience is an asset, but it is not concise. This application will provide a more consistent method, a tool that enables exact marketplace value in terms of demand. This tool will optimize the record store buying process and net more profit than estimating popularity.

---

## Data Questions

>* Which records are high in demand but low in cost?
>* Do records with a higher want count also have a higher price point?
>* What are the most popular records in a specific price range?
>* How much should businesses offer based on marketplace price?

---

## Minimum Viable Product (MVP)

> The web app created in this project will have a ranking system based on rating and popularity. It will have multiple filter features to sort records by price range, minimum rating, want count, and have count. There will be a scatter plot visualization of each record based on popularity and price. This tool will enable a user to view which records are high in demand but low in cost. This app is intended to help vinyl collectors, independent record stores, and music lovers with an application to find valuable, low-priced records.

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

> The data in this project is scraped from [Discogs](https://www.discogs.com). The data and web scrape is conducted in Jupyter Notebook. The Python markdown file and URL are available in the repository. The data was sourced on January 11, 2026, at 8:11 PM CST.

---
## Issues and Challenges

> The data collected in this project does not include sale windows. Real record store inventory and sales history will make this tool much more powerful. For proof of concept and to initiate this process, a ranking system will need to be created. The tier system will incorporate rating and want count.


