USE [master]
GO
/****** Object:  Database [BTTL-3-BookManager]    Script Date: 10/09/2021 8:23:35 AM ******/
CREATE DATABASE [BTTL-3-BookManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTTL-3-BookManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BTTL-3-BookManager.mdf' , SIZE = 3392KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BTTL-3-BookManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BTTL-3-BookManager_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BTTL-3-BookManager] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTTL-3-BookManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BTTL-3-BookManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BTTL-3-BookManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BTTL-3-BookManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BTTL-3-BookManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BTTL-3-BookManager] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BTTL-3-BookManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BTTL-3-BookManager] SET  MULTI_USER 
GO
ALTER DATABASE [BTTL-3-BookManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BTTL-3-BookManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BTTL-3-BookManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BTTL-3-BookManager] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BTTL-3-BookManager] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BTTL-3-BookManager] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BTTL-3-BookManager', N'ON'
GO
ALTER DATABASE [BTTL-3-BookManager] SET QUERY_STORE = OFF
GO
USE [BTTL-3-BookManager]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/09/2021 8:23:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Author] [nvarchar](255) NOT NULL,
	[Images] [varchar](255) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202106290133196_InitialCreate', N'Book.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE3B612BE2F70DE41D0554F915AF9E92EF604F616A9939C1374F3837576D1BB052DD18EB012A54A5436C1419FEC5CF491FA0A672851B2C41F89B215DB29165858E4F09BE170480E87C3FCF5BF3FC73F3F8581F58893D48FC8C43E1A1DDA16266EE4F96439B133BAF8F19DFDF3FB7F7C37BEF0C227EB734977C2E8A0254927F603A5F1A9E3A4EE030E513A0A7D3789D26841476E143AC88B9CE3C3C37F3947470E06081BB02C6BFC3123D40F71FE019FD388B838A6190AAE230F07292F879A598E6ADDA010A73172F1C4FE258ABE8E0A32DB3A0B7C0422CC70B0B02D4448441105014F3FA5784693882C673114A0E0FE39C640B740418AB9E0A72B72D33E1C1EB33E38AB8625949BA5340A7B021E9D70A53862F3B5546B574A03B55D807AE933EB75AEBA897DE5E1BCE8631480024486A7D32061C413FBBA627196C637988ECA86A302F23201B86F51F27554473CB08CDB1D5446743C3A64FF0EAC6916D02CC11382339AA0E0C0BACBE681EFFE8A9FEFA3AF984C4E8EE68B93776FDE22EFE4ED4FF8E44DBDA7D057A06B1440D15D12C53801D9F0A2EABF6D39CD768ED8B06A566B5368056C09E6836D5DA3A70F982CE903CC94E377B675E93F61AF2CE1C6F589F8307DA0114D32F8BCC98200CD035CD53BAD3CD9FF2D5C8FDFBC1D84EB0D7AF497F9D00BFC61E22430AF3EE220AF4D1FFCB8985E8DF1FEC2C92E932864DF4DFB2A6ABFCCA22C715967222DC93D4A969836A51B3B2BE33532690635BC5997A8FB6FDA4C52D9BC95A4AC43EBCC8492C5B6674329EFCBF235B6B8B33886C1CB4D8B69A4CDE06ABBD448687660B1CA95B11C991A0B814EFC9DD7BE8B10F9C1008B9F01177038167E12E2AA9730240146A4B7CC77284D61EE7BFF41E9438BE8F07300D167D8CD1230C9194561FCE2DCEE1E22826FB270CE2C7D7BBC061B9AFB6FD1257269945C10D66A63BC0F91FB35CAE805F1CE11C59FA85B02B2CF7B3F340718449C33D7C5697A09C68CBD6904FE74097845E8C9716F38B632EDDAF99806C80FD5DE87B0867E2949571E889A42F24234642A4FA44DD40FD1D22766A296A47A510B8A4E5139595F51199899A49C522F684ED029674135986F978FD0F0CE5D0EBBFFDEDD669BB76E2DA8A971062B24FE3726388165CCBB4394E284AC46C064DDD885B3900F1F63FAE27B53CEE9330AB2A159AD351BF24560F8D990C3EEFF6CC8C584E247DF635E89C191A7240678237AF569AA7BCE09926D7B3A34BAB96DE6DB590374D3E52C4D23D7CF678122D8C543154DF9C187B3BAE316456FC4D807740C0CDD675B1E9440DF6CD1A86EC9390E30C5D6995B0403A728759127AB113AE4F510ACDC511582AD62204DE17E907882A5E3843542EC1094C24CF50995A7854F5C3F4641A7968496865B18EB7BC543AC39C731268C61A7264C98AB431E4C808A8F30285D1A1A3B358B6B37448DD7AA1BF32E177635EE5224622B36D9E13B6BEC92FB6F2F6298ED1ADB8271B6ABC444006DF86E1706CACF2AA606201E5CF6CD40851393C640B94BB515036D6A6C0706DA54C9AB33D0E2886A3AFEC27975DFCCB37950DEFEB6DEAAAE1DD866431F7B669A85EF096D28B4C0896C9EE77356899FA8E2700672F2F359CA5D5DD14418F80CD366C866E5EF2AFD50A71D4434A236C095A17580F28B3F09489A503D842B6379ADD2712FA2076C19776B85E56BBF005BB30119BB7E015A23D45F938AC66974FAA87A56598364E44687851A8EC220C4C5ABD97103A5E8E2B2B2624C7CE13EDE70AD637C305A14D4E1B96A94547666702D95A6D9AD259543D6C725DB484B82FBA4D152D999C1B5C46DB45B490AA7A0875BB0918A9A5BF84093AD8C7454BB4D5537768A84285E3076349953E36B14C73E59D632A97889352BD2A8A63FCEFAA719850586E3A68A6CA34ADA8A138D12B4C4422DB006492FFD24A5E788A23962719EA9174A64CABD55B3FC972CEBDBA73C88E53E5052B3DF458BFA757D639395BD10DEF812BA163257268F9F2B065EDDDC62296D28408922643F8D822C247ACF4ADFBAB8B8ABB72F4A6484B123C82F794E929A24FFB6A973A3119167C3A6A353792CEB8F901E42A7E7D2DFAC6B5AE783EA51CA90541D4517A6DAD988E95C17B35112DDC1FE83D489F0323389E7A0D40178514F8C5A1A830456AB33476D669AD4319B35E688423A491D52A8EA21653D69A42164BD622D3C8D46D514E61CE434913ABA5C6B8EAC4818A9432BAAD7C056C82CD699A32A724AEAC08A6A73EC558289B87AEEF15EA53DA4F4DFAC8A03EC66BB9506E36596C26136BBDA3D7D1DA856DC138BDFC44B60BC7C2FCD487B8AEB6F4645C0623333D260E8D79AC6D57673A969BD8FD76336EEAB1BCB79DB7DBD1EAF9FB1BEA84948A73791A4E25E9DE284D3DA989F9CBA1FC34847A982C4B64A35C256FE9C521C8E18C168F67B300D7CCC16EE92E01A117F81535AE468D8C78747C7C2B39AFD79E2E2A4A917284E9EBA772ECD31DB42BA15794489FB801239F9618367202B5029AE7C453CFC34B1FF9BB73ACD4314EC575E7C605DA59F88FF7B0615F74986AD3FE464CE61D2E20D1E625482FEF12A5E3898ABFCEAB72F45D303EB3681E9746A1D0A8A5E67F89BEF1E7A495334DD409AB55F43BCDED9D67878A0441566CBFAEF0CE63E1DE48D4129E5F7217AFA675FD194EF08364254BC15180A6F1015EADE02AC83A57D07E0C127CDDF01F4EBACFA5DC03AA269DF04F8A43F98F822C07C192A5BEE701F529C94B6B124E57AEECCA8DE28BD72D77B939478BDD1449793AB7BC00D9A40BD998BF2CA129307DB3A1579C78361EFD2EE5F3CD9785FF28B574EFB6ED38AB79949DC7277F4B74A20DE839437450ACFEED384B76D6BBAD0EF9EE75AF64B06DE3363E3DBFCEE537EB76D6CBA00F19E1B5BAFC4DE3DB3B55DED9F3BB634E32D74E769BA72C691E60A471545EE4AC32D42EE70FC9F476004854759BC9E54E77DB5E5AC76305C91E899EA13CE44C6D2C491F84A14ED6CFBF5956FF8AD9DE534ED6C35699A6DBCF9FADFCA9BD3B4F3D6243FEE228158997EA84AEAEE58C7DA32A55E53C270A3271DF9E95D3E6BEB7DFC6BCA0F1E44298DD9A3B95D7E3DE9C083A864C8A9D323FD57BE2886BDB3F6B71561FF4EFDE50A82FDA54582DDC6AE59D15C9145546EDE8244258910A1B9C61479B0A59E25D45F209742350B40E7CFBFF3A01EBB069963EF8ADC6634CE28741987F3A011F0624E401BFF3CC7B929F3F836665FE9105D00317D16B8BF25BF647EE055725F2A62421A08E65DF0702F1B4BCAC2BECBE70AE9262286405C7D9553748FC33800B0F496CCD0235E473630BF0F7889DCE755045007D23D104DB58FCF7DB44C5098728C557BF8041BF6C2A7F7FF07DE3EDDB162540000, N'6.2.0-61023')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3de0b373-2f7b-436e-b943-f3eb39a0a9c1', N'sangtruong2811@gmail.com', 0, N'AEhPrcsoP71SQuBJ+VBtsO3ea8GBQOMY1QNU/UFhfbaPRI6R5DPhEmwoYef3Yn0vYA==', N'b6d1d82e-f15d-4318-852c-02a78ce086e1', NULL, 0, 0, NULL, 1, 0, N'sangtruong2811@gmail.com')
GO
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (1, N'Lập trình web & Cơ sở dữ liệu', N'Lập trình web & Cơ sở dữ liệu', N'Author 1', N'LTW.jpg', 200000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (2, N'Mạng máy tính', N'Mạng máy tính', N'Author 2', N'MMT.jpg', 200000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (3, N'Quản lý dự án', N'Quản lý dự án', N'Author 3', N'QLDA.jpg', 200000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (4, N'Tài chính - Tiền tệ', N'Tài chính - Tiền tệ', N'Author 4', N'TCTT.jpg', 150000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (5, N'Tư duy chiến lược', N'Tư duy chiến lược', N'Author 5', N'TDCL.jpg', 150000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (6, N'Visual Basic', N'Visual Basic', N'Author 6', N'VSBASIC.jpg', 200000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (7, N'Hiem Hoa Hacker', N'abc', N'M.D', N'HiemHoa.jpg', 200000)
INSERT [dbo].[Book] ([ID], [Title], [Description], [Author], [Images], [Price]) VALUES (8, N'sss55', N'55555', N'tesst', N'HiemHoa.jpg', 500000)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/09/2021 8:23:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/09/2021 8:23:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/09/2021 8:23:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 10/09/2021 8:23:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 10/09/2021 8:23:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/09/2021 8:23:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [BTTL-3-BookManager] SET  READ_WRITE 
GO
