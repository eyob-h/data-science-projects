SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM COV_project..CovidData
order by Location, date


--Total cases vs Total deaths
SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS "Fatality Percentage"
FROM COV_project..CovidData
WHERE location like '%Ethiopia%'
order by Location, date


--Total cases vs population
SELECT Location, date, total_cases, Population, (total_cases/population)*100 AS "PopulationInfected"
FROM COV_project..CovidData
WHERE location like '%Ethiopia%'
order by Location, date