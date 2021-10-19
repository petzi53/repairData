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
#' 2. \href{https://fixitclinic.blogspot.com/}{Fixit Clinic}:
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
#' and recorded in the Fixometer module of \href{https://restarters.net}{Restarters.net}.
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

#' @title
#' Batteries
#'
#'@description
#' Categorizing repair attempts on battery-powered devices recorded at community events.
#'
#' @details
#' Dataset of battery-powered device repair records from the Open Repair Alliance in ORDS format style with added `step_barrier` values.
#' Results of \href{https://openrepair.org/open-data/insights/batteries/}{Open Repair Data quest BattCat}.
#' \describe{
#'   \item{id_ords}{ID. Unique identifier from the partner organisation.}
#'   \item{data_provider}{Data provider. Option from ORDS codelist. Name of partner organisation.}
#'   \item{country}{Country. Three letter
#'   \href{https://github.com/openrepair/data/blob/master/tools/iso_country_codes/iso_country_codes.csv}{ISO code},
#'   e.g. “GBR”.}
#'   \item{step_barrier_id}{Fault type ID.}
#'   \item{step_barrier}{Fault type. Name of the step or barrier.
#'   Option from \href{https://github.com/openrepair/data/blob/master/quests/batteries/battcat_step_barrier.csv}{battery codelist}.}
#'   \item{product_category}{Product category. Option from ORDS
#'   \href{https://standard.openrepair.org/standard.html#ords-product-category-values}{product category codelist}}
#'   \item{brand}{Brand.}
#'   \item{repair_status}{Repair status option from the battery codelist.}
#'   \item{year_of_manufacture}{Year of manufacture.}
#'   \item{event_date}{Event date. The date of the repair event that the repair took place at.}
#'   \item{language}{Language of problem description. 2 char ISO language code.}
#'   \item{problem}{Problem description.}
#'   }
#' @source \url{https://github.com/openrepair/data/tree/master/quests/batteries}
"batteries"

#' @title
#' Printers
#'
#'@description
#' Result of an online quest where volunteer participants looked at printer repair attempts recorded at community events.
#' @details
#' Dataset of printer repair records from the Open Repair Alliance in ORDS format style with added `fault_type` values.
#' Results of \href{https://openrepair.org/open-data/insights/printers/}{Open Repair Data quest PrintCat}.
#' \describe{
#'   \item{id_ords}{ID. Unique identifier from the partner organisation.}
#'   \item{data_provider}{Data provider. Option from ORDS codelist. Name of partner organisation.}
#'   \item{country}{Country. Three letter
#'   \href{https://github.com/openrepair/data/blob/master/tools/iso_country_codes/iso_country_codes.csv}{ISO code},
#'   e.g. “GBR”.}
#'   \item{fault_type_id}{Fault type ID.}
#'   \item{fault_type}{Fault type.
#'   Option from \href{https://github.com/openrepair/data/blob/master/quests/printers/printcat.csv}{printer codelist}.}
#'   \item{product_category}{Product category. Option from ORDS
#'   \href{https://standard.openrepair.org/standard.html#ords-product-category-values}{product category codelist}}
#'   \item{brand}{Brand.}
#'   \item{repair_status}{Repair status option from the printer codelist.}
#'   \item{year_of_manufacture}{Year of manufacture.}
#'   \item{event_date}{Event date. The date of the repair event that the repair took place at.}
#'   \item{language}{Language of problem description. 2 char ISO language code.}
#'   \item{problem}{Problem description.}
#'   }
#' @source \url{https://github.com/openrepair/data/tree/master/quests/printers}
"printers"

#' @title
#' Tablets
#'
#'@description
#' Result of an online quest where volunteer participants looked at tablet repair attempts recorded at community events.
#' @details
#' Dataset of tablet repair records from the Open Repair Alliance in ORDS format style with added `fault_type` values.
#' Results of \href{https://openrepair.org/open-data/insights/tablets/}{Open Repair Data quest TabiCat"}.
#'
#' \describe{
#'   \item{id_ords}{ID. Unique identifier from the partner organisation.}
#'   \item{data_provider}{Data provider. Option from ORDS codelist. Name of partner organisation.}
#'   \item{country}{Country. Three letter
#'   \href{https://github.com/openrepair/data/blob/master/tools/iso_country_codes/iso_country_codes.csv}{ISO code},
#'   e.g. “GBR”.}
#'   \item{fault_type_id}{Fault type ID.}
#'   \item{fault_type}{Fault type.
#'   Option from \href{https://github.com/openrepair/data/blob/master/quests/tablets/tabicat_fault_types.csv}{tablet codelist}.}
#'   \item{product_category}{Product category. Option from ORDS
#'   \href{https://standard.openrepair.org/standard.html#ords-product-category-values}{product category codelist}}
#'   \item{brand}{Brand.}
#'   \item{repair_status}{Repair status option from the tablet codelist.}
#'   \item{year_of_manufacture}{Year of manufacture.}
#'   \item{event_date}{Event date. The date of the repair event that the repair took place at.}
#'   \item{language}{Language of problem description. 2 char ISO language code.}
#'   \item{problem}{Problem description.}
#'   }
#' @source \url{https://github.com/openrepair/data/tree/master/quests/tablets}
"tablets"


#' @title
#' Mobiles
#'
#'@description
#' Result of two online quests where volunteer participants looked at about 1900 mobile phone repair attempts recorded at community events.
#' @details
#' Dataset of printer repair records from the Open Repair Alliance in ORDS format style with added `fault_type` values.
#' Results of \href{https://openrepair.org/open-data/insights/mobiles/}{Results of Open Repair Data quests MobiFix and MobiFix:ORA}.
#'
#' There are some differences in the structure of this data and any of the ORDS format versions (0.1 and 0.2).
#' The records involved span different ORDS versions and a handful have not yet been exported.
#'
#' 1. The usual ORDS id values have been replaced by special mobifix-specific unique identifiers
#' 2. The model field was removed from the ORDS v0.2 standard but was useful for these quests and so has been retained in this dataset
#' 3. Age is an important metric in repair policy, therefore it was derived from and replaced the year_of_manufacture field
#' 4. The field group_identifier is irrelevent in this analysis and thus has been omitted from the dataset
#'
#' \href{https://restarters.net/mobifix/status}{MobiFix} was held in July 2020 using data from ORA partner The Restart Project.
#' \href{https://restarters.net/mobifixora/status}{MobiFix:ORA} was held in March 2021 using data from ORA partners anstiftung and Repair Café International.
#' \describe{
#'   \item{id}{ID.}
#'   \item{data_provider}{Data provider. Option from ORDS codelist. Name of partner organisation.}
#'   \item{country}{Country. Three letter
#'   \href{https://github.com/openrepair/data/blob/master/tools/iso_country_codes/iso_country_codes.csv}{ISO code},
#'   e.g. “GBR”.}
#'   \item{fault_type}{Fault type.}
#'   \item{product_category}{Product category. Option from ORDS
#'   \href{https://standard.openrepair.org/standard.html#ords-product-category-values}{product category codelist}.}
#'   \item{brand}{Brand.}
#'   \item{model}{Product model.}
#'   \item{repair_status}{Result of the repair attempt.}
#'   \item{age}{Product age.}
#'   \item{event_date}{Event date. The date of the repair event that the repair took place at.}
#'   \item{problem}{Problem description.}
#'   }
#' @source \url{https://openrepair.org/open-data/insights/mobiles}
"mobiles"

