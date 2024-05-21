CREATE TABLE [dbo].[Pedido](
	[Id] [int] NOT NULL,
	[IdCliente] [nvarchar](20) NOT NULL,
	[Numero] [nvarchar](10) NOT NULL,
	[DataPedido] [datetime] NOT NULL,
	[ValorPedido] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([Id])
GO

ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO