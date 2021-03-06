
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hareketler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Kitap] [tinyint] NULL,
	[Uye] [tinyint] NULL,
	[Personel] [tinyint] NULL,
	[AlisTarih] [smalldatetime] NULL,
	[IadeTarih] [smalldatetime] NULL,
	[UyeGetirdigiTarih] [smalldatetime] NULL,
	[IslemDurum] [bit] NULL,
 CONSTRAINT [PK_Hareketler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 18.12.2021 18:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Kategori] [varchar](50) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 18.12.2021 18:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Kitap] [varchar](50) NULL,
	[Kategori] [tinyint] NULL,
	[Yazar] [tinyint] NULL,
	[Basim] [char](4) NULL,
	[YayinEvi] [varchar](50) NULL,
	[Sayfa] [varchar](4) NULL,
	[Durum] [bit] NULL,
	[KitapResim] [varchar](100) NULL,
 CONSTRAINT [PK_Kitaplar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 18.12.2021 18:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Personel] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 18.12.2021 18:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Uye] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[Kullanici] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
	[Fotograf] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Okul] [varchar](100) NULL,
 CONSTRAINT [PK_Uyeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazarlar]    Script Date: 18.12.2021 18:49:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yazarlar](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Yazar] [varchar](50) NULL,
	[Detay] [varchar](500) NULL,
 CONSTRAINT [PK_Yazarlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hareketler] ON 

INSERT [dbo].[Hareketler] ([ID], [Kitap], [Uye], [Personel], [AlisTarih], [IadeTarih], [UyeGetirdigiTarih], [IslemDurum]) VALUES (3, 7, 2, 1, CAST(N'2021-11-02T00:00:00' AS SmallDateTime), NULL, CAST(N'2021-12-18T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[Hareketler] ([ID], [Kitap], [Uye], [Personel], [AlisTarih], [IadeTarih], [UyeGetirdigiTarih], [IslemDurum]) VALUES (4, 2, 13, 4, CAST(N'2021-11-02T00:00:00' AS SmallDateTime), NULL, NULL, 0)
INSERT [dbo].[Hareketler] ([ID], [Kitap], [Uye], [Personel], [AlisTarih], [IadeTarih], [UyeGetirdigiTarih], [IslemDurum]) VALUES (5, 1, 2, 2, CAST(N'2021-11-02T00:00:00' AS SmallDateTime), NULL, NULL, 0)
INSERT [dbo].[Hareketler] ([ID], [Kitap], [Uye], [Personel], [AlisTarih], [IadeTarih], [UyeGetirdigiTarih], [IslemDurum]) VALUES (7, 7, 15, 4, CAST(N'2021-12-18T00:00:00' AS SmallDateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Hareketler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (1, N'Macera', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (2, N'Bilim Kurgu', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (3, N'İletişim', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (4, N'Şiir', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (5, N'Tiyatro', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (6, N'Çocuk Kitapları', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (7, N'Rus Klasikleri', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (8, N'Hikaye', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (9, N'Komedi', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (10, N'Kişisel Gelişim', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (11, N'Biyografi', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (12, N'Akademik', 1)
INSERT [dbo].[Kategoriler] ([ID], [Kategori], [Durum]) VALUES (15, N'Dergi', 1)
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitaplar] ON 

INSERT [dbo].[Kitaplar] ([ID], [Kitap], [Kategori], [Yazar], [Basim], [YayinEvi], [Sayfa], [Durum], [KitapResim]) VALUES (1, N'Tuna Kılavuzu', 1, 1, N'2015', N'Yıldız', N'250', 1, N'/GulenSuratTemplate/img/Kitap1.jpg')
INSERT [dbo].[Kitaplar] ([ID], [Kitap], [Kategori], [Yazar], [Basim], [YayinEvi], [Sayfa], [Durum], [KitapResim]) VALUES (2, N'İki Ekim Hikayesi', 1, 2, N'2018', N'Güneş', N'350', 0, N'/GulenSuratTemplate/img/Kitap2.jpg')
INSERT [dbo].[Kitaplar] ([ID], [Kitap], [Kategori], [Yazar], [Basim], [YayinEvi], [Sayfa], [Durum], [KitapResim]) VALUES (3, N'Kaşağı', 8, 4, N'2012', N'Yıldız', N'65', 1, N'/GulenSuratTemplate/img/Kitap3.jpg')
INSERT [dbo].[Kitaplar] ([ID], [Kitap], [Kategori], [Yazar], [Basim], [YayinEvi], [Sayfa], [Durum], [KitapResim]) VALUES (4, N'80 Günde Devri Alem', 1, 1, N'1980', N'Sayfatik', N'500', 1, N'/GulenSuratTemplate/img/Kitap5.png')
INSERT [dbo].[Kitaplar] ([ID], [Kitap], [Kategori], [Yazar], [Basim], [YayinEvi], [Sayfa], [Durum], [KitapResim]) VALUES (7, N'deneme', 3, 4, N'1980', N'1', N'500', 0, N'/GulenSuratTemplate/img/Kitap4.jpg')
INSERT [dbo].[Kitaplar] ([ID], [Kitap], [Kategori], [Yazar], [Basim], [YayinEvi], [Sayfa], [Durum], [KitapResim]) VALUES (8, N'70 Günde Devri Alem', 15, 2, N'1993', N'Öykü', N'500', 0, N'/GulenSuratTemplate/img/Kitap.jpg')
SET IDENTITY_INSERT [dbo].[Kitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([ID], [Personel], [Sifre]) VALUES (1, N'Semih Acar', N'324')
INSERT [dbo].[Personeller] ([ID], [Personel], [Sifre]) VALUES (2, N'Sevgi Güler', N'524')
INSERT [dbo].[Personeller] ([ID], [Personel], [Sifre]) VALUES (3, N'Fatoş Bilir', N'564')
INSERT [dbo].[Personeller] ([ID], [Personel], [Sifre]) VALUES (4, N'Mehmet Kara', N'123')
INSERT [dbo].[Personeller] ([ID], [Personel], [Sifre]) VALUES (5, N'Doğuer Emili', N'423')
SET IDENTITY_INSERT [dbo].[Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[Uyeler] ON 

INSERT [dbo].[Uyeler] ([ID], [Uye], [Mail], [Kullanici], [Sifre], [Fotograf], [Telefon], [Okul]) VALUES (1, N'Hakan', N'hakan3@gmail.com', N'hkn3', N'12345', N'test', N'05363217219', N'İstanbul2')
INSERT [dbo].[Uyeler] ([ID], [Uye], [Mail], [Kullanici], [Sifre], [Fotograf], [Telefon], [Okul]) VALUES (2, N'Hakan', N'hakan@gmail.com', N'hkn', N'12345', N'deneme', N'05653432312', N'İstanbul')
INSERT [dbo].[Uyeler] ([ID], [Uye], [Mail], [Kullanici], [Sifre], [Fotograf], [Telefon], [Okul]) VALUES (12, N'Öykü', N'oykubstn@gmail.com', N'oykubstn', N'321', N'test2', N'05319319808', N'Balıkesir')
INSERT [dbo].[Uyeler] ([ID], [Uye], [Mail], [Kullanici], [Sifre], [Fotograf], [Telefon], [Okul]) VALUES (13, N'Sevgi', N'sevgiysr@gmail.com', N'sevgiysr', N'333', N'test3', N'23413412342', N'Samsun')
INSERT [dbo].[Uyeler] ([ID], [Uye], [Mail], [Kullanici], [Sifre], [Fotograf], [Telefon], [Okul]) VALUES (15, N'Emre', N'emreciftci@gmail.com', N'emre', N'3211', N'teest', N'42213453214', N'tesst')
SET IDENTITY_INSERT [dbo].[Uyeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Yazarlar] ON 

INSERT [dbo].[Yazarlar] ([ID], [Yazar], [Detay]) VALUES (1, N'Jules Verne', N'İngiliz')
INSERT [dbo].[Yazarlar] ([ID], [Yazar], [Detay]) VALUES (2, N'Charles Dickens', N'Alman')
INSERT [dbo].[Yazarlar] ([ID], [Yazar], [Detay]) VALUES (3, N'Halide Edip Adıvar', N'Türk')
INSERT [dbo].[Yazarlar] ([ID], [Yazar], [Detay]) VALUES (4, N'Ömer Seyfettin', N'Türk')
INSERT [dbo].[Yazarlar] ([ID], [Yazar], [Detay]) VALUES (5, N'Namık Kemal', N'Türk')
INSERT [dbo].[Yazarlar] ([ID], [Yazar], [Detay]) VALUES (18, N'Test', N'Test')
SET IDENTITY_INSERT [dbo].[Yazarlar] OFF
GO
ALTER TABLE [dbo].[Kitaplar] ADD  CONSTRAINT [DF_Kitaplar_Durum]  DEFAULT ((1)) FOR [Durum]
GO
ALTER TABLE [dbo].[Hareketler]  WITH CHECK ADD  CONSTRAINT [FK_Hareketler_Kitaplar] FOREIGN KEY([Kitap])
REFERENCES [dbo].[Kitaplar] ([ID])
GO
ALTER TABLE [dbo].[Hareketler] CHECK CONSTRAINT [FK_Hareketler_Kitaplar]
GO
ALTER TABLE [dbo].[Hareketler]  WITH CHECK ADD  CONSTRAINT [FK_Hareketler_Personeller] FOREIGN KEY([Personel])
REFERENCES [dbo].[Personeller] ([ID])
GO
ALTER TABLE [dbo].[Hareketler] CHECK CONSTRAINT [FK_Hareketler_Personeller]
GO
ALTER TABLE [dbo].[Hareketler]  WITH CHECK ADD  CONSTRAINT [FK_Hareketler_Uyeler] FOREIGN KEY([Uye])
REFERENCES [dbo].[Uyeler] ([ID])
GO
ALTER TABLE [dbo].[Hareketler] CHECK CONSTRAINT [FK_Hareketler_Uyeler]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_Kitaplar_Kategoriler] FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategoriler] ([ID])
GO
ALTER TABLE [dbo].[Kitaplar] CHECK CONSTRAINT [FK_Kitaplar_Kategoriler]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_Kitaplar_Yazarlar] FOREIGN KEY([Yazar])
REFERENCES [dbo].[Yazarlar] ([ID])
GO
ALTER TABLE [dbo].[Kitaplar] CHECK CONSTRAINT [FK_Kitaplar_Yazarlar]
GO
USE [master]
GO
ALTER DATABASE [MVCKutuphane] SET  READ_WRITE 
GO
