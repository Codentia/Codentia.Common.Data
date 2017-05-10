USE CECommonData
GO

CREATE PROCEDURE dbo.TestProc001
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.TestProc002
	@Param1 INT
AS
BEGIN
	SET NOCOUNT ON
END
GO

CREATE PROCEDURE dbo.TestProc003
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT 1, 2, 3
END
GO

CREATE PROCEDURE dbo.TestProc004
	@Param2 INT
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT @Param2, @Param2 * 2, @Param2 * 3
END
GO

CREATE PROCEDURE dbo.TestProc005
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT 1, 2, 3

	SELECT 1, 2, 3
END
GO

CREATE PROCEDURE dbo.TestProc006
	@Param3 INT
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT @Param3, @Param3 * 2, @Param3 * 3

	SELECT @Param3, @Param3 * 2, @Param3 * 3
END
GO

CREATE TABLE dbo.Table001
(
	Column1		INT NOT NULL DEFAULT 0
)
GO

INSERT INTO dbo.Table001 (Column1) VALUES (1)
GO

CREATE PROCEDURE dbo.TestProc007
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE dbo.Table001 SET Column1 = 10
END
GO

CREATE PROCEDURE dbo.TestProc008
	@int16 INT,
	@int32 INT,
	@int64 INT,
	@guid UNIQUEIDENTIFIER,
	@stringfixed NVARCHAR(100),
	@string NVARCHAR(MAX),
	@boolean BIT,
	@datetime DATETIME,
	@datetime2 DATETIME2,
	@decimal DECIMAL(20,10),
	@xml XML,
	@money MONEY,
	@byte TINYINT
AS
BEGIN
	SET NOCOUNT ON
	-- do nothing at present
END
GO

CREATE PROCEDURE dbo.TestProc010
	@param1 BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON

	SET @param1 = 1	
END
GO

CREATE PROCEDURE dbo.TestProc_046
	@param1 NVARCHAR(10) OUTPUT
AS
BEGIN
	SET NOCOUNT ON
	
	SET @param1 = '0123456789'
END
GO

CREATE PROCEDURE dbo.TestProc_050
AS
BEGIN
	SELECT 'TestProc_050'
END
GO

CREATE PROCEDURE dbo.TestProc_051
AS
BEGIN
	SELECT 1
END
GO

CREATE PROCEDURE dbo.TestProc_052
AS
BEGIN
	SELECT 42
END
GO