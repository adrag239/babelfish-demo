select * from [dbo].[Customers]

exec [CustOrderHist] 'ALFKI'

select * from [dbo].[Product Sales for 1997]

exec [dbo].[Ten Most Expensive Products]

select * from [dbo].[Invoices]

select * from sysobjects where id = object_id('dbo.Sales Totals by Amount')


EXECUTE sp_babelfish_configure 'escape_hatch_nocheck_add_constraint', 'ignore'
EXECUTE sp_babelfish_configure 'escape_hatch_nocheck_existing_constraint', 'ignore'