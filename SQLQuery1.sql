USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_SELECT_LIST]    Script Date: 2023-07-12 오전 8:58:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-------------------------------------------------------------------------------------------
--
-- 프로시저명 : UP_JHBAE_BOARD_SELECT_LIST
-- 작성자     : 배주형
-- 작성일     : 2023-07-10
-- 설명       : SELECT 목록
-- 예문       : 
--
-------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UP_JHBAE_BOARD_SELECT_LIST] (
		@TITLE		NVARCHAR(100)
		)  
AS
SET NOCOUNT ON;

SELECT		T.*
FROM		TB_JHBAE_BOARD T
WHERE		T.TITLE LIKE '%' + @TITLE + '%'
	AND		T.USE_YN = 'Y'
	ORDER BY T.REG_DT DESC
;
GO


