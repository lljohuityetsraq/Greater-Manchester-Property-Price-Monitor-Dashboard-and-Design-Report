USE [GreaterManchesterPricePaid]
GO

/****** Object:  View [dbo].[UK_PROPERTY_MANCHESTER1]    Script Date: 11/30/2023 1:52:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UK_PROPERTY_MANCHESTER1]
AS
SELECT [Transaction ID],
CAST([Sales Price] AS money) AS Sales_Price,
CONVERT(nvarchar(50),[Date of Transfer ] ,101) AS Date_of_Transfer,
[Postcode],
[Property Type],
[Old New],
[Duration ],
[Town City],
[District],
[Country],
[Type of Price Paid],
[Record Status ]
FROM [dbo].[Price Paid2019]
WHERE [Country]= 'Greater Manchester'
UNION ALL

SELECT [Transaction ID],
CAST([Sales Price] AS money) AS Sales_Price,
CONVERT(nvarchar(50),[Date of Transfer ] ,101) AS Date_of_Transfer,
[Postcode],
[Property Type],
[Old New],
[Duration ],
[Town City],
[District],
[Country],
[Type of Price Paid],
[Record Status ]
FROM [dbo].[Price Paid2020]
WHERE [Country]= 'Greater Manchester'
UNION ALL

SELECT[Transaction ID],
CAST([Sales Price] AS money) AS Sales_Price,
CONVERT(nvarchar(50),[Date of Transfer ] ,101) AS Date_of_Transfer,
[Postcode],
[Property Type],
[Old New],
[Duration ],
[Town City],
[District],
[Country],
[Type of Price Paid],
[Record Status ]
FROM [dbo].[Price Paid2021]
WHERE [Country]= 'Greater Manchester'

UNION ALL

SELECT [Transaction ID],
CAST([Sales Price] AS money) AS Sales_Price,
CONVERT(nvarchar(50),[Date of Transfer ],101) AS Date_of_Transfer,
[Postcode],
[Property Type],
[Old New],
[Duration ],
[Town City],
[District],
[Country],
[Type of Price Paid],
[Record Status ]
FROM [dbo].[Price Paid2022]
WHERE [Country]= 'Greater Manchester'

GO


