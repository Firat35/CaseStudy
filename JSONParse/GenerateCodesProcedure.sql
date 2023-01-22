
Create Procedure [dbo].[generate_codes]
As
Begin
  Declare @chars Varchar(23) = 'ACDEFGHKLMNPRTXYZ234579';
  Declare @randomString Varchar(8) = '';
 Declare @randomIndex Int = 0;
  Declare @i Int = 0 ;
  While @i < 8
  Begin
	Set @randomIndex = Floor((Rand()*23) + 1);
	Set @randomString += Substring(@chars, @randomIndex , 1);
	Set @i += 1;
  End
  Print @randomString;
End
--exec  [dbo].[generate_codes] 



