create database TicketAnalysis;
Go
use TicketAnalysis;
Go

--Total Tickets
SELECT count(Ticket_ID) AS Toatal_Tickets FROM Tickets;

--Whgich issue occurs most
SELECT Category, COUNT(*) AS Ticket_Count
FROM Tickets
GROUP BY Category
ORDER BY Ticket_Count DESC;

--how many risks exist
SELECT Priority, COUNT(*) AS Ticket_Count
FROM Tickets
GROUP BY Priority
ORDER BY Ticket_Count DESC;

--Which team handles more tickets
SELECT Team, COUNT(*) AS Ticket_Count
FROM Tickets
GROUP BY Team
ORDER BY Ticket_Count DESC;

---Best satisfaction
SELECT Team,
AVG(Satisfactory_Score) AS Avg_Satisfaction
FROM Tickets
GROUP BY Team
ORDER BY Avg_Satisfaction DESC;

--Whrer the tickets come most
SELECT Source, COUNT(*) AS Ticket_Count
FROM Tickets
GROUP BY Source
ORDER BY Ticket_Count DESC;

--Tickets open and close 
SELECT Status, COUNT(*) AS Ticket_Count
FROM Tickets
GROUP BY Status
ORDER BY Ticket_Count DESC;

SELECT Resolution_SLA,
COUNT(*) AS Total
FROM tickets
GROUP BY Resolution_SLA;

SELECT Category,
AVG(Satisfactory_Score) AS Avg_Satisfaction
FROM tickets
GROUP BY Category;

SELECT Team,
COUNT(*) AS SLA_Failures
FROM tickets
WHERE Resolution_SLA = 'Failed SLA'
GROUP BY Team
ORDER BY SLA_Failures DESC;