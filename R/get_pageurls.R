
#' Get PageUrls
#' 
#' @param matomo_config matomo configuration (default: \code{\link{set_matomo_config}})
#'
#' @return data frame pageurls and with Matomo indicators 
#' @export
#' @seealso https://developer.matomo.org/api-reference/reporting-api
#' @importFrom glue glue
#' @importFrom jsonlite read_json
#' @importFrom data.table rbindlist
get_pageurls <- function(matomo_config = set_matomo_config()) {


request <- glue::glue(
  paste0("{matomo_config$url}?module=API&method=Actions.getPageUrls&idSite={matomo_config$site_id}",
         "&format={matomo_config$format}&period=range&date={matomo_config$date_min},{matomo_config$date_max}",
         "&filter_column_recursive=label&filter_limit=-1&flat=1&token_auth={matomo_config$api_key}")
  )

response <- jsonlite::read_json(request,simplifyVector = FALSE)

data.table::rbindlist(response,fill = TRUE)
}
