USE [JINI_EDU]
GO

/****** Object:  StoredProcedure [dbo].[UP_JHBAE_BOARD_SELECT_ONE]    Script Date: 2023-07-12 오전 8:59:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-------------------------------------------------------------------------------------------
--
-- 프로시저명 : UP_JHBAE_BOARD_SELECT
-- 작성자     : 배주형
-- 작성일     : 2023-07-10
-- 설명       : SELECT 단건
-- 예문       : 
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


