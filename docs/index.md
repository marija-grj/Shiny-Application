Shiny pitch
========================================================
author: Marija Grjazniha
date: April 20, 2021
autosize: true

Shiny application
========================================================

App on COVID-19 Government Response Stringency Effectiveness based on Oxford Covid-19 Government Response Tracker (OxCGRT) dataset.    

<https://marija-grj.shinyapps.io/shiny-assignment/>


![](https://github.com/marija-grj/Shiny-Application/blob/main/demo.png?raw=true)

Stringency Index
========================================================

Stringency Index is a composite measure of nine of the response metrics and can vary from 0 (no measures) to 100 (the strictest measures). Higher Stringency Index is associated with basic Covid-19 metric improvements: lower number of new cases and deaths.

Response metrics included in Stringency Index:
- School Closures
- Workplace closing
- Cancel Public Events
- Restrictions on gatherings
- Public Transportation
- Stay at Home Order
- Restrictions on Internal Movement
- International Travel Controls

App navigation
========================================================

The application has four filters that impact both the interactive plot and the plot title.  

### Country
- Colombia
- Finland
- Germany
- Greece
- India
- Portugal
- Romania
- Switzerland

***

### Covid-19 measure
- Cases
- Deaths

### Measure aggregation type
- Daily
- Cumulative

### Stringency Index
- Show
- Hide


Resources
========================================================

Data: <https://github.com/OxCGRT/covid-policy-tracker>

Libraries:
- `shiny`
- `plotly`
- `dplyr`

Other:
- https://www.shinyapps.io/
- https://github.com/ 
