USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_SELECT_ONE]    Script Date: 2023-07-12 ���� 8:59:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-------------------------------------------------------------------------------------------
--
-- ���ν����� : UP_JHBAE_BOARD_SELECT
-- �ۼ���     : ������
-- �ۼ���     : 2023-07-10
-- ����       : SELECT �ܰ�
-- ����       : 
--
-------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UP_JHBAE_BOARD_SELECT_ONE] (
		@NO		INT
		)
AS
SET NOCOUNT ON;

SELECT		T.*
FROM		TB_JHBAE_BOARD T
WHERE		@NO = T.NO
;
GO


