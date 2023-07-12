USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_SELECT_LIST]    Script Date: 2023-07-12 ���� 8:58:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-------------------------------------------------------------------------------------------
--
-- ���ν����� : UP_JHBAE_BOARD_SELECT_LIST
-- �ۼ���     : ������
-- �ۼ���     : 2023-07-10
-- ����       : SELECT ���
-- ����       : 
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


