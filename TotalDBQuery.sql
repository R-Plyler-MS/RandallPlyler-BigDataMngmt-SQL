SELECT [tw_Location].[LocationID] AS [LocationID],
  [tw_Location].[Country] AS [Country],
  [tw_Location].[State] AS [State],
  [tw_Location].[StateCode] AS [StateCode],
  [tw_Location].[City] AS [City],
  [tw_Tweet].[TweetID] AS [TweetID],
  [tw_Tweet].[Weekday] AS [Weekday],
  [tw_Tweet].[Hour] AS [Hour],
  [tw_Tweet].[Day] AS [Day],
  [tw_Tweet].[Lang] AS [Lang],
  [tw_Tweet].[IsReshare] AS [IsReshare],
  [tw_Tweet].[Reach] AS [Reach],
  [tw_Tweet].[RetweetCount] AS [RetweetCount],
  [tw_Tweet].[Likes] AS [Likes],
  [tw_Tweet].[Klout] AS [Klout],
  [tw_Tweet].[Sentiment] AS [Sentiment],
  [tw_Tweet].[text] AS [text],
  [tw_Tweet].[LocationID] AS [LocationID (tw_Tweet)],
  [tw_Tweet].[UserID] AS [UserID],
  [tw_User].[UserID] AS [UserID (tw_User)],
  [tw_User].[Gender] AS [Gender]
FROM [dbo].[tw_Location] [tw_Location]
  Inner JOIN [dbo].[tw_Tweet] [tw_Tweet] ON ([tw_Location].[LocationID] = [tw_Tweet].[LocationID])
  Inner JOIN [dbo].[tw_User] [tw_User] ON ([tw_Tweet].[UserID] = [tw_User].[UserID])