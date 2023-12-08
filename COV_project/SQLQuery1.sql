SELECT Location, date, total_cases, new_cases, total_deaths, population
FROM COV_project..CovidData
WHERE continent IS NOT NULL
order by Location, date


--Total cases vs Total deaths
SELECT Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS "Fatality Percentage"
FROM COV_project..CovidData
WHERE location like '%Ethiopia%'
order by Location, date


--Total cases vs population
SELECT Location, date, total_cases, Population, (total_cases/population)*100 AS "Population Infected"
FROM COV_project..CovidData
WHERE location like '%Ethiopia%'
order by Location, date


--Countries with highest infection rates
SELECT Location,  MAX(total_cases), MAX((total_cases/population)*100) AS HighestInfections
FROM COV_project..CovidData
WHERE continent IS NOT NULL
group by Location, Population
order by HighestInfections desc

--Global Numbers
Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths,
SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
where continent is not null 
order by 1,2
