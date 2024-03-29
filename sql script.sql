USE [REGISMVC]
GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 08-Jun-19 4:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartment](
	[DeptID] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblDepartment] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserReg]    Script Date: 08-Jun-19 4:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUserReg](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[bday] [datetime] NOT NULL,
	[DeptID] [varchar](30) NOT NULL,
	[EmpAddress] [varchar](30) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[EmpMob] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblUserReg] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblDepartment] ON 

INSERT [dbo].[tblDepartment] ([DeptID], [DeptName]) VALUES (1, N'IT')
INSERT [dbo].[tblDepartment] ([DeptID], [DeptName]) VALUES (2, N'Sales')
INSERT [dbo].[tblDepartment] ([DeptID], [DeptName]) VALUES (3, N'Finance')
INSERT [dbo].[tblDepartment] ([DeptID], [DeptName]) VALUES (4, N'Marketing')
SET IDENTITY_INSERT [dbo].[tblDepartment] OFF
SET IDENTITY_INSERT [dbo].[tblUserReg] ON 

INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (1, N'Amardeep', CAST(N'2019-06-07 05:18:33.227' AS DateTime), N'1', N'22 SUr', N'Surat', N'9831104616')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (2, N'Amardeep', CAST(N'2019-06-11 00:00:00.000' AS DateTime), N'4', N'Surat', N'Vapi', N'9.97422e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (3, N'Amardeep', CAST(N'2019-06-07 00:00:00.000' AS DateTime), N'2', N'fdsfsd', N'sfsdfsdf', N'9.8311e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (4, N'Amardeep', CAST(N'2019-06-13 00:00:00.000' AS DateTime), N'1', N'Surat', N'Vapi', N'1.23457e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (5, N'Amardeep', CAST(N'2019-06-11 00:00:00.000' AS DateTime), N'1', N'Surat', N'Vapi', N'9.97422e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (6, N'Amardeep', CAST(N'2019-06-04 00:00:00.000' AS DateTime), N'2', N'Surat', N'Vapi', N'9.97422e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (7, N'Amardeep', CAST(N'2019-06-04 00:00:00.000' AS DateTime), N'2', N'Surat', N'jddkk', N'456789')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (8, N'Amardeep', CAST(N'2019-06-04 00:00:00.000' AS DateTime), N'2', N'Surat', N'jddkk', N'456789')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (9, N'Amardeep', CAST(N'2019-06-11 00:00:00.000' AS DateTime), N'2', N'Surat', N'Vapi', N'9.98765e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (10, N'Amardeep', CAST(N'2019-06-04 00:00:00.000' AS DateTime), N'2', N'Surat', N'Vapi', N'7.76534e+007')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (11, N'Bhupendra', CAST(N'2019-06-11 00:00:00.000' AS DateTime), N'3', N'Surat', N'Vapi', N'9.87643e+009')
INSERT [dbo].[tblUserReg] ([EmpID], [EmpName], [bday], [DeptID], [EmpAddress], [City], [EmpMob]) VALUES (12, N'Amardeep', CAST(N'2019-06-04 00:00:00.000' AS DateTime), N'1', N'Surat', N'Vapi', N'345678')
SET IDENTITY_INSERT [dbo].[tblUserReg] OFF
/****** Object:  StoredProcedure [dbo].[sp_GetDept]    Script Date: 08-Jun-19 4:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_GetDept] 
	
AS
BEGIN

Select * from tblDepartment
END


GO
/****** Object:  StoredProcedure [dbo].[spAddUser]    Script Date: 08-Jun-19 4:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAddUser]     
(    
    @EmpName VARCHAR(20),     
    @bday datetime,    
    @DeptID VARCHAR(20),    
    @EmpAdress VARCHAR(6),
	@City VARCHAR(20),
	@EmpMob VARCHAR(20)  

)    
as     
Begin     
    Insert into tblUserReg (EmpName,bday,DeptID , EmpAddress,City, EmpMob )     
    Values (@EmpName,@bday,@DeptID, @EmpAdress,@City, @EmpMob)     
End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteUser]    Script Date: 08-Jun-19 4:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spDeleteUser]     
(      
   @EmpID int      
)      
as       
begin      
   Delete from tblUserReg where EmpID=@EmpID      
End
GO
/****** Object:  StoredProcedure [dbo].[spGetAllUsers]    Script Date: 08-Jun-19 4:57:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetAllUsers]    
as    
Begin    
    select 
		[EmpID]
      ,[EmpName]
      ,[bday]
      ,u.[DeptID]
      ,[EmpAddress]
      ,[City]
      ,[EmpMob]
	     , t.DeptName
    from tblUserReg u
	join tblDepartment t on t.DeptID= u.DeptID
    order by EmpID    

	--DeptName
End
GO
