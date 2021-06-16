# PatronSample-GiftBasket
This introductory Microsoft Dynamics 365 Business Central extension is a small sample of many techniques needed for a first AL extension.  It also features a guided CodeTour with the CodeTour Visual Studio Code Extension.

When you clone this repo and open it in Visual Studio Code, it'll pop up an indicator about *Recommended Extensions* if you don't already have CodeTour installed.

![Recommended Extension Pop-up](https://raw.githubusercontent.com/SpareBrainedIdeas/PatronSample-GiftBasket/main/images/RecommendedExtensions.png)

This extension is highly recommended for this repo.

With it installed, you'll then get an offer to start the Tour:

![CodeTour Extension Start Pop-up](https://raw.githubusercontent.com/SpareBrainedIdeas/PatronSample-GiftBasket/main/images/GuidedTourOffer.png)

Click `Start CodeTour` and you'll be guided through the content, including our whole user story:

![CodeTour Extension Story](https://raw.githubusercontent.com/SpareBrainedIdeas/PatronSample-GiftBasket/main/images/GuidedTourStart.png)

## Extension Goals

In this tour, we are creating a lightweight extension.  This walkthrough will demonstrate some basic goals such as:

- Creating a main Setup table for a new functionality, including a Page with Actions
- Creating a new table for storing a new type of information, along with a list and card to match
- How to add fields via tableextension and pageextension objects
- Using a Codeunit to watch for new records and add data using Events
- Using a Codeunit to update existing records

## Background / Story

Our User Story is that the company sends Gift Baskets to each Customer around the holiday season.  They want to keep track of which Gift Baskets to send to which Customer.  This should default for all new Customers.  However, since each Salesperson makes their own Customers, they may want to set their Customers to receive a different Gift Basket as their personal alternate-default.

Because there are many Customers already present in the system, they also need a way to update all the old records to the new Default Gift Basket.

Lastly, they have another company in the system, a child company, that does not need the "default" functionality.  While they don't mind the fields being present, they do not want any defaults to populate.

## Enjoy What We're Making?

Come sign up at [Patron](https://www.patreon.com/sparebrained) to get full access to many tools and more samples, along with other great benefits.
