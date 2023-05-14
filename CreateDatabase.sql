USE master;
GO

IF NOT EXISTS (
      SELECT name
      FROM sys.databases
      WHERE name = N'MvcMovieContext-May13'
      )
   CREATE DATABASE [MvcMovieContext-May13];
GO

IF SERVERPROPERTY('ProductVersion') > '12'
   ALTER DATABASE [MvcMovieContext-May13] SET QUERY_STORE = ON;
GO