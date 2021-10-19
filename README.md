
<!-- README.md is generated from README.Rmd. Please edit that file -->

# repairData

<!-- badges: start -->
<!-- badges: end -->

Data is from the website of the [Open Repair
Alliance](https://openrepair.org/open-data/downloads/). The structure of
the data follows the technical documentation of the [Open Repair Data
Standard](https://standard.openrepair.org/) (ORDS Version 0.21).

Besides the complete dataset `repairs` with 48,669 entries, I have also
added four compiled datasets on `batteries`, `mobiles`, `printers`, and
`tablets` with additional information about fault types.

## Aims of `repairData`

The goal of the `repairData` package is

-   to create a joint approach to documenting successes and challenges
    with post-warranty repairs
-   to promote it as a standard available to other community repair
    networks and in the future to commercial repairers and others
    collecting repair data
-   to enable coalition members and others to use the data from our
    joint work to produce insights, intending to demand more repairable
    products, improved support, and access to better repair services
-   to explore jointly additional information we can all collect to help
    make a stronger case for increased repairability. (Slightly changed
    from [Open Repair Data
    Standard](https://standard.openrepair.org/about.html).)

Eventually, these datasets should help to extend the reach to commercial
repairers and others collecting repair data. This data will be used to
[tell stories](https://openrepair.org/open-data/insights/) about the
positive impacts of repair and to inform advocacy. Together, we can make
a stronger case for more easily repairable devices.

## Installation

You can install the released version of repairData from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("repairData")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("petzi53/repairData")
```

## Example

After loaded the package you have access to all datasets with the data()
function.

``` r
library(repairData)
# simple example code
data(repairs)
# or all together
data(repairs, batteries, printers, mobiles, tablets)
```

## Data specifications

The following table stems from the [documentation of the Open Repair
Data
Standard](https://standard.openrepair.org/standard.html#field-reference)
(ORDS Version 0.21). (In the last column, I report my changes to the
variable type of some columns according to the ORDS `Type` description.)

| Title               | Field name                         | Type                                                                                                            | R Data Type |
|---------------------|------------------------------------|-----------------------------------------------------------------------------------------------------------------|-------------|
| ID                  | id                                 | Unique identifier from the partner organisation. Does not have to be unique across all partner data.            | character   |
| Partner category    | partner\_product\_category         | Option from partner codelist.                                                                                   | character   |
| Product category    | product\_category                  | Option from ORDS *product category codelist*.                                                                   | factor      |
| Brand               | brand                              | Free text.                                                                                                      | character   |
| Year of manufacture | year\_of\_manufacture              | Year. YYYY.                                                                                                     | character\* |
| Problem             | problem                            | Free text. Personal data should be removed, e.g. email addresses.                                               | character   |
| Repair status       | repair\_status                     | Option from ORDS *repair status codelist*.                                                                      | factor      |
| Repair barrier      | repair\_barrier\_if\_end\_of\_life | Option from ORDS *repair barrier codelist*. Optional. Only relevant where repair\_status = “End of life”.       | factor      |
| Group identifier    | group\_identifier                  | String. Unique. A unique identifier across all partners that can identify the group responsible for the repair. | factor      |
| Event date          | event\_date                        | Date. YYYY-MM-DD format. The date of the repair event that the repair took place at.                            | Date        |
| Data provider       | data\_provider                     | Option from ORDS codelist. Name of partner organisation.                                                        | factor      |
| Country             | country                            | String. 3 letter ISO code, e.g. “GBR”.                                                                          | factor      |
| Record date         | record\_date                       | Date. YYYY-MM-DD format. The date that the record was last updated.                                             | Date        |

-   Because of many NA’s written as “????” I chose to import this column
    as “character”.
