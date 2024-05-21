USE [BRdata01]
GO

create TRIGGER tg_BloqueioExclusaoUF
   ON  dbo.Estado
   FOR DELETE
AS 
BEGIN
	
	declare @IsDeletado bit
	
	SET @IsDeletado = 0

	--VERIFICA SE ESTÁ DELETANDO UMA MOVIMENTAÇÃO
	if ((select count(*) from deleted) <> 0)
		SET @IsDeletado = 1	


	IF (@IsDeletado = 1)
	BEGIN
	RAISERROR ('Não é possível EXCLUIR um registro da Tabela Estado.', -- Message text.
               16, -- Severity.
               1 -- State.
               );		
		ROLLBACK TRANSACTION	
	END
END