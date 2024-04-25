#'@export
snds_prompt <- function() {
 options(prompt =
            glue::glue(
              "{sndstyle::user_details_string()} {options('prompt')}"))
}
