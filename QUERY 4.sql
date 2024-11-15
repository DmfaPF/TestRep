use [WS3_PROD]
go
SELECT TOP (1000) 
	tse.[ID]
      --,tse.[CreatedDate]
      ,tse.[CreatedBy]
      ,tse.[TimesheetId]
      ,tse.[JobId]
      ,tse.[StartTime]
      ,tse.[EndTime]
	  ,datediff(ss, tse.[StartTime] ,tse.[EndTime]) Duration
      ,tse.[Comment]
      ,tse.[EntryTypeId]
	  ,tt.name as Activity
      ,tse.[IsFromWS3Created]
      ,tse.[EntrySourceId]
	  ,es.Name as EntrySource
  FROM [dbo].[TimesheetEntry] tse
  inner join dbo.Timesheet ts on tse.TimesheetId = ts.Id
  inner join dbo.Employee e on ts.EmployeeId = e.Id
  left join dbo.EntrySource es on tse.EntrySourceId = es.ID
  left join dbo.TimesheetEntryType tt on tse.EntryTypeId = tt.ID
  where e.Code = 'JHS'
  and StartDate > '2024-08-12'
  and tse.JobId = 1360750
  order by EntrySource
  teste changing
  Igor Testing 