#' @title
#' Full open repair data dataset
#'
#'@description
#' The full ORDS compliant data set of open repair data.
#' It is the combination of the datasets contributed by partner organisations
#' of the Open Repair Alliance (ORA). Last updated: 22nd Feb 2021.
#'
#' @details
#' The dataset conforms to the
#' \href{https://standard.openrepair.org/}{Open Repair Data Standard} (ORDS, Version 0.2.1).
#' But some new changes --- like the addition of the repair_barrier field --- are not yet populated.
#'
#' The dataset is aggregated from five different sets:
#' 1. \href{https://anstiftung.de/}{Anstiftung}: Community repair data collected in the
#' \href{https://github.com/anstiftung/mapped-repair-events/}{Reparatur-Initiativen platform} from June 2018 onwards.
#' Product categories mapped to working set of ORDS categories – these may be remapped in future.
#'
#' 2. \href{http://fixitclinic.blogspot.com/}{Fixit Clinic}:
#' Data collected via the \href{https://fixitclinic.blogspot.com/p/item-re.html}{Broken Item Report}
#' form as part of Fixit Clinic’s community
#' repair events. Product categories mapped to working set of ORDS categories – these may be remapped in future.
#'
#' 3. \href{https://repaircafe.org/}{Repair Cafe International}: Community repair data gathered using the
#' \href{https://repairmonitor.org/en/node/61}{Repair Monitor} platform.
#'
#' 4. \href{https://repaircafewales.org/}{Repair Cafe Wales}
#'
#' 5. \href{https://therestartproject.org/}{The Restart Project}: Data gathered at community repair events
#' and recorded in the Fixometer module of \href{http://restarters.net}{Restarters.net}.
#'
#' From the ORDS documentation reference, the columns include:
#' \describe{
#'   \item{id}{ID. Unique identifier from the partner organisation.
#'   Does not have to be unique across all partner data.}
#'   \item{data_provider}{Data provider. Option from ORDS codelist. Name of partner organisation.}
#'   \item{country}{Country. Three letter
#'   \href{https://github.com/openrepair/data/blob/master/tools/iso_country_codes/iso_country_codes.csv}{ISO code},
#'   e.g. “GBR”.}
#'   \item{partner_product_category}{Partner category. Option from partner codelist.}
#'   \item{product_category}{Product category. Option from ORDS
#'   \href{https://standard.openrepair.org/standard.html#ords-product-category-values}{product category codelist}}
#'   \item{brand}{Brand.}
#'   \item{year_of_manufacture}{Year of manufacture.}
#'   \item{repair_status}{Repair status option from the ORDS
#'   \href{https://standard.openrepair.org/standard.html#repair-status-values}{repair status codelist}.}
#'   \item{repair_barrier_if_end_of_life}{Repair barrier. Option from ORDS
#'   \href{https://standard.openrepair.org/standard.html#repair-barrier-values}{repair barrier codelist}.}
#'   \item{group_identifier}{Group identifier.
#'   A unique identifier across all partners that can identify the group responsible for the repair.}
#'   \item{event_date}{Event date. The date of the repair event that the repair took place at.}
#'   \item{problem}{Problem description in language of the repair site event.}
#'   }
#' @source \url{https://openrepair.org/open-data/downloads/}
"repairs"
