USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_MERGE]    Script Date: 2023-07-12 오전 8:59:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-------------------------------------------------------------------------------------------
--
-- 프로시저명 : UP_JHBAE_BOARD_MERGE
-- 작성자     : 배주형
-- 작성일     : 2023-07-10
-- 설명       : MERGE 프로시저
-- 예문       : 
--
-------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UP_JHBAE_BOARD_MERGE] (
		@NO			INT,
		@TITLE		NVARCHAR(100),
		@CONTENT	NVARCHAR(2000),
		@REG_ID		VARCHAR(32)
)
AS
SET NOCOUNT ON;

MERGE INTO	TB_JHBAE_BOARD T

USING		(SELECT 
					@NO AS [NO],
					@TITLE AS [TITLE],
					@CONTENT AS [CONTENT], 
					@REG_ID AS [REG_ID]
			) A
	ON	T.NO = A.NO

WHEN MATCHED THEN
	UPDATE
	SET		T.NO = A.NO,
			T.TITLE = A.TITLE,
			T.CONTENT = A.CONTENT,
			T.UPD_ID = A.REG_ID,
			T.UPD_DT = GETDATE()

WHEN NOT MATCHED THEN

	INSERT
	(
		NO,
		TITLE,
		CONTENT,
		REG_ID,
		REG_DT,
		UPD_ID,
		UPD_DT,
		USE_YN
	)
	VALUES
	(	
		A.NO,
		A.TITLE,
		CONTENT,
		A.REG_ID,
		GETDATE(),
		A.REG_ID,
		GETDATE(),
		'Y'
	)
;
GO


