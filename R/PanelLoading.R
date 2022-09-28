
# Exported Functions ------------------------------------------------------

#'  List Available Panels
#'
#'
#'
#' @return valid panel names character()
#' @export
#'
#' @examples
#' panels_available()
panels_available <- function(){
  readxl::excel_sheets(path_to_panels_excel())
}


#' Load a Panel
#'
#' @param panel name of a valid microbial panel
#' @param verbose controls verbosity of error message (flag)
#' @return dataframe describing microbes in the panel (including ncbi taxonomy ID
#' @export
#'
#' @examples
#' panels_load('CancerViruses')
#'
panels_load <- function(panel, verbose=TRUE){

  valid_panels <- panels_available()
  names(valid_panels) <- rep('>', length(valid_panels))

  if(!panel %in% valid_panels){
    if(verbose){
      cli::cli_alert_warning('Could not find panel [{panel}].')
      cli::cli_h1("Valid Panel Names")
      cli::cli_bullets(valid_panels)
      cli::cli_rule()
    }
    cli::cli_abort('Please retry with a valid panel name')
  }
  readxl::read_excel(path_to_panels_excel(), sheet = panel)
}



# Utility functions -------------------------------------------------------
path_to_panels_excel <- function(){
 system.file(package = 'microbialpanels', 'taxidpanels/Panels.xlsx')
}

panel_load_all <- function(){
  sheetnames <- readxl::excel_sheets(path_to_panels_excel())

  panel_list <- lapply(sheetnames, FUN = function(s) { readxl::read_excel(path_to_panels_excel(), sheet = s) })
  names(panel_list) <- sheetnames

  return(panel_list)
}

