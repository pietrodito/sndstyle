#'@export
save_settings <- function() {
  sndshare::export("~/.config/rstudio")
  pattern <- "Citrix_PARTAGE-"
  share_dir <- list.files("~", pattern = paste0(pattern, "*"))
  profil <- substr(share_dir, nchar(pattern), nchar(share_dir))
  dwnld_dir <- "~/sasdata1/download/"
  from_file <- paste0(dwnld_dir, "rstudio.csv")
  to_file <- paste0(dwnld_dir, "rstudio-settings-profil", profil, ".csv")
  file.rename(from_file, to_file)
  cat(paste0("Le fichier final a été renommé :\n>>> ", to_file))
}


