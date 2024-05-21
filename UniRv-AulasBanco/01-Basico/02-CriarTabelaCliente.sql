
CREATE TABLE [dbo].[Cliente](
	[Id] [nvarchar](20) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[DataNascimento] [datetime] NULL,
	[RG] [nvarchar](15) NULL,
	[Cidade] [nvarchar](100) NULL,
	[UF] [nvarchar](2) NULL,
	CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED (
		[Id] ASC
	)
) ON [PRIMARY]
GO