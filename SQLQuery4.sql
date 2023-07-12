USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_USE_YN]    Script Date: 2023-07-12 오전 8:59:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-------------------------------------------------------------------------------------------
--
-- 프로시저명 : UP_JHBAE_BOARD_UPDATE_USE_N
-- 작성자     : 배주형
-- 작성일     : 2023-07-10
-- 설명       : USE_YN 프로시저
-- 예문       : 
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


