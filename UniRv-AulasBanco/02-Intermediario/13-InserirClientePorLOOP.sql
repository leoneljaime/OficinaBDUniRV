CREATE TABLE Cliente1 (ID INTEGER PRIMARY KEY, nome NVARCHAR(50), UF NVARCHAR(2));


DECLARE @primeiro AS INT = 1
DECLARE @ultimo AS INT = 300

WHILE(@primeiro <= @ultimo)
BEGIN
    INSERT INTO Cliente1 VALUES(@primeiro,'Cliente'+ CONVERT(NVARCHAR(100),@primeiro),'GO' )
    SET @primeiro += 1
END

select * from Cliente1

--Mostrar Drop Table 
--Recriar tabela Cliente1
