USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_USE_YN]    Script Date: 2023-07-12 ���� 8:59:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-------------------------------------------------------------------------------------------
--
-- ���ν����� : UP_JHBAE_BOARD_UPDATE_USE_N
-- �ۼ���     : ������
-- �ۼ���     : 2023-07-10
-- ����       : USE_YN ���ν���
-- ����       : 
--
-------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[UP_JHBAE_BOARD_USE_YN] (
		@NO		INT
		)
AS
SET NOCOUNT ON;


UPDATE TB_JHBAE_BOARD
SET USE_YN = 'N'
WHERE NO = @NO;
;
GO


