#' Install R packages from a CSV file
#'
#' This function reads the CSV file, checks which packages are currently installed 
#' and installs the missing packages from the file.
#' @param file The path of the CSV file.
#' @keywords CSV packages backup import export
#' @import dplyr
#' @examples 
#' installpkg.csv('exported-packages.csv')
#' @export


installpkg.csv <- function(file) {
  imported <- read.csv(file) %>% 
    select(Package)
  pkginstalled <- as.data.frame(installed.packages()) %>% 
    select(Package)
  install <- setdiff(imported, pkginstalled)
  for(pkg in install) install.packages(pkg, dependencies = T)
}

#' Export installed R packages to a CSV file
#'
#' This function exports to a CSV file all the currently installed packages
#' of your installation. You can import it later to another one using \code{installpkg.csv()}.
#' @param file The path of the CSV file.
#' @keywords CSV packages backup import export
#' @examples
#' exportpkg.csv('exported-packages.csv')
#' @export

exportpkg.csv <- function(file) {
  export <- as.data.frame(installed.packages())
  write.csv(export, file)
}