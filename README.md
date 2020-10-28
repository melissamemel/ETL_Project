# ETL_Project
Team A Members: David Ruppel, Melissa Memel, David Stagner

Project Summary 
    Our team decided to begin with a World Happiness dataset as the starting point for our project. The "country" would be the primary key for this and the remainder of the data we would extract. We then discussed another dataset that would provide opportunity for interesting analytics. We chose a dataset on world alcohol consumption per population from 2010. We shared our project proposal with our class instrutor and TA. They gave us tentative approval for our idea but told us we would need to find a third dataset that provided more complexity for the "Transformation" phase of our project. We found a third dataset for FIFA World Cup results with multiple years of data which included 2010. We shared and discussed this third dataset with our substitute instructor and TA. They agreed the third dataset provided the complexity we needed for our project and approved it.

Project Work

    Extraction Process
        We downloaded the 3 csv files from Kaggle. Each team member took responsibility for creating a pandas file for each dataset and performing the cleaning process for each with the goal of creating three separate pandas DataFrames that we could load into a SQL database for future analysis. We worked collaboratively as each of us encountered difficulties with the entire ETL process by multiple remote meetings via meet.google.com.

    Transformation Process
        * world-happiness-report-2005-2018.csv
            This dataset had a total of 26 columns and multiple years of data. The data was filtered to only include 2010. The column names had to be renamed to eliminate capital letters. We then decided that we only wanted to keep 9 of the 26 columns so a DataFrame was created for only those columns and the country was made the index for the DataFrame. This file was then exported to a new csv file "clean_happiness.csv". We then realized that we could not set country as the index because that effectively drops this data from the DataFrame that would be loaded into SQL.
        * drinks.csv
            This dataset was relatively simple with a total of 5 columns which included our primary key, country. After inspecting the dataset, the team decided to keep only the country and the total litres of pure alcohol. The original data took the information on servings of beer, spirits, and wine to provide a cumulative total servings of pure alcohol per population in litres. This required that we use the df.loc function to keep only the country and total litres of pure alcohol information in our final DataFrame that was then exported to a new csv file "clean_drinks.csv". 
        * WorldCupMatches.csv
            This dataset required a lot of work and was quite complex from the team's perspective. The original dataset included 20 columns and 4,572 rows. Our first step was to filter the data to include only Year, Home Team Name, Away Team Name, Home Team Goals, and Away Team Goals columns and only the year 2010. In the process we had to convert the year to an integer. Now to the complexity of this dataset. This is a dataset of matches or games during the 2010 Soccer World Cup. Each row included both team's country name and goals scored. We had to find a way to calculate which country had won, lost or tied in each match and create a new DataFrame with the total results for each country. This was done by looping over the Home Team Name column first, then doing the same over the Away Team Name column. We then put the results of these loops together using df.append function. Finally, we used df.groupby and .sum to get the total results for each country in a DataFrame and exported this to a new csv file "clean_worldcup.csv".

    Loading Process
        * We encountered the following problems as we attempted to load our clean data into SQL:
            - Creating an engine from the sqlalchemy library in pandas to load our data into SQL. 
            - As noted above, we had to undo the work we had done to set the country as the index in our DataFrames
            - Null values were dealt with by changing our SQL columns to accept them.
            - 

