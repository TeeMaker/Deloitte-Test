-- Made in Microsoft Server Managment Studio Local Db with default settings

CREATE TABLE User_A (
	Login [nvarchar](32) NOT NULL,
	Name [nvarchar](128) NOT NULL,
	Lastlogin [datetime2](7) NULL
)
GO
CREATE CLUSTERED INDEX IX_User_A_Login ON dbo.User_A (Login);
GO
CREATE TABLE User_B(
	Login_ID [nvarchar](64) NOT NULL,
	Full_name [nvarchar](96) NOT NULL,
	LoginDate [datetime] NULL

)
GO
CREATE CLUSTERED INDEX IX_User_B_Login_ID ON dbo.User_B (Login_ID);
GO

--mintaadatok

INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('AA123', 'Minta Imre', '2002-07-14 14:35:00')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('MI123', 'Minta Imre', '2002-07-14 14:35:00')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('BB123', 'Bakos Beáta', '2022-12-25 16:45:13')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('SA123', 'Szabó András', '2023-01-19 16:27:17')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('MI123', 'Minta Imre', '2012-07-14 14:36:00')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('DD123', 'Dobó Dániel', '2020-11-23 11:05:58')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('DE124', 'Deák Endre', '2021-03-10 12:00:00')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('ZZ123', 'Zs Zsolt', '1999-01-01 00:05:58')
INSERT [User_A] ([Login], [Name], [LastLogin]) VALUES ('ZZ124', 'Zs Zsolt', '1999-01-01 00:05:58')

INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('BB123', 'Bakos Beáta', '2022-12-25 16:41:13')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('SA123', 'Szabó András', '2023-01-19 16:27:17')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('DD123', 'Dobó Dániel', '2022-11-23 11:05:58')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('DE124', 'Deák Endre', '2018-03-10 12:00:00')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('SM124', 'Székely Mátyás', '2017-01-23 12:00:00')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('SM124', 'Székely Mátyás', '2016-01-23 12:00:00')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('SM124', 'Székely Mátyás', '2018-01-23 12:00:00')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('ZZ123', 'Zs Zsolt', '2000-01-01 00:05:58')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('ZZ123', 'Zs Zsolt', '2000-01-01 00:05:58')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('ZZ123', 'Zs Zsolt', '2000-01-01 00:05:58')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('ZZ123', 'Zs Zsolt', '2000-01-01 00:05:58')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('ZZ123', 'Zs Zsolt', '2000-01-01 00:05:58')
INSERT [User_B] ([Login_ID], [Full_name], [LoginDate]) VALUES ('ZZ123', 'Zs Zsolt', '2000-01-01 00:05:58')