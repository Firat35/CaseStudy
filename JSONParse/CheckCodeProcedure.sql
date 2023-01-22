Create Procedure [dbo].[check_code]
@Code varchar(max),
@IsValid bit out
as
Begin
  If @Code IS NULL
    Set @IsValid = 0;
  Else If  LEN(@Code) = 8
  Begin
	  Declare @i int = 1;
	  Set @IsValid = 1;
	  While @i<=8 
	  Begin
		If  CharIndex(Substring(@code, @i , 1),'ACDEFGHKLMNPRTXYZ234579' COLLATE Latin1_General_CS_AS) = 0
		Begin
			Set @IsValid = 0;
			Break;
		End
		Set @i += 1;
	  End
  End	
  Else
	Set @IsValid = 0;
End

--declare @result bit = null;
--declare @text varchar(max) = 'A2DE3GHa';
--exec [dbo].[check_code] @Code = @text  , @IsValid = @result Output;
--select @result as Result;