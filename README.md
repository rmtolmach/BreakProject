#Seattle on the Cheap

##Purpose
This app makes it easy for people to learn about affordable activities in Seattle.  
Users can filter activities by neighborhood, price range, timeframe, category, and subcategory.
Users can also create new activities and neighborhoods.  

##Structure
There are two models: Neighborhood and Activity.  All activities belong_to a neighborhood and each
neighborhood has_many activities.
