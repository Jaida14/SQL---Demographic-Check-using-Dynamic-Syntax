/***Title: Demographic Check by ID, AllData
Purpose: To look at what organizations are sending for demographic by ID, AllData
Author: Jaida Bolfrey
Date: Feb 2025**/



Declare @YEAR varchar(50) = '2025'
--@ORGID varchar(50) = '56I09'

SELECT DISTINCT
''[Demo_Check]
,[ID]
,[RefId]
,[ORG_Year] [year]
,[Code]
,[Case1]
,[Case2]
,[Case3]
,[Case4]
,[Case5]
,[Case6]



  FROM [server1].[dbo].[AllData] AD
  LEFT JOIN [server2].[dbo].[Person_Demographic] PD ON AD.[ID] = PD.[ID]

  WHERE [ORG_Year] = @YEAR
  AND [ORGId] LIKE '56I09%'
  --AND [case1] = 'No'
  AND [ID] = '123456'
  
  