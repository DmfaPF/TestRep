/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [TimesheetEntryId]
      ,[JobId]
      ,[TEEntryStart]
      ,[TEEntryEnd]
      ,[Item]
      ,[TSEntryMinutes]
      ,[BillableMinutes]
      ,[InvoiceableMinutes]
      ,[EntryTypeId]
      ,[EntryName]
      ,[IsCS]
      ,[IsAttendance]
      --,[IsShiftDeductible]
      --,[IsFaerieCoinElegible]
      --,[IsLeave]
      ,[IsBillable]
      ,[CategoryC]
      ,[Ranking]
      ,[IsAWOL]
      ,[IsIdle]
      ,[IsBreak]
      ,[IsCheckEmail]
      ,[IsOther]
      ,[TimesheetId]
      ,[EmployeeDateKey]
      ,[EmployeeCode]
      ,[EmployeeID]
      ,[CoinIncrease]
      ,[Multiplier]
      ,[Band]
      ,[FormatWeight]
      ,[RoleWeight]
      ,[TECreatedBy]
      ,[TECreatedDate]
      ,[TEModifiedDate]
      ,[TEModifiedBy]
      ,[TEHash]
      ,[Date]
      ,[RoleOTFWeight]
  FROM [WS3_PROD].[reporting].[FCTimesheetEntry]
  where EmployeeCode = 'JHS'
  and JobId = 1360750
  order by TEEntryStart