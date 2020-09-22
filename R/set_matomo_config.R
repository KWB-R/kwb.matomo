#' Set Matomo configuration
#' 
#' @param url url to Matomo tracking (e.g. https://matomo.example.com/index.php), default: Sys.getenv("MATOMO_URL")
#' @param api_key Matomo tracking API key, default: Sys.getenv("MATOMO_APIKEY")
#' @param site_id site id, default: Sys.getenv("MATOMO_SITEID")
#' @param format export data format  (default: "json") 
#' @param date_min first date (default: "2018-06-05", start of KWB-Matomo tracking)
#' @param date_max last date (default: Sys.Date())
#'
#' @return list with Matomo configuration
#' @export
set_matomo_config <- function(url = Sys.getenv("MATOMO_URL"),
                              api_key = Sys.getenv("MATOMO_APIKEY"),
                              site_id = Sys.getenv("MATOMO_SITEID"),
                              format = "json",
                              date_min = "2018-06-05", #start of Matomo tracking: 2018-06-05
                              date_max = Sys.Date()
                              ) {
  
  list(url = url,
       api_key = api_key, 
       site_id = site_id, 
       format = format,
       date_min = date_min, 
       date_max = date_max)
}

