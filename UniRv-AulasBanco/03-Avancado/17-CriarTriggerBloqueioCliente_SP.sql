USE [BRdata01]
GO

CREATE TRIGGER [dbo].[tg_BloqueioClienteSP] 
   ON  [dbo].[Cliente]
   FOR  INSERT, UPDATE 
AS  
BEGIN 

	DECLARE @UF NVARCHAR(2);	 
 
	SELECT @UF = UF FROM INSERTED   
 
 
	IF @UF = 'SP'
	BEGIN 
		RAISERROR ('Cliente SP não permitido!', -- Message text. 
				   16, -- Severity. 
				   1 -- State. 
				   );		 
			ROLLBACK TRANSACTION	 
	END 
END 
GO

ALTER TABLE [dbo].[Cliente] ENABLE TRIGGER [tg_BloqueioClienteSP]
GO


