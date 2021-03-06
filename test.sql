USE [TEST]
GO
/****** Object:  User [admin]    Script Date: 10.03.2022 19:48:56 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AuditDataItemPersistent]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditDataItemPersistent](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[OperationType] [nvarchar](100) NULL,
	[Description] [nvarchar](2048) NULL,
	[AuditedObject] [uniqueidentifier] NULL,
	[OldObject] [uniqueidentifier] NULL,
	[NewObject] [uniqueidentifier] NULL,
	[OldValue] [nvarchar](1024) NULL,
	[NewValue] [nvarchar](1024) NULL,
	[PropertyName] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_AuditDataItemPersistent] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditedObjectWeakReference]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditedObjectWeakReference](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[GuidId] [uniqueidentifier] NULL,
	[IntId] [int] NULL,
	[DisplayName] [nvarchar](250) NULL,
 CONSTRAINT [PK_AuditedObjectWeakReference] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelDifference]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelDifference](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserId] [nvarchar](100) NULL,
	[ContextId] [nvarchar](100) NULL,
	[Version] [int] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_ModelDifference] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelDifferenceAspect]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelDifferenceAspect](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Xml] [nvarchar](max) NULL,
	[Owner] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_ModelDifferenceAspect] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyActionPermissionObject]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyActionPermissionObject](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ActionId] [nvarchar](100) NULL,
	[Role] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyActionPermissionObject] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyMemberPermissionsObject]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyMemberPermissionsObject](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Members] [nvarchar](max) NULL,
	[ReadState] [int] NULL,
	[WriteState] [int] NULL,
	[Criteria] [nvarchar](max) NULL,
	[TypePermissionObject] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyMemberPermissionsObject] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyNavigationPermissionsObject]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyNavigationPermissionsObject](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ItemPath] [nvarchar](max) NULL,
	[NavigateState] [int] NULL,
	[Role] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyNavigationPermissionsObject] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyObjectPermissionsObject]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyObjectPermissionsObject](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Criteria] [nvarchar](max) NULL,
	[ReadState] [int] NULL,
	[WriteState] [int] NULL,
	[DeleteState] [int] NULL,
	[NavigateState] [int] NULL,
	[TypePermissionObject] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyObjectPermissionsObject] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyRole]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyRole](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsAdministrative] [bit] NULL,
	[CanEditModel] [bit] NULL,
	[PermissionPolicy] [int] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
	[ObjectType] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyRole] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyTypePermissionsObject]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyTypePermissionsObject](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Role] [uniqueidentifier] NULL,
	[TargetType] [nvarchar](max) NULL,
	[ReadState] [int] NULL,
	[WriteState] [int] NULL,
	[CreateState] [int] NULL,
	[DeleteState] [int] NULL,
	[NavigateState] [int] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyTypePermissionsObject] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyUser]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyUser](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[StoredPassword] [nvarchar](max) NULL,
	[ChangePasswordOnFirstLogon] [bit] NULL,
	[UserName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
	[ObjectType] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyUser] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyUserLoginInfo]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyUserLoginInfo](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[LoginProviderName] [nvarchar](100) NULL,
	[ProviderUserKey] [nvarchar](100) NULL,
	[User] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyUserLoginInfo] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles](
	[Roles] [uniqueidentifier] NULL,
	[Users] [uniqueidentifier] NULL,
	[OID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[OptimisticLockField] [int] NULL,
 CONSTRAINT [PK_PermissionPolicyUserUsers_PermissionPolicyRoleRoles] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picket]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picket](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Number] [numeric](10, 0) NULL,
	[IDplatform] [uniqueidentifier] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Picket] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platform](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CargoWeight] [float] NULL,
	[IDCargo] [uniqueidentifier] NULL,
	[IDWarehouse] [uniqueidentifier] NULL,
	[IsFormed] [bit] NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Name] [nvarchar](50) NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XPObjectType]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XPObjectType](
	[OID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TypeName] [nvarchar](254) NULL,
	[AssemblyName] [nvarchar](254) NULL,
 CONSTRAINT [PK_XPObjectType] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XPWeakReference]    Script Date: 10.03.2022 19:48:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XPWeakReference](
	[Oid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[TargetType] [int] NULL,
	[TargetKey] [nvarchar](100) NULL,
	[OptimisticLockField] [int] NULL,
	[GCRecord] [int] NULL,
	[ObjectType] [int] NULL,
 CONSTRAINT [PK_XPWeakReference] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'406bbb5a-5206-4186-9caa-01574057324a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:43.740' AS DateTime), N'ObjectCreated', N'ObjectCreated; 09133160-54a2-4ade-94aa-9e25bf6c3c13; N/A; N/A; N/A', N'32457681-b18a-4502-9cef-6153fee92578', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'27c43465-6be4-43b5-bec7-036f8a1c9194', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:43.900' AS DateTime), N'ObjectChanged', N'ObjectChanged; Платформа 1; CargoWeight; 0; 8000', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'0', N'8000', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'4d79bfc1-9cec-414f-9b8b-056a7ee90794', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:21.810' AS DateTime), N'ObjectChanged', N'ObjectChanged; 8263a12e-005e-4007-8363-a600e2b9ce9b; IDplatform; N/A; Площадка 2', N'ab2bd656-de70-48ae-87e4-8a44dd8e3d76', NULL, N'd6e23777-4894-4184-a8b7-ff5b0829c2ef', N'N/A', N'Площадка 2', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3b1711cd-edce-400c-857e-06a0c209c45b', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.250' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 1; Pickets; 2d999fbf-7891-48cd-af9f-3ac6c9a486b3; N/A', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', N'1ea15db3-3698-4b15-ab15-7677884becaf', NULL, N'2d999fbf-7891-48cd-af9f-3ac6c9a486b3', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3112cdd3-bfbe-4551-b021-06c207a82366', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.647' AS DateTime), N'CollectionObjectChanged', N'CollectionObjectChanged; DESKTOP-GI23UKH\Александр; Aspects; (Default language); N/A', N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', N'dd64bdf7-595f-4065-a8f6-38e38fcb23ce', NULL, N'(Default language)', N'N/A', N'Aspects', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3ba10bc0-1a08-4fb2-97f2-070feb67b194', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.820' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 1; IsFormed; N/A; False', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, NULL, N'N/A', N'False', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'fa5113ba-f52a-45fc-abd8-153b2ce72dc1', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:35.520' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 69d98d47-59d2-4798-945e-6eee50b1771c; Number; N/A; 201', N'cf2ddef4-c5b2-4ad8-88af-d77927d3a232', NULL, NULL, N'N/A', N'201', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'a27f9058-e5f0-4903-a9dc-195944b06cf5', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; IsFormed; N/A; False', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, NULL, N'N/A', N'False', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'04e980ba-66ec-4298-8b86-1c5e01b5f235', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.253' AS DateTime), N'ObjectChanged', N'ObjectChanged; e9ae0897-4439-4082-8dee-56e1b5d4d066; IDplatform; N/A; Площадка 1', N'71a35318-5aed-4e5a-949a-dd2971e9ccf7', NULL, N'5df63d4e-0250-445c-ae06-1dd33492490c', N'N/A', N'Площадка 1', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'9d1de5bc-cbd9-4020-b32f-1f8dc95d17dd', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:38.723' AS DateTime), N'ObjectCreated', N'ObjectCreated; Гравий; N/A; N/A; N/A', N'd2a4519d-a5e8-474d-be49-ed550401d53e', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'74bc3aa7-5f94-4f93-9adf-2129822ac3fc', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:19.467' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; d0a509c6-0067-41fb-9258-2c70955b7af7; Number; N/A; 102', N'2e846028-cfff-49f5-9550-6d86c3b8ca5a', NULL, NULL, N'N/A', N'102', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'68f0b929-efeb-439a-92ff-24569c8fab3c', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Платформа 1; IsFormed; N/A; False', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'N/A', N'False', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'9b8efba9-739a-4bd2-9680-288acff4a67f', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.643' AS DateTime), N'ObjectCreated', N'ObjectCreated; (Default language); N/A; N/A; N/A', N'4a90f6fb-d53d-46c4-bb0e-8dc849cf15fa', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'756ae2d3-648b-4e7d-8e50-2a7ce2cb82e1', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.257' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 1; Pickets; 6369dd05-7d9b-4fa9-bcc7-8d0759c6427f; N/A', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', N'cbf8b30f-400c-47c6-a0f4-c061be6aaebd', NULL, N'6369dd05-7d9b-4fa9-bcc7-8d0759c6427f', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'a9388797-48fb-438d-a54f-2b913e28e58c', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.033' AS DateTime), N'AddedToCollection', N'AddedToCollection; Щебень; Platforms; Площадка 2; N/A', N'e248a618-9f26-4f22-8276-56f34ab2ecd1', N'ae338c16-fa5e-4c4d-8cfb-cc3daa02f903', NULL, N'Площадка 2', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'eef826b4-8810-4b3e-8eff-3718d6ae2b89', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:38.733' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 1; CargoWeight; 0; 53000', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, NULL, N'0', N'53000', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'90e912a5-22df-4519-b678-3a2bff06e069', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'AddedToCollection', N'AddedToCollection; Гравий; Platforms; Площадка 2; N/A', N'd2a4519d-a5e8-474d-be49-ed550401d53e', N'405d633c-cd89-4051-a195-ca5cbed034c3', NULL, N'Площадка 2', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'9c5010b1-4c07-4288-904e-3cfb1fea91a8', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:33.443' AS DateTime), N'ObjectCreated', N'ObjectCreated; Щебень; N/A; N/A; N/A', N'e248a618-9f26-4f22-8276-56f34ab2ecd1', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'fa748c74-0860-4c33-a8d1-3eb0650a097e', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.033' AS DateTime), N'ObjectCreated', N'ObjectCreated; Площадка 2; N/A; N/A; N/A', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'1aecd00f-4d8b-4ee9-bd04-4310818a7508', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:16.447' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 2d999fbf-7891-48cd-af9f-3ac6c9a486b3; Number; N/A; 101', N'c3436a33-7ef1-47f4-b867-426ed1e323d4', NULL, NULL, N'N/A', N'101', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'da6a5cfb-d451-4f4a-a173-4335a68148dc', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:28.193' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 2; IsFormed; False; True', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, NULL, N'False', N'True', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'ef1a734a-9a11-4d86-835e-477f7fbbc8c4', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; IDCargo; N/A; Гравий', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, N'448d6e74-a9bd-4a3b-90c9-8d603add9385', N'N/A', N'Гравий', N'IDCargo', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2ff162f4-37ec-4a82-9c42-4b0688bb0ebb', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:28.033' AS DateTime), N'ObjectCreated', N'ObjectCreated; 6369dd05-7d9b-4fa9-bcc7-8d0759c6427f; N/A; N/A; N/A', N'bf7456a9-f884-4690-b00d-ecc478048398', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'b936e16b-7ced-4a77-983c-4f65b459ce3e', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.250' AS DateTime), N'ObjectChanged', N'ObjectChanged; 2d999fbf-7891-48cd-af9f-3ac6c9a486b3; IDplatform; N/A; Площадка 1', N'c3436a33-7ef1-47f4-b867-426ed1e323d4', NULL, N'289e77d9-4806-42bd-b913-7ce6c3ee1e38', N'N/A', N'Площадка 1', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'b8801e83-fb25-497b-9bd8-4f8b3e5ef687', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Платформа 1; IDWarehouse; N/A; Склад 2', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, N'ec284267-0f6d-4bce-97ac-141ca302c999', N'N/A', N'Склад 2', N'IDWarehouse', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'30fa6d0d-18d8-4704-8ca4-526e0847912b', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:38:31.477' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Склад 1; Name; N/A; Склад 1', N'7dbbdbf7-a799-4ee6-a096-4379db718da4', NULL, NULL, N'N/A', N'Склад 1', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3d5a000a-1f14-4848-b723-5429f6545c47', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.823' AS DateTime), N'ObjectChanged', N'ObjectChanged; 9eafbc35-8b6d-41eb-aa2c-3c484376e001; IDplatform; N/A; Площадка 2', N'2abd5b3d-41fb-48c8-a861-9425f9033e9d', NULL, N'373ac872-99d8-4073-b7fd-934beade86e4', N'N/A', N'Площадка 2', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'0f2e7fd5-b6b2-4045-87f5-57d6f19209bc', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; Name; N/A; Площадка 2', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, NULL, N'N/A', N'Площадка 2', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'5c3b2246-0dfd-4f4c-b493-580c3f311dce', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:35.520' AS DateTime), N'ObjectCreated', N'ObjectCreated; 69d98d47-59d2-4798-945e-6eee50b1771c; N/A; N/A; N/A', N'cf2ddef4-c5b2-4ad8-88af-d77927d3a232', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'dd6d4488-d202-4b4b-80c6-58734fc8308a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:37.193' AS DateTime), N'ObjectChanged', N'ObjectChanged; 9893772a-0db0-4a79-b658-f4db38579369; IDplatform; N/A; Платформа 1', N'31b450d4-f4dc-412f-a8df-3084c13e2574', NULL, N'34e1b4f3-4f90-43e0-a41c-02c658e6c79a', N'N/A', N'Платформа 1', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'5297a891-9d6b-47a7-84a4-5d3e2b1e2a97', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.253' AS DateTime), N'ObjectChanged', N'ObjectChanged; d0a509c6-0067-41fb-9258-2c70955b7af7; IDplatform; N/A; Площадка 1', N'2e846028-cfff-49f5-9550-6d86c3b8ca5a', NULL, N'e7d0a351-ebd8-4135-bb3c-7d25b6192d53', N'N/A', N'Площадка 1', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'5df2ac59-c79e-4d25-bfe0-5da2416d0b14', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.253' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 1; Pickets; d0a509c6-0067-41fb-9258-2c70955b7af7; N/A', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', N'916da55e-a5f3-4d2a-a1bc-7a2227559742', NULL, N'd0a509c6-0067-41fb-9258-2c70955b7af7', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'33ab552b-6a96-4675-8054-5de28a5229ce', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Платформа 1; CargoWeight; N/A; 0', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'N/A', N'0', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'6129b49c-b544-4a5a-8c06-5e217c141d43', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.257' AS DateTime), N'ObjectChanged', N'ObjectChanged; 6369dd05-7d9b-4fa9-bcc7-8d0759c6427f; IDplatform; N/A; Площадка 1', N'bf7456a9-f884-4690-b00d-ecc478048398', NULL, N'47492026-4dd3-4278-b700-3d6a46f22b3c', N'N/A', N'Площадка 1', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'1d62ee7e-50cf-438d-9ae0-5fe83792810a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.817' AS DateTime), N'AddedToCollection', N'AddedToCollection; Уголь; Platforms; Площадка 1; N/A', N'fa6d224f-d7de-4f14-926a-0ac750edaff9', N'64290361-3546-4961-b183-8e8845b1c736', NULL, N'Площадка 1', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'4f0f1b25-45bf-4222-b9ac-61563c1ba50f', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:16.447' AS DateTime), N'ObjectCreated', N'ObjectCreated; 2d999fbf-7891-48cd-af9f-3ac6c9a486b3; N/A; N/A; N/A', N'c3436a33-7ef1-47f4-b867-426ed1e323d4', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2965b325-a859-4024-9444-65ff6eeafe7a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:28.033' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 6369dd05-7d9b-4fa9-bcc7-8d0759c6427f; Number; N/A; 104', N'bf7456a9-f884-4690-b00d-ecc478048398', NULL, NULL, N'N/A', N'104', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3e104f3b-39b5-4ab7-a29a-66d02c377543', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Платформа 1; Name; N/A; Платформа 1', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'N/A', N'Платформа 1', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'fe630833-5484-4b9d-b57e-677cfb0f2e30', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:39.577' AS DateTime), N'ObjectCreated', N'ObjectCreated; 9893772a-0db0-4a79-b658-f4db38579369; N/A; N/A; N/A', N'31b450d4-f4dc-412f-a8df-3084c13e2574', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'695477cf-338a-403b-b647-68a9d94593e3', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.810' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 1; CargoWeight; N/A; 0', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, NULL, N'N/A', N'0', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2a3eb4ee-f0dd-4124-98c5-68c8ededb8a9', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:25.060' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; e9ae0897-4439-4082-8dee-56e1b5d4d066; Number; N/A; 103', N'71a35318-5aed-4e5a-949a-dd2971e9ccf7', NULL, NULL, N'N/A', N'103', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'49cd6c0a-50e6-40e8-af0f-694ad00c12b8', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:21.813' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 2; Pickets; cf21754c-32a8-4acf-9a71-e92b31ff25fc; N/A', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', N'c9445360-d5de-4305-9bdf-18740e705257', NULL, N'cf21754c-32a8-4acf-9a71-e92b31ff25fc', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'752d824b-fb5d-4548-a57a-6d417cf87b66', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:38.723' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Гравий; Name; N/A; Гравий', N'd2a4519d-a5e8-474d-be49-ed550401d53e', NULL, NULL, N'N/A', N'Гравий', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'0e8ffee3-f278-4d81-ad77-7080de14fd1d', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:43:58.567' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Склад 2; Name; N/A; Склад 2', N'2bc4bc97-02c3-427a-bc1b-20bb95ebac63', NULL, NULL, N'N/A', N'Склад 2', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'1c8b7d18-5d0f-444d-9457-7119b276344a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.647' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; (Default language); Owner; N/A; DESKTOP-GI23UKH\Александр', N'4a90f6fb-d53d-46c4-bb0e-8dc849cf15fa', NULL, N'2925ad6a-35dc-4828-98d5-cfdaf1196a68', N'N/A', N'DESKTOP-GI23UKH\Александр', N'Owner', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'c1a2d108-f7d4-46bb-a6ee-7139ef7ff8b5', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:21.810' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 2; Pickets; 8263a12e-005e-4007-8363-a600e2b9ce9b; N/A', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', N'3fec4820-9f7f-4d1c-bc42-f9ddeb7fe7a8', NULL, N'8263a12e-005e-4007-8363-a600e2b9ce9b', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'd681624a-1698-4ce7-bc0f-720792e87813', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.033' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; Name; N/A; Площадка 2', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, NULL, N'N/A', N'Площадка 2', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'a896e66f-4582-411e-ace1-7229b8d431ec', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'AddedToCollection', N'AddedToCollection; Склад 2; Platforms; Платформа 1; N/A', N'2bc4bc97-02c3-427a-bc1b-20bb95ebac63', N'e162c771-2349-41d5-a28a-bfb2e0a70a96', NULL, N'Платформа 1', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'958f384a-e02a-4b71-b1a4-7316dc0aa78a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'AddedToCollection', N'AddedToCollection; Склад 1; Platforms; Площадка 2; N/A', N'7dbbdbf7-a799-4ee6-a096-4379db718da4', N'ec7d9ff5-5ab3-4db3-93d8-59db7ab83eb0', NULL, N'Площадка 2', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'583cf1d7-29e9-40e8-af8f-74817a37c23c', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:21.810' AS DateTime), N'ObjectChanged', N'ObjectChanged; 09133160-54a2-4ade-94aa-9e25bf6c3c13; IDplatform; N/A; Площадка 2', N'32457681-b18a-4502-9cef-6153fee92578', NULL, N'6c742cee-0832-48d3-a085-f5e17136a035', N'N/A', N'Площадка 2', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'9e28f29e-735d-4ab0-98ad-74b1710e8502', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:47.720' AS DateTime), N'ObjectCreated', N'ObjectCreated; 8263a12e-005e-4007-8363-a600e2b9ce9b; N/A; N/A; N/A', N'ab2bd656-de70-48ae-87e4-8a44dd8e3d76', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'85352e15-2d25-4376-9f18-74ea813b6d99', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.033' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; IDWarehouse; N/A; Склад 2', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, N'684fbda1-dec8-4841-b235-f06205b8a23f', N'N/A', N'Склад 2', N'IDWarehouse', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'fee995fa-9db9-4d25-81f2-784a73439433', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.823' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 2; Pickets; 9eafbc35-8b6d-41eb-aa2c-3c484376e001; N/A', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', N'5235b087-0865-4bca-ad1c-6ba97a833060', NULL, N'9eafbc35-8b6d-41eb-aa2c-3c484376e001', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3333c7f6-325c-4eae-9f70-7903aa1bff1d', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.643' AS DateTime), N'ObjectCreated', N'ObjectCreated; DESKTOP-GI23UKH\Александр; N/A; N/A; N/A', N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'16a3181c-b533-4632-a256-7ecca9175b94', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'AddedToCollection', N'AddedToCollection; Песок; Platforms; Платформа 1; N/A', N'd90c0807-d2d2-4ac6-a79e-92a2077ebe3e', N'4fd7cbf6-1dfb-468a-a542-39f70d8f6a6d', NULL, N'Платформа 1', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'93ea0dd8-4a01-4a33-935d-81fe4756c1c3', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:21.810' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 2; Pickets; 09133160-54a2-4ade-94aa-9e25bf6c3c13; N/A', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', N'4fc67a7e-40be-4daf-b7a4-7823691b9d08', NULL, N'09133160-54a2-4ade-94aa-9e25bf6c3c13', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e6c0dd07-014f-4ed6-9d13-867b8e69a266', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:31.737' AS DateTime), N'ObjectCreated', N'ObjectCreated; 9eafbc35-8b6d-41eb-aa2c-3c484376e001; N/A; N/A; N/A', N'2abd5b3d-41fb-48c8-a861-9425f9033e9d', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'8ad5ba1a-57ef-4328-8240-86d96fb47643', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Платформа 1; IDCargo; N/A; Песок', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, N'103ed1e5-77fd-416f-a277-a9f0d7ceec5e', N'N/A', N'Песок', N'IDCargo', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'031a24b3-8e6a-4c25-8374-8d3b9bd7c435', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:15.263' AS DateTime), N'ObjectCreated', N'ObjectCreated; Песок; N/A; N/A; N/A', N'd90c0807-d2d2-4ac6-a79e-92a2077ebe3e', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'9f68ffb4-2a48-4edf-a042-8e01fb6f6a0d', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:43:58.567' AS DateTime), N'ObjectCreated', N'ObjectCreated; Склад 2; N/A; N/A; N/A', N'2bc4bc97-02c3-427a-bc1b-20bb95ebac63', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'07873d00-63cf-4868-8246-94070082c109', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:37.193' AS DateTime), N'AddedToCollection', N'AddedToCollection; Платформа 1; Pickets; 9893772a-0db0-4a79-b658-f4db38579369; N/A', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', N'0f77a2ed-d1b9-4c1c-ab94-e9efa057e54a', NULL, N'9893772a-0db0-4a79-b658-f4db38579369', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e25717d7-d9f1-4d02-b031-957697d1e00c', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:39.577' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 9893772a-0db0-4a79-b658-f4db38579369; Number; N/A; 202', N'31b450d4-f4dc-412f-a8df-3084c13e2574', NULL, NULL, N'N/A', N'202', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'7bcd58ca-5c1d-4376-b556-970afd03b9ad', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.810' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 1; Name; N/A; Площадка 1', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, NULL, N'N/A', N'Площадка 1', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'f46b904c-8f9e-4e87-b495-9967cde39a90', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:28.193' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 2; CargoWeight; 0; 5000', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, NULL, N'0', N'5000', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'facecbf7-ad2f-419a-b149-9ae6d61131a8', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:38:31.477' AS DateTime), N'ObjectCreated', N'ObjectCreated; Склад 1; N/A; N/A; N/A', N'7dbbdbf7-a799-4ee6-a096-4379db718da4', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'da338653-5098-462a-ae1a-9b780f6b5505', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.810' AS DateTime), N'ObjectCreated', N'ObjectCreated; Площадка 1; N/A; N/A; N/A', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'ad98a77c-2d7c-49b1-86b1-a47bda4f5277', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.643' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; DESKTOP-GI23UKH\Александр; Version; N/A; 0', N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', NULL, NULL, N'N/A', N'0', N'Version', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'9c6fe4cd-ba8f-4783-ac34-a5230b9579fc', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.033' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; IDCargo; N/A; Щебень', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, N'3b50e9f4-71d2-40e3-817e-1955d89b2607', N'N/A', N'Щебень', N'IDCargo', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'0e24a6a6-da2e-420f-8f64-a9b1b14f3bf8', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; CargoWeight; N/A; 0', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, NULL, N'N/A', N'0', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'93890b94-9f44-4052-ad0c-aa02bc976eb6', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.817' AS DateTime), N'AddedToCollection', N'AddedToCollection; Склад 1; Platforms; Площадка 1; N/A', N'7dbbdbf7-a799-4ee6-a096-4379db718da4', N'91791e2b-9059-4988-b757-211dbbcad18c', NULL, N'Площадка 1', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'daf4b382-a024-4730-90b1-ac5593b70ed3', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:21.813' AS DateTime), N'ObjectChanged', N'ObjectChanged; cf21754c-32a8-4acf-9a71-e92b31ff25fc; IDplatform; N/A; Площадка 2', N'bc2232a1-984e-4184-a6e8-79e175ee8306', NULL, N'5590f915-8107-4d86-8531-f27b67dd6e2a', N'N/A', N'Площадка 2', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'761a3df0-9f24-428c-b5e0-acca37a24077', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.643' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; DESKTOP-GI23UKH\Александр; ContextId; N/A; Win', N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', NULL, NULL, N'N/A', N'Win', N'ContextId', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2805cc46-667f-45fe-ba6e-ae5b5678e6a3', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:47.720' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 8263a12e-005e-4007-8363-a600e2b9ce9b; Number; N/A; 204', N'ab2bd656-de70-48ae-87e4-8a44dd8e3d76', NULL, NULL, N'N/A', N'204', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2ed99a24-142f-468a-9aee-b12d8e2587da', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.647' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; (Default language); Name; N/A; ', N'4a90f6fb-d53d-46c4-bb0e-8dc849cf15fa', NULL, NULL, N'N/A', N'', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e73ec148-4e56-4575-a7dc-b19d04304e55', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; IDWarehouse; N/A; Склад 1', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, N'6267fc50-2446-4cad-b8ae-19bd4459198c', N'N/A', N'Склад 1', N'IDWarehouse', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'50941abf-45f1-4190-8ecd-b1c090cdc0ef', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.647' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; (Default language); Xml; N/A; Blob data', N'4a90f6fb-d53d-46c4-bb0e-8dc849cf15fa', NULL, NULL, N'N/A', N'Blob data', N'Xml', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e1858f72-1238-4d7a-b226-b4732da60f5b', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:43.740' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 09133160-54a2-4ade-94aa-9e25bf6c3c13; Number; N/A; 203', N'32457681-b18a-4502-9cef-6153fee92578', NULL, NULL, N'N/A', N'203', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'0a3d3d90-ac95-4d9a-8ed7-b477e3adba57', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.817' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 1; IDWarehouse; N/A; Склад 1', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, N'6218b831-0101-485e-8d52-7442ccac6237', N'N/A', N'Склад 1', N'IDWarehouse', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'cba8e6b4-b4bf-48a1-a2d8-b7f13de98b3d', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:41:19.820' AS DateTime), N'ObjectCreated', N'ObjectCreated; Площадка 2; N/A; N/A; N/A', N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'12115737-1976-48f1-86ac-bd2a73b8a08a', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:31.737' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; 9eafbc35-8b6d-41eb-aa2c-3c484376e001; Number; N/A; 105', N'2abd5b3d-41fb-48c8-a861-9425f9033e9d', NULL, NULL, N'N/A', N'105', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'92b406fe-4d9e-4b7b-8fe0-be0d13c3b137', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:29.553' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 2; CargoWeight; 0; 15000', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, NULL, N'0', N'15000', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'972bd97b-f9e2-4871-9860-c7fa7d4ee1a8', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:30.253' AS DateTime), N'AddedToCollection', N'AddedToCollection; Площадка 1; Pickets; e9ae0897-4439-4082-8dee-56e1b5d4d066; N/A', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', N'7b0550a7-d812-46e8-992d-0768cf5ef4fb', NULL, N'e9ae0897-4439-4082-8dee-56e1b5d4d066', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2899152c-2a52-427d-9f45-c8427a125945', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:08.813' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 1; IDCargo; N/A; Уголь', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, N'95b6cb05-d822-400a-aadb-22b882d6663f', N'N/A', N'Уголь', N'IDCargo', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'770567eb-038f-44e8-8ab5-c900744ebfbb', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:43.900' AS DateTime), N'ObjectChanged', N'ObjectChanged; Платформа 1; IsFormed; False; True', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'False', N'True', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'da9b51b4-b6ad-42a7-9e33-d3a6a07fff6b', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:15.263' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Песок; Name; N/A; Песок', N'd90c0807-d2d2-4ac6-a79e-92a2077ebe3e', NULL, NULL, N'N/A', N'Песок', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'3a68cdca-c8eb-4559-8787-d4c036fcd30f', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:18.323' AS DateTime), N'ObjectCreated', N'ObjectCreated; Платформа 1; N/A; N/A; N/A', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'98630951-b7a9-4500-8a19-d689d9a7d8f5', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.647' AS DateTime), N'AddedToCollection', N'AddedToCollection; DESKTOP-GI23UKH\Александр; Aspects; (Default language); N/A', N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', N'1b56a90a-d82c-45fb-a57f-2b7f4a63b482', NULL, N'(Default language)', N'N/A', N'Aspects', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e1572e51-1d5f-4371-a946-d9535dccbcfc', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:53.190' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; cf21754c-32a8-4acf-9a71-e92b31ff25fc; Number; N/A; 205', N'bc2232a1-984e-4184-a6e8-79e175ee8306', NULL, NULL, N'N/A', N'205', N'Number', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e1b4857e-9a93-4fd1-9c92-dc791fa7cf81', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:37.190' AS DateTime), N'ObjectChanged', N'ObjectChanged; 69d98d47-59d2-4798-945e-6eee50b1771c; IDplatform; N/A; Платформа 1', N'cf2ddef4-c5b2-4ad8-88af-d77927d3a232', NULL, N'67b377a1-3545-47f5-899d-6beab3910bae', N'N/A', N'Платформа 1', N'IDplatform', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'7a61a9ca-635c-4213-a696-e414ee1544f5', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.033' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; CargoWeight; N/A; 0', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, NULL, N'N/A', N'0', N'CargoWeight', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2541571b-7914-4532-87bd-e47b6f3284da', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:33.443' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Щебень; Name; N/A; Щебень', N'e248a618-9f26-4f22-8276-56f34ab2ecd1', NULL, NULL, N'N/A', N'Щебень', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'05b54ad6-47de-4d1c-b0b7-e513b90f5035', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.037' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Площадка 2; IsFormed; N/A; False', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, NULL, N'N/A', N'False', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'2bb829df-00b4-48ad-b880-e5e1846dff3d', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:25.060' AS DateTime), N'ObjectCreated', N'ObjectCreated; e9ae0897-4439-4082-8dee-56e1b5d4d066; N/A; N/A; N/A', N'71a35318-5aed-4e5a-949a-dd2971e9ccf7', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'd166901b-cb80-4dc7-8d0f-e6076e90aa90', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:53.190' AS DateTime), N'ObjectCreated', N'ObjectCreated; cf21754c-32a8-4acf-9a71-e92b31ff25fc; N/A; N/A; N/A', N'bc2232a1-984e-4184-a6e8-79e175ee8306', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'c241b993-1bad-4260-90dd-eb2fd841cfb7', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:29.553' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 2; IsFormed; False; True', N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', NULL, NULL, N'False', N'True', N'IsFormed', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'5d74664d-a1a1-47ca-8731-ececdcb50f14', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:39:19.467' AS DateTime), N'ObjectCreated', N'ObjectCreated; d0a509c6-0067-41fb-9258-2c70955b7af7; N/A; N/A; N/A', N'2e846028-cfff-49f5-9550-6d86c3b8ca5a', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'b1b4d2e5-2179-40b9-91ed-ede300d58b50', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:46.643' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; DESKTOP-GI23UKH\Александр; UserId; N/A; ca3c32d3-b141-4ad2-8061-45fb3325bdc9', N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', NULL, NULL, N'N/A', N'ca3c32d3-b141-4ad2-8061-45fb3325bdc9', N'UserId', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'6b14df44-fb94-4e35-b25a-ee74caa1badb', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:37.193' AS DateTime), N'AddedToCollection', N'AddedToCollection; Платформа 1; Pickets; 69d98d47-59d2-4798-945e-6eee50b1771c; N/A', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', N'3f4e5826-b71e-4650-81f6-848dfd64e8f5', NULL, N'69d98d47-59d2-4798-945e-6eee50b1771c', N'N/A', N'Pickets', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'131dc2b9-bc12-4693-a7a0-f08d418f5c46', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:44:57.513' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 1; Name; Платформа 1; Площадка 1', N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', NULL, NULL, N'Платформа 1', N'Площадка 1', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'e475539b-6338-445d-bf3e-f2e97a3c8328', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:07.590' AS DateTime), N'ObjectCreated', N'ObjectCreated; Уголь; N/A; N/A; N/A', N'fa6d224f-d7de-4f14-926a-0ac750edaff9', NULL, NULL, N'N/A', N'N/A', N'', 0, NULL)
GO
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'ae38cbb5-26f9-4afd-b421-f405dc922500', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:34:07.590' AS DateTime), N'InitialValueAssigned', N'InitialValueAssigned; Уголь; Name; N/A; Уголь', N'fa6d224f-d7de-4f14-926a-0ac750edaff9', NULL, NULL, N'N/A', N'Уголь', N'Name', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'36aba681-eb82-40dd-a389-f900c103a177', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:45:12.037' AS DateTime), N'AddedToCollection', N'AddedToCollection; Склад 2; Platforms; Площадка 2; N/A', N'2bc4bc97-02c3-427a-bc1b-20bb95ebac63', N'f87f85a5-d035-4bc7-b588-694f2f691205', NULL, N'Площадка 2', N'N/A', N'Platforms', 0, NULL)
INSERT [dbo].[AuditDataItemPersistent] ([Oid], [UserName], [ModifiedOn], [OperationType], [Description], [AuditedObject], [OldObject], [NewObject], [OldValue], [NewValue], [PropertyName], [OptimisticLockField], [GCRecord]) VALUES (N'd525ad8a-c356-4bef-8881-fb5a5114cd13', N'DESKTOP-GI23UKH\Александр', CAST(N'2022-03-10T19:40:38.733' AS DateTime), N'ObjectChanged', N'ObjectChanged; Площадка 1; IsFormed; False; True', N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', NULL, NULL, N'False', N'True', N'IsFormed', 0, NULL)
GO
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'fa6d224f-d7de-4f14-926a-0ac750edaff9', N'a1f94254-f2ab-4e6d-8fb2-0950ab69b408', NULL, N'Уголь')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', N'b5a4e9ff-47c4-4461-9534-6c9a01d230b8', NULL, N'Площадка 1')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'2bc4bc97-02c3-427a-bc1b-20bb95ebac63', N'f9c7792c-5b94-4e4b-9fef-abeb740c6d90', NULL, N'Склад 2')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'31b450d4-f4dc-412f-a8df-3084c13e2574', N'9893772a-0db0-4a79-b658-f4db38579369', NULL, N'9893772a-0db0-4a79-b658-f4db38579369')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'c3436a33-7ef1-47f4-b867-426ed1e323d4', N'2d999fbf-7891-48cd-af9f-3ac6c9a486b3', NULL, N'2d999fbf-7891-48cd-af9f-3ac6c9a486b3')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'7dbbdbf7-a799-4ee6-a096-4379db718da4', N'26136dd3-1333-40ab-bdf1-653a6c6c50b1', NULL, N'Склад 1')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'e248a618-9f26-4f22-8276-56f34ab2ecd1', N'a8c9c8e3-d91d-4068-959b-b317d1c21b85', NULL, N'Щебень')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'32457681-b18a-4502-9cef-6153fee92578', N'09133160-54a2-4ade-94aa-9e25bf6c3c13', NULL, N'09133160-54a2-4ade-94aa-9e25bf6c3c13')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'2e846028-cfff-49f5-9550-6d86c3b8ca5a', N'd0a509c6-0067-41fb-9258-2c70955b7af7', NULL, N'd0a509c6-0067-41fb-9258-2c70955b7af7')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', N'd78f3504-c365-4620-abc1-da3a3c60cd2e', NULL, N'Площадка 2')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'bc2232a1-984e-4184-a6e8-79e175ee8306', N'cf21754c-32a8-4acf-9a71-e92b31ff25fc', NULL, N'cf21754c-32a8-4acf-9a71-e92b31ff25fc')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'ab2bd656-de70-48ae-87e4-8a44dd8e3d76', N'8263a12e-005e-4007-8363-a600e2b9ce9b', NULL, N'8263a12e-005e-4007-8363-a600e2b9ce9b')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'4a90f6fb-d53d-46c4-bb0e-8dc849cf15fa', N'2968a482-f98a-4c19-80ad-6e6cf8002d4b', NULL, N'(Default language)')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'd90c0807-d2d2-4ac6-a79e-92a2077ebe3e', N'389e9bda-25d7-406a-a0b1-d7217dab18d7', NULL, N'Песок')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'2abd5b3d-41fb-48c8-a861-9425f9033e9d', N'9eafbc35-8b6d-41eb-aa2c-3c484376e001', NULL, N'9eafbc35-8b6d-41eb-aa2c-3c484376e001')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', N'ce3ca0db-8425-4539-b733-369fbe613a85', NULL, N'Площадка 2')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', N'710c0229-2e60-4a91-99eb-4f276ae86855', NULL, N'Платформа 1')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'cf2ddef4-c5b2-4ad8-88af-d77927d3a232', N'69d98d47-59d2-4798-945e-6eee50b1771c', NULL, N'69d98d47-59d2-4798-945e-6eee50b1771c')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'71a35318-5aed-4e5a-949a-dd2971e9ccf7', N'e9ae0897-4439-4082-8dee-56e1b5d4d066', NULL, N'e9ae0897-4439-4082-8dee-56e1b5d4d066')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', N'181fd728-61d3-4dbb-924b-198836b83d3c', NULL, N'DESKTOP-GI23UKH\Александр')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'bf7456a9-f884-4690-b00d-ecc478048398', N'6369dd05-7d9b-4fa9-bcc7-8d0759c6427f', NULL, N'6369dd05-7d9b-4fa9-bcc7-8d0759c6427f')
INSERT [dbo].[AuditedObjectWeakReference] ([Oid], [GuidId], [IntId], [DisplayName]) VALUES (N'd2a4519d-a5e8-474d-be49-ed550401d53e', N'9951551f-3c62-4b3c-b703-3fec0658f7bd', NULL, N'Гравий')
GO
INSERT [dbo].[Cargo] ([Oid], [Name], [OptimisticLockField], [GCRecord]) VALUES (N'a1f94254-f2ab-4e6d-8fb2-0950ab69b408', N'Уголь', 1, NULL)
INSERT [dbo].[Cargo] ([Oid], [Name], [OptimisticLockField], [GCRecord]) VALUES (N'9951551f-3c62-4b3c-b703-3fec0658f7bd', N'Гравий', 1, NULL)
INSERT [dbo].[Cargo] ([Oid], [Name], [OptimisticLockField], [GCRecord]) VALUES (N'a8c9c8e3-d91d-4068-959b-b317d1c21b85', N'Щебень', 1, NULL)
INSERT [dbo].[Cargo] ([Oid], [Name], [OptimisticLockField], [GCRecord]) VALUES (N'389e9bda-25d7-406a-a0b1-d7217dab18d7', N'Песок', 1, NULL)
GO
INSERT [dbo].[ModelDifference] ([Oid], [UserId], [ContextId], [Version], [OptimisticLockField], [GCRecord]) VALUES (N'181fd728-61d3-4dbb-924b-198836b83d3c', N'ca3c32d3-b141-4ad2-8061-45fb3325bdc9', N'Win', 0, 1, NULL)
GO
INSERT [dbo].[ModelDifferenceAspect] ([Oid], [Name], [Xml], [Owner], [OptimisticLockField], [GCRecord]) VALUES (N'2968a482-f98a-4c19-80ad-6e6cf8002d4b', N'', N'<?xml version="1.0" encoding="utf-8"?>
<Application>
  <Options DocumentManagerState="PD94bWwgdmVyc2lvbj0iMS4wIj8+DQo8RG9jdW1lbnRNYW5hZ2VyU3RhdGUgeG1sbnM6eHNpPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1pbnN0YW5jZSIgeG1sbnM6eHNkPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSI+DQogIDxEb2N1bWVudERlc2NyaXB0aW9ucyAvPg0KICA8Vmlld0xheW91dD51Z0FBQVBJUG9IZnlBSGZ5QWFCMzhnSjM4Z09oZC9JRUFQSUJvSGZ5QmZLbG9IZnlCbmZ5QjZGMzhnZ0E4Z0NnZC9JSmQvSUtvSGZ5QzNmeUNxQjM4Z3p5QUtCMzhnMTM4Z3FnZC9JT2QvSUtvSGZ5RDNmeUVLRjM4aEVBOGdDaGQvSVNBUElBb1hmeUV3RHlBS0YzOGhUeUFmSUJvWGZ5RlFEeUI2QjM4aFozOGhlZ2QvSVlBS0IzOGdaMzhnZWdkL0laOGdDaGQvSWFBUElDb0hmeUc2b0FBQUFBQUFEd1A2QjM4aHgzOGgyZ2QvSWVkL0lmb0hmeUlIZnlJZklpRGlOTVlYbHZkWFJXWlhKemFXOXVBQklqVEdGNWIzVjBVMk5oYkdWR1lXTjBiM0lWUURFc1YybGtkR2c5TVVBeExFaGxhV2RvZEQweEVrUnZZM1Z0Wlc1MFVISnZjR1Z5ZEdsbGN3dE5ZWGhVWVdKWGFXUjBhQXRQY21sbGJuUmhkR2x2YmdwSWIzSnBlbTl1ZEdGc0YwUnZZM1Z0Wlc1MFIzSnZkWEJRY205d1pYSjBhV1Z6RkVWdVlXSnNaVVp5WldWTVlYbHZkWFJOYjJSbEIwUmxabUYxYkhRVlJXNWhZbXhsVTNScFkydDVVM0JzYVhSMFpYSnpHVU4xYzNSdmJWSmxjMmw2WlZwdmJtVlVhR2xqYTI1bGMzTUZVM1I1YkdVWlJteHZZWFJFYjJOMWJXVnVkSE5CYkhkaGVYTlBibFJ2Y0JsR2JHOWhkR2x1WjBSdlkzVnRaVzUwUTI5dWRHRnBibVZ5RFVSdlkzVnRaVzUwYzBodmMzUWFURzloWkdsdVowbHVaR2xqWVhSdmNsQnliM0JsY25ScFpYTWFSRzlqZFcxbGJuUlRaV3hsWTNSdmNsQnliM0JsY25ScFpYTVhWMmx1Wkc5M2MwUnBZV3h2WjFCeWIzQmxjblJwWlhNRlNYUmxiWE1GU1hSbGJURUdVR0Z5Wlc1MEJGSnZiM1FIUld4bGJXVnVkQVZKYm1SbGVBWk1aVzVuZEdnSlZXNXBkRlpoYkhWbENGVnVhWFJVZVhCbEJGTjBZWElFVG1GdFpSRkViMk5yYVc1blEyOXVkR0ZwYm1WeU1BaFVlWEJsVG1GdFpSQkViMk5yYVc1blEyOXVkR0ZwYm1WeTwvVmlld0xheW91dD4NCjwvRG9jdW1lbnRNYW5hZ2VyU3RhdGU+" />
  <SchemaModules>
    <SchemaModule Name="SystemModule" Version="21.2.5.0" IsNewNode="True" />
    <SchemaModule Name="SystemWindowsFormsModule" Version="21.2.5.0" IsNewNode="True" />
  </SchemaModules>
  <Templates>
    <Template Id="DevExpress.ExpressApp.Win.Templates.LookupControlTemplate" IsNewNode="True">
      <FormStates IsNewNode="True">
        <FormState Id="Cargo_LookupListView" IsNewNode="True" />
        <FormState Id="Platform_LookupListView" IsNewNode="True" />
        <FormState Id="Warehouse_LookupListView" IsNewNode="True" />
      </FormStates>
    </Template>
    <Template Id="DevExpress.ExpressApp.Win.Templates.LookupForm" IsNewNode="True">
      <FormStates IsNewNode="True">
        <FormState Id="Default" State="Normal" X="473" Y="181" Width="420" Height="366" IsNewNode="True" />
      </FormStates>
    </Template>
    <Template Id="DevExpress.ExpressApp.Win.Templates.Ribbon.DetailRibbonFormV2" IsNewNode="True">
      <FormStates IsNewNode="True">
        <FormState Id="ApplicationUser_ListView" IsNewNode="True" />
        <FormState Id="Cargo_DetailView" IsNewNode="True" />
        <FormState Id="Cargo_ListView" IsNewNode="True" />
        <FormState Id="Picket_DetailView" IsNewNode="True" />
        <FormState Id="Platform_DetailView" IsNewNode="True" />
        <FormState Id="Warehouse_DetailView" IsNewNode="True" />
        <FormState Id="Warehouse_ListView" IsNewNode="True" />
      </FormStates>
    </Template>
    <Template Id="DevExpress.ExpressApp.Win.Templates.Ribbon.LightStyleMainRibbonForm" DockManagerSettings="77u/PFh0cmFTZXJpYWxpemVyIHZlcnNpb249IjEuMCIgYXBwbGljYXRpb249IkRvY2tNYW5hZ2VyIj4NCiAgPHByb3BlcnR5IG5hbWU9IiNMYXlvdXRWZXJzaW9uIiAvPg0KICA8cHJvcGVydHkgbmFtZT0iI0xheW91dFNjYWxlRmFjdG9yIj5AMSxXaWR0aD0xQDEsSGVpZ2h0PTE8L3Byb3BlcnR5Pg0KICA8cHJvcGVydHkgbmFtZT0iQWxsb3dHbHlwaFNraW5uaW5nIj5mYWxzZTwvcHJvcGVydHk+DQogIDxwcm9wZXJ0eSBuYW1lPSJTdHlsZSI+RGVmYXVsdDwvcHJvcGVydHk+DQogIDxwcm9wZXJ0eSBuYW1lPSJBdXRvSGlkZGVuUGFuZWxDYXB0aW9uU2hvd01vZGUiPlNob3dGb3JBbGxQYW5lbHM8L3Byb3BlcnR5Pg0KICA8cHJvcGVydHkgbmFtZT0iQXV0b0hpZGVDb250YWluZXJzIiBpc2tleT0idHJ1ZSIgdmFsdWU9IjAiIC8+DQogIDxwcm9wZXJ0eSBuYW1lPSJEb2NraW5nT3B0aW9ucyIgaXNudWxsPSJ0cnVlIiBpc2tleT0idHJ1ZSI+DQogICAgPHByb3BlcnR5IG5hbWU9IkF1dG9IaWRlUGFuZWxWZXJ0aWNhbFRleHRPcmllbnRhdGlvbiI+RGVmYXVsdDwvcHJvcGVydHk+DQogICAgPHByb3BlcnR5IG5hbWU9IlRhYmJlZFBhbmVsVmVydGljYWxUZXh0T3JpZW50YXRpb24iPkRlZmF1bHQ8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJDdXN0b21SZXNpemVab25lVGhpY2tuZXNzIj4wPC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iQ3Vyc29yRmxvYXRDYW5jZWxlZCIgaXNudWxsPSJ0cnVlIiAvPg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJIaWRlSW1tZWRpYXRlbHlPbkF1dG9IaWRlIj5mYWxzZTwvcHJvcGVydHk+DQogICAgPHByb3BlcnR5IG5hbWU9IkhpZGVQYW5lbHNJbW1lZGlhdGVseSI+TmV2ZXI8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJDbG9zZUFjdGl2ZVRhYk9ubHkiPnRydWU8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJDbG9zZUFjdGl2ZUZsb2F0VGFiT25seSI+ZmFsc2U8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJTaG93Q2FwdGlvbk9uTW91c2VIb3ZlciI+ZmFsc2U8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJTaG93Q2FwdGlvbkltYWdlIj5mYWxzZTwvcHJvcGVydHk+DQogICAgPHByb3BlcnR5IG5hbWU9IkZsb2F0UGFuZWxzQWx3YXlzT25Ub3AiPkRlZmF1bHQ8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJBbGxvd1Jlc3RvcmVUb0F1dG9IaWRlQ29udGFpbmVyIj5mYWxzZTwvcHJvcGVydHk+DQogICAgPHByb3BlcnR5IG5hbWU9IkFsbG93RG9ja1RvQ2VudGVyIj5EZWZhdWx0PC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iRG9ja1BhbmVsSW5UYWJDb250YWluZXJUYWJSZWdpb24iPkRvY2tJbW1lZGlhdGVseTwvcHJvcGVydHk+DQogICAgPHByb3BlcnR5IG5hbWU9IkRvY2tQYW5lbEluQ2FwdGlvblJlZ2lvbiI+RGVmYXVsdDwvcHJvcGVydHk+DQogICAgPHByb3BlcnR5IG5hbWU9IlNuYXBNb2RlIj5Ob25lPC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iU2hvd01heGltaXplQnV0dG9uIj50cnVlPC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iU2hvd01pbmltaXplQnV0dG9uIj50cnVlPC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iU2hvd0F1dG9IaWRlQnV0dG9uIj50cnVlPC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iU2hvd0Nsb3NlQnV0dG9uIj50cnVlPC9wcm9wZXJ0eT4NCiAgICA8cHJvcGVydHkgbmFtZT0iRmxvYXRPbkRibENsaWNrIj50cnVlPC9wcm9wZXJ0eT4NCiAgPC9wcm9wZXJ0eT4NCiAgPHByb3BlcnR5IG5hbWU9IkFjdGl2ZVBhbmVsSUQiPi0xPC9wcm9wZXJ0eT4NCiAgPHByb3BlcnR5IG5hbWU9Ilh0cmFTZXJpYWxpemFibGVTY3JlZW5Db25maWd1cmF0aW9uIiBpc2tleT0idHJ1ZSIgdmFsdWU9IjEiPg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJJdGVtMSI+QDEsWD0wQDEsWT0wQDQsV2lkdGg9MTM2NkAzLEhlaWdodD03Njg8L3Byb3BlcnR5Pg0KICA8L3Byb3BlcnR5Pg0KICA8cHJvcGVydHkgbmFtZT0iUGFuZWxzIiBpc2tleT0idHJ1ZSIgdmFsdWU9IjAiIC8+DQogIDxwcm9wZXJ0eSBuYW1lPSJUb3BaSW5kZXhDb250cm9scyIgaXNrZXk9InRydWUiIHZhbHVlPSIyIj4NCiAgICA8cHJvcGVydHkgbmFtZT0iSXRlbTEiIHR5cGU9IlN5c3RlbS5TdHJpbmciPkRldkV4cHJlc3MuRXhwcmVzc0FwcC5XaW4uVGVtcGxhdGVzLlJpYmJvbi5YYWZSaWJib25Db250cm9sVjI8L3Byb3BlcnR5Pg0KICAgIDxwcm9wZXJ0eSBuYW1lPSJJdGVtMiIgdHlwZT0iU3lzdGVtLlN0cmluZyI+RGV2RXhwcmVzcy5YdHJhQmFycy5SaWJib24uUmliYm9uU3RhdHVzQmFyPC9wcm9wZXJ0eT4NCiAgPC9wcm9wZXJ0eT4NCjwvWHRyYVNlcmlhbGl6ZXI+" IsNewNode="True">
      <FormStates IsNewNode="True">
        <FormState Id="Default" State="Maximized" MaximizedOnScreen="\\.\DISPLAY1" X="52" Y="52" Width="800" Height="604" IsNewNode="True" />
      </FormStates>
      <NavBarCustomization Width="200" IsNewNode="True" />
    </Template>
  </Templates>
</Application>', N'181fd728-61d3-4dbb-924b-198836b83d3c', 1, NULL)
GO
INSERT [dbo].[PermissionPolicyMemberPermissionsObject] ([Oid], [Members], [ReadState], [WriteState], [Criteria], [TypePermissionObject], [OptimisticLockField], [GCRecord]) VALUES (N'fcf01d20-e629-4f3f-b070-66bcc8ac7cba', N'ChangePasswordOnFirstLogon', NULL, 1, N'[Oid] = CurrentUserId()', N'a30941ee-815f-403c-83a9-1711359fec32', 0, NULL)
INSERT [dbo].[PermissionPolicyMemberPermissionsObject] ([Oid], [Members], [ReadState], [WriteState], [Criteria], [TypePermissionObject], [OptimisticLockField], [GCRecord]) VALUES (N'23f2d654-f004-4a21-82af-fc6e43c27d8c', N'StoredPassword', NULL, 1, N'[Oid] = CurrentUserId()', N'a30941ee-815f-403c-83a9-1711359fec32', 0, NULL)
GO
INSERT [dbo].[PermissionPolicyNavigationPermissionsObject] ([Oid], [ItemPath], [NavigateState], [Role], [OptimisticLockField], [GCRecord]) VALUES (N'2b1c8582-c442-4915-b569-79a69cf7db97', N'Application/NavigationItems/Items/Default/Items/MyDetails', 1, N'abdd4dc9-aa49-4a12-b4b2-2a6181bc9058', 0, NULL)
GO
INSERT [dbo].[PermissionPolicyObjectPermissionsObject] ([Oid], [Criteria], [ReadState], [WriteState], [DeleteState], [NavigateState], [TypePermissionObject], [OptimisticLockField], [GCRecord]) VALUES (N'8189780f-508c-4c22-9f56-677f1711685c', N'[Oid] = CurrentUserId()', 1, NULL, NULL, NULL, N'a30941ee-815f-403c-83a9-1711359fec32', 0, NULL)
GO
INSERT [dbo].[PermissionPolicyRole] ([Oid], [Name], [IsAdministrative], [CanEditModel], [PermissionPolicy], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'abdd4dc9-aa49-4a12-b4b2-2a6181bc9058', N'Default', 0, 0, 0, 0, NULL, 1)
INSERT [dbo].[PermissionPolicyRole] ([Oid], [Name], [IsAdministrative], [CanEditModel], [PermissionPolicy], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'ddfd3094-a7fe-4929-9f5a-ef73129fa8f5', N'Administrators', 1, 0, 0, 0, NULL, 1)
GO
INSERT [dbo].[PermissionPolicyTypePermissionsObject] ([Oid], [Role], [TargetType], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState], [OptimisticLockField], [GCRecord]) VALUES (N'a30941ee-815f-403c-83a9-1711359fec32', N'abdd4dc9-aa49-4a12-b4b2-2a6181bc9058', N'Sklad.Module.BusinessObjects.ApplicationUser', NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionsObject] ([Oid], [Role], [TargetType], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState], [OptimisticLockField], [GCRecord]) VALUES (N'8e8d8c79-a585-4ae7-bd97-85bd6f76035d', N'abdd4dc9-aa49-4a12-b4b2-2a6181bc9058', N'DevExpress.Persistent.BaseImpl.PermissionPolicy.PermissionPolicyRole', 0, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionsObject] ([Oid], [Role], [TargetType], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState], [OptimisticLockField], [GCRecord]) VALUES (N'8dc2c10c-49ec-4178-9609-cac56e5d73bb', N'abdd4dc9-aa49-4a12-b4b2-2a6181bc9058', N'DevExpress.Persistent.BaseImpl.ModelDifference', 1, 1, 1, NULL, NULL, 0, NULL)
INSERT [dbo].[PermissionPolicyTypePermissionsObject] ([Oid], [Role], [TargetType], [ReadState], [WriteState], [CreateState], [DeleteState], [NavigateState], [OptimisticLockField], [GCRecord]) VALUES (N'99b5ed92-a7c3-4e76-8285-f45a6344ad4e', N'abdd4dc9-aa49-4a12-b4b2-2a6181bc9058', N'DevExpress.Persistent.BaseImpl.ModelDifferenceAspect', 1, 1, 1, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[PermissionPolicyUser] ([Oid], [StoredPassword], [ChangePasswordOnFirstLogon], [UserName], [IsActive], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'ca3c32d3-b141-4ad2-8061-45fb3325bdc9', N'', 0, N'DESKTOP-GI23UKH\Александр', 1, 0, NULL, 2)
GO
INSERT [dbo].[PermissionPolicyUserLoginInfo] ([Oid], [LoginProviderName], [ProviderUserKey], [User], [OptimisticLockField]) VALUES (N'ee2223c8-5dd1-4b2e-8fa0-1ba173820d46', N'Windows', N'DESKTOP-GI23UKH\Александр', N'ca3c32d3-b141-4ad2-8061-45fb3325bdc9', 0)
GO
INSERT [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles] ([Roles], [Users], [OID], [OptimisticLockField]) VALUES (N'ddfd3094-a7fe-4929-9f5a-ef73129fa8f5', N'ca3c32d3-b141-4ad2-8061-45fb3325bdc9', N'59727fe8-dfcf-4fff-9b8b-6a4860e9f1a2', 0)
GO
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'd0a509c6-0067-41fb-9258-2c70955b7af7', CAST(102 AS Numeric(10, 0)), N'b5a4e9ff-47c4-4461-9534-6c9a01d230b8', 3, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'2d999fbf-7891-48cd-af9f-3ac6c9a486b3', CAST(101 AS Numeric(10, 0)), N'b5a4e9ff-47c4-4461-9534-6c9a01d230b8', 3, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'9eafbc35-8b6d-41eb-aa2c-3c484376e001', CAST(105 AS Numeric(10, 0)), N'ce3ca0db-8425-4539-b733-369fbe613a85', 5, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'e9ae0897-4439-4082-8dee-56e1b5d4d066', CAST(103 AS Numeric(10, 0)), N'b5a4e9ff-47c4-4461-9534-6c9a01d230b8', 3, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'69d98d47-59d2-4798-945e-6eee50b1771c', CAST(201 AS Numeric(10, 0)), N'710c0229-2e60-4a91-99eb-4f276ae86855', 5, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'6369dd05-7d9b-4fa9-bcc7-8d0759c6427f', CAST(104 AS Numeric(10, 0)), N'b5a4e9ff-47c4-4461-9534-6c9a01d230b8', 3, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'09133160-54a2-4ade-94aa-9e25bf6c3c13', CAST(203 AS Numeric(10, 0)), N'd78f3504-c365-4620-abc1-da3a3c60cd2e', 5, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'8263a12e-005e-4007-8363-a600e2b9ce9b', CAST(204 AS Numeric(10, 0)), N'd78f3504-c365-4620-abc1-da3a3c60cd2e', 5, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'cf21754c-32a8-4acf-9a71-e92b31ff25fc', CAST(205 AS Numeric(10, 0)), N'd78f3504-c365-4620-abc1-da3a3c60cd2e', 5, NULL)
INSERT [dbo].[Picket] ([Oid], [Number], [IDplatform], [OptimisticLockField], [GCRecord]) VALUES (N'9893772a-0db0-4a79-b658-f4db38579369', CAST(202 AS Numeric(10, 0)), N'710c0229-2e60-4a91-99eb-4f276ae86855', 5, NULL)
GO
INSERT [dbo].[Platform] ([Oid], [Name], [CargoWeight], [IDCargo], [IDWarehouse], [IsFormed], [OptimisticLockField], [GCRecord]) VALUES (N'ce3ca0db-8425-4539-b733-369fbe613a85', N'Площадка 2', 5000, N'9951551f-3c62-4b3c-b703-3fec0658f7bd', N'26136dd3-1333-40ab-bdf1-653a6c6c50b1', 1, 3, NULL)
INSERT [dbo].[Platform] ([Oid], [Name], [CargoWeight], [IDCargo], [IDWarehouse], [IsFormed], [OptimisticLockField], [GCRecord]) VALUES (N'710c0229-2e60-4a91-99eb-4f276ae86855', N'Площадка 1', 8000, N'389e9bda-25d7-406a-a0b1-d7217dab18d7', N'f9c7792c-5b94-4e4b-9fef-abeb740c6d90', 1, 7, NULL)
INSERT [dbo].[Platform] ([Oid], [Name], [CargoWeight], [IDCargo], [IDWarehouse], [IsFormed], [OptimisticLockField], [GCRecord]) VALUES (N'b5a4e9ff-47c4-4461-9534-6c9a01d230b8', N'Площадка 1', 53000, N'a1f94254-f2ab-4e6d-8fb2-0950ab69b408', N'26136dd3-1333-40ab-bdf1-653a6c6c50b1', 1, 5, NULL)
INSERT [dbo].[Platform] ([Oid], [Name], [CargoWeight], [IDCargo], [IDWarehouse], [IsFormed], [OptimisticLockField], [GCRecord]) VALUES (N'd78f3504-c365-4620-abc1-da3a3c60cd2e', N'Площадка 2', 15000, N'a8c9c8e3-d91d-4068-959b-b317d1c21b85', N'f9c7792c-5b94-4e4b-9fef-abeb740c6d90', 1, 5, NULL)
GO
INSERT [dbo].[Warehouse] ([Oid], [Name], [OptimisticLockField], [GCRecord]) VALUES (N'26136dd3-1333-40ab-bdf1-653a6c6c50b1', N'Склад 1', 3, NULL)
INSERT [dbo].[Warehouse] ([Oid], [Name], [OptimisticLockField], [GCRecord]) VALUES (N'f9c7792c-5b94-4e4b-9fef-abeb740c6d90', N'Склад 2', 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[XPObjectType] ON 

INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (1, N'DevExpress.Persistent.BaseImpl.PermissionPolicy.PermissionPolicyRole', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (2, N'Sklad.Module.BusinessObjects.ApplicationUser', N'Sklad.Module')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (3, N'DevExpress.Persistent.BaseImpl.PermissionPolicy.PermissionPolicyTypePermissionObject', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (4, N'DevExpress.Persistent.BaseImpl.PermissionPolicy.PermissionPolicyObjectPermissionsObject', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (5, N'DevExpress.Persistent.BaseImpl.PermissionPolicy.PermissionPolicyNavigationPermissionObject', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (6, N'DevExpress.Persistent.BaseImpl.PermissionPolicy.PermissionPolicyMemberPermissionsObject', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (7, N'Sklad.Module.BusinessObjects.ApplicationUserLoginInfo', N'Sklad.Module')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (8, N'PermissionPolicyUserUsers_PermissionPolicyRoleRoles', N'')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (9, N'Sklad.Module.BusinessObjects.Cargo', N'Sklad.Module')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (10, N'DevExpress.Persistent.BaseImpl.AuditDataItemPersistent', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (11, N'DevExpress.Persistent.BaseImpl.AuditedObjectWeakReference', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (12, N'Sklad.Module.BusinessObjects.Warehouse', N'Sklad.Module')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (13, N'Sklad.Module.BusinessObjects.Platform', N'Sklad.Module')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (14, N'DevExpress.Xpo.XPWeakReference', N'DevExpress.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (15, N'Sklad.Module.BusinessObjects.Picket', N'Sklad.Module')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (16, N'DevExpress.Persistent.BaseImpl.ModelDifference', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
INSERT [dbo].[XPObjectType] ([OID], [TypeName], [AssemblyName]) VALUES (17, N'DevExpress.Persistent.BaseImpl.ModelDifferenceAspect', N'DevExpress.Persistent.BaseImpl.Xpo.v21.2')
SET IDENTITY_INSERT [dbo].[XPObjectType] OFF
GO
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'34e1b4f3-4f90-43e0-a41c-02c658e6c79a', 13, N'[Guid]''710c0229-2e60-4a91-99eb-4f276ae86855''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'7b0550a7-d812-46e8-992d-0768cf5ef4fb', 15, N'[Guid]''e9ae0897-4439-4082-8dee-56e1b5d4d066''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'fa6d224f-d7de-4f14-926a-0ac750edaff9', 9, N'[Guid]''a1f94254-f2ab-4e6d-8fb2-0950ab69b408''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'ec284267-0f6d-4bce-97ac-141ca302c999', 12, N'[Guid]''f9c7792c-5b94-4e4b-9fef-abeb740c6d90''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'c9445360-d5de-4305-9bdf-18740e705257', 15, N'[Guid]''cf21754c-32a8-4acf-9a71-e92b31ff25fc''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'3b50e9f4-71d2-40e3-817e-1955d89b2607', 9, N'[Guid]''a8c9c8e3-d91d-4068-959b-b317d1c21b85''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'6267fc50-2446-4cad-b8ae-19bd4459198c', 12, N'[Guid]''26136dd3-1333-40ab-bdf1-653a6c6c50b1''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'5df63d4e-0250-445c-ae06-1dd33492490c', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'4fd72d29-5785-4e03-a6c4-1ee724fa1607', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'2bc4bc97-02c3-427a-bc1b-20bb95ebac63', 12, N'[Guid]''f9c7792c-5b94-4e4b-9fef-abeb740c6d90''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'91791e2b-9059-4988-b757-211dbbcad18c', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'95b6cb05-d822-400a-aadb-22b882d6663f', 9, N'[Guid]''a1f94254-f2ab-4e6d-8fb2-0950ab69b408''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'1b56a90a-d82c-45fb-a57f-2b7f4a63b482', 17, N'[Guid]''2968a482-f98a-4c19-80ad-6e6cf8002d4b''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'31b450d4-f4dc-412f-a8df-3084c13e2574', 15, N'[Guid]''9893772a-0db0-4a79-b658-f4db38579369''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'dd64bdf7-595f-4065-a8f6-38e38fcb23ce', 17, N'[Guid]''2968a482-f98a-4c19-80ad-6e6cf8002d4b''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'4fd7cbf6-1dfb-468a-a542-39f70d8f6a6d', 13, N'[Guid]''710c0229-2e60-4a91-99eb-4f276ae86855''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'47492026-4dd3-4278-b700-3d6a46f22b3c', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'c3436a33-7ef1-47f4-b867-426ed1e323d4', 15, N'[Guid]''2d999fbf-7891-48cd-af9f-3ac6c9a486b3''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'7dbbdbf7-a799-4ee6-a096-4379db718da4', 12, N'[Guid]''26136dd3-1333-40ab-bdf1-653a6c6c50b1''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'e248a618-9f26-4f22-8276-56f34ab2ecd1', 9, N'[Guid]''a8c9c8e3-d91d-4068-959b-b317d1c21b85''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'ec7d9ff5-5ab3-4db3-93d8-59db7ab83eb0', 13, N'[Guid]''ce3ca0db-8425-4539-b733-369fbe613a85''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'32457681-b18a-4502-9cef-6153fee92578', 15, N'[Guid]''09133160-54a2-4ade-94aa-9e25bf6c3c13''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'f87f85a5-d035-4bc7-b588-694f2f691205', 13, N'[Guid]''d78f3504-c365-4620-abc1-da3a3c60cd2e''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'5235b087-0865-4bca-ad1c-6ba97a833060', 15, N'[Guid]''9eafbc35-8b6d-41eb-aa2c-3c484376e001''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'67b377a1-3545-47f5-899d-6beab3910bae', 13, N'[Guid]''710c0229-2e60-4a91-99eb-4f276ae86855''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'2e846028-cfff-49f5-9550-6d86c3b8ca5a', 15, N'[Guid]''d0a509c6-0067-41fb-9258-2c70955b7af7''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'2a7845e7-4e7d-4cf3-9efc-705ad9e2f404', 13, N'[Guid]''d78f3504-c365-4620-abc1-da3a3c60cd2e''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'6218b831-0101-485e-8d52-7442ccac6237', 12, N'[Guid]''26136dd3-1333-40ab-bdf1-653a6c6c50b1''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'1ea15db3-3698-4b15-ab15-7677884becaf', 15, N'[Guid]''2d999fbf-7891-48cd-af9f-3ac6c9a486b3''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'4fc67a7e-40be-4daf-b7a4-7823691b9d08', 15, N'[Guid]''09133160-54a2-4ade-94aa-9e25bf6c3c13''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'bc2232a1-984e-4184-a6e8-79e175ee8306', 15, N'[Guid]''cf21754c-32a8-4acf-9a71-e92b31ff25fc''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'916da55e-a5f3-4d2a-a1bc-7a2227559742', 15, N'[Guid]''d0a509c6-0067-41fb-9258-2c70955b7af7''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'289e77d9-4806-42bd-b913-7ce6c3ee1e38', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'e7d0a351-ebd8-4135-bb3c-7d25b6192d53', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'3f4e5826-b71e-4650-81f6-848dfd64e8f5', 15, N'[Guid]''69d98d47-59d2-4798-945e-6eee50b1771c''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'ab2bd656-de70-48ae-87e4-8a44dd8e3d76', 15, N'[Guid]''8263a12e-005e-4007-8363-a600e2b9ce9b''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'448d6e74-a9bd-4a3b-90c9-8d603add9385', 9, N'[Guid]''9951551f-3c62-4b3c-b703-3fec0658f7bd''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'4a90f6fb-d53d-46c4-bb0e-8dc849cf15fa', 17, N'[Guid]''2968a482-f98a-4c19-80ad-6e6cf8002d4b''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'64290361-3546-4961-b183-8e8845b1c736', 13, N'[Guid]''b5a4e9ff-47c4-4461-9534-6c9a01d230b8''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'd90c0807-d2d2-4ac6-a79e-92a2077ebe3e', 9, N'[Guid]''389e9bda-25d7-406a-a0b1-d7217dab18d7''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'373ac872-99d8-4073-b7fd-934beade86e4', 13, N'[Guid]''ce3ca0db-8425-4539-b733-369fbe613a85''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'2abd5b3d-41fb-48c8-a861-9425f9033e9d', 15, N'[Guid]''9eafbc35-8b6d-41eb-aa2c-3c484376e001''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'7dc91b96-fe20-4ec3-9a74-a68de2754d6c', 13, N'[Guid]''ce3ca0db-8425-4539-b733-369fbe613a85''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'103ed1e5-77fd-416f-a277-a9f0d7ceec5e', 9, N'[Guid]''389e9bda-25d7-406a-a0b1-d7217dab18d7''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'8cdb12ba-4c43-4351-bc03-b4dde29ac21b', 13, N'[Guid]''710c0229-2e60-4a91-99eb-4f276ae86855''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'e162c771-2349-41d5-a28a-bfb2e0a70a96', 13, N'[Guid]''710c0229-2e60-4a91-99eb-4f276ae86855''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'cbf8b30f-400c-47c6-a0f4-c061be6aaebd', 15, N'[Guid]''6369dd05-7d9b-4fa9-bcc7-8d0759c6427f''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'405d633c-cd89-4051-a195-ca5cbed034c3', 13, N'[Guid]''ce3ca0db-8425-4539-b733-369fbe613a85''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'ae338c16-fa5e-4c4d-8cfb-cc3daa02f903', 13, N'[Guid]''d78f3504-c365-4620-abc1-da3a3c60cd2e''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'2925ad6a-35dc-4828-98d5-cfdaf1196a68', 16, N'[Guid]''181fd728-61d3-4dbb-924b-198836b83d3c''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'cf2ddef4-c5b2-4ad8-88af-d77927d3a232', 15, N'[Guid]''69d98d47-59d2-4798-945e-6eee50b1771c''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'71a35318-5aed-4e5a-949a-dd2971e9ccf7', 15, N'[Guid]''e9ae0897-4439-4082-8dee-56e1b5d4d066''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'0f77a2ed-d1b9-4c1c-ab94-e9efa057e54a', 15, N'[Guid]''9893772a-0db0-4a79-b658-f4db38579369''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'30775b12-2b74-4c57-a7d2-eb78a133cb4d', 16, N'[Guid]''181fd728-61d3-4dbb-924b-198836b83d3c''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'bf7456a9-f884-4690-b00d-ecc478048398', 15, N'[Guid]''6369dd05-7d9b-4fa9-bcc7-8d0759c6427f''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'd2a4519d-a5e8-474d-be49-ed550401d53e', 9, N'[Guid]''9951551f-3c62-4b3c-b703-3fec0658f7bd''', 0, NULL, 11)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'684fbda1-dec8-4841-b235-f06205b8a23f', 12, N'[Guid]''f9c7792c-5b94-4e4b-9fef-abeb740c6d90''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'5590f915-8107-4d86-8531-f27b67dd6e2a', 13, N'[Guid]''d78f3504-c365-4620-abc1-da3a3c60cd2e''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'6c742cee-0832-48d3-a085-f5e17136a035', 13, N'[Guid]''d78f3504-c365-4620-abc1-da3a3c60cd2e''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'3fec4820-9f7f-4d1c-bc42-f9ddeb7fe7a8', 15, N'[Guid]''8263a12e-005e-4007-8363-a600e2b9ce9b''', 0, NULL, 14)
INSERT [dbo].[XPWeakReference] ([Oid], [TargetType], [TargetKey], [OptimisticLockField], [GCRecord], [ObjectType]) VALUES (N'd6e23777-4894-4184-a8b7-ff5b0829c2ef', 13, N'[Guid]''d78f3504-c365-4620-abc1-da3a3c60cd2e''', 0, NULL, 14)
GO
ALTER TABLE [dbo].[AuditDataItemPersistent]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditDataItemPersistent_AuditedObject] FOREIGN KEY([AuditedObject])
REFERENCES [dbo].[AuditedObjectWeakReference] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[AuditDataItemPersistent] CHECK CONSTRAINT [FK_AuditDataItemPersistent_AuditedObject]
GO
ALTER TABLE [dbo].[AuditDataItemPersistent]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditDataItemPersistent_NewObject] FOREIGN KEY([NewObject])
REFERENCES [dbo].[XPWeakReference] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[AuditDataItemPersistent] CHECK CONSTRAINT [FK_AuditDataItemPersistent_NewObject]
GO
ALTER TABLE [dbo].[AuditDataItemPersistent]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditDataItemPersistent_OldObject] FOREIGN KEY([OldObject])
REFERENCES [dbo].[XPWeakReference] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[AuditDataItemPersistent] CHECK CONSTRAINT [FK_AuditDataItemPersistent_OldObject]
GO
ALTER TABLE [dbo].[AuditedObjectWeakReference]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditedObjectWeakReference_Oid] FOREIGN KEY([Oid])
REFERENCES [dbo].[XPWeakReference] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[AuditedObjectWeakReference] CHECK CONSTRAINT [FK_AuditedObjectWeakReference_Oid]
GO
ALTER TABLE [dbo].[ModelDifferenceAspect]  WITH NOCHECK ADD  CONSTRAINT [FK_ModelDifferenceAspect_Owner] FOREIGN KEY([Owner])
REFERENCES [dbo].[ModelDifference] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[ModelDifferenceAspect] CHECK CONSTRAINT [FK_ModelDifferenceAspect_Owner]
GO
ALTER TABLE [dbo].[PermissionPolicyActionPermissionObject]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyActionPermissionObject_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[PermissionPolicyRole] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyActionPermissionObject] CHECK CONSTRAINT [FK_PermissionPolicyActionPermissionObject_Role]
GO
ALTER TABLE [dbo].[PermissionPolicyMemberPermissionsObject]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyMemberPermissionsObject_TypePermissionObject] FOREIGN KEY([TypePermissionObject])
REFERENCES [dbo].[PermissionPolicyTypePermissionsObject] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyMemberPermissionsObject] CHECK CONSTRAINT [FK_PermissionPolicyMemberPermissionsObject_TypePermissionObject]
GO
ALTER TABLE [dbo].[PermissionPolicyNavigationPermissionsObject]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyNavigationPermissionsObject_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[PermissionPolicyRole] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyNavigationPermissionsObject] CHECK CONSTRAINT [FK_PermissionPolicyNavigationPermissionsObject_Role]
GO
ALTER TABLE [dbo].[PermissionPolicyObjectPermissionsObject]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyObjectPermissionsObject_TypePermissionObject] FOREIGN KEY([TypePermissionObject])
REFERENCES [dbo].[PermissionPolicyTypePermissionsObject] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyObjectPermissionsObject] CHECK CONSTRAINT [FK_PermissionPolicyObjectPermissionsObject_TypePermissionObject]
GO
ALTER TABLE [dbo].[PermissionPolicyRole]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyRole_ObjectType] FOREIGN KEY([ObjectType])
REFERENCES [dbo].[XPObjectType] ([OID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyRole] CHECK CONSTRAINT [FK_PermissionPolicyRole_ObjectType]
GO
ALTER TABLE [dbo].[PermissionPolicyTypePermissionsObject]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyTypePermissionsObject_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[PermissionPolicyRole] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyTypePermissionsObject] CHECK CONSTRAINT [FK_PermissionPolicyTypePermissionsObject_Role]
GO
ALTER TABLE [dbo].[PermissionPolicyUser]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyUser_ObjectType] FOREIGN KEY([ObjectType])
REFERENCES [dbo].[XPObjectType] ([OID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyUser] CHECK CONSTRAINT [FK_PermissionPolicyUser_ObjectType]
GO
ALTER TABLE [dbo].[PermissionPolicyUserLoginInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyUserLoginInfo_User] FOREIGN KEY([User])
REFERENCES [dbo].[PermissionPolicyUser] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyUserLoginInfo] CHECK CONSTRAINT [FK_PermissionPolicyUserLoginInfo_User]
GO
ALTER TABLE [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyUserUsers_PermissionPolicyRoleRoles_Roles] FOREIGN KEY([Roles])
REFERENCES [dbo].[PermissionPolicyRole] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles] CHECK CONSTRAINT [FK_PermissionPolicyUserUsers_PermissionPolicyRoleRoles_Roles]
GO
ALTER TABLE [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_PermissionPolicyUserUsers_PermissionPolicyRoleRoles_Users] FOREIGN KEY([Users])
REFERENCES [dbo].[PermissionPolicyUser] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PermissionPolicyUserUsers_PermissionPolicyRoleRoles] CHECK CONSTRAINT [FK_PermissionPolicyUserUsers_PermissionPolicyRoleRoles_Users]
GO
ALTER TABLE [dbo].[Picket]  WITH NOCHECK ADD  CONSTRAINT [FK_Picket_IDplatform] FOREIGN KEY([IDplatform])
REFERENCES [dbo].[Platform] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Picket] CHECK CONSTRAINT [FK_Picket_IDplatform]
GO
ALTER TABLE [dbo].[Platform]  WITH NOCHECK ADD  CONSTRAINT [FK_Platform_IDCargo] FOREIGN KEY([IDCargo])
REFERENCES [dbo].[Cargo] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Platform] CHECK CONSTRAINT [FK_Platform_IDCargo]
GO
ALTER TABLE [dbo].[Platform]  WITH NOCHECK ADD  CONSTRAINT [FK_Platform_IDWarehouse] FOREIGN KEY([IDWarehouse])
REFERENCES [dbo].[Warehouse] ([Oid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Platform] CHECK CONSTRAINT [FK_Platform_IDWarehouse]
GO
ALTER TABLE [dbo].[XPWeakReference]  WITH NOCHECK ADD  CONSTRAINT [FK_XPWeakReference_ObjectType] FOREIGN KEY([ObjectType])
REFERENCES [dbo].[XPObjectType] ([OID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[XPWeakReference] CHECK CONSTRAINT [FK_XPWeakReference_ObjectType]
GO
ALTER TABLE [dbo].[XPWeakReference]  WITH NOCHECK ADD  CONSTRAINT [FK_XPWeakReference_TargetType] FOREIGN KEY([TargetType])
REFERENCES [dbo].[XPObjectType] ([OID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[XPWeakReference] CHECK CONSTRAINT [FK_XPWeakReference_TargetType]
GO
