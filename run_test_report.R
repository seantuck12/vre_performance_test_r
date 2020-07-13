library(knitr)
library(rmarkdown)

test_id <- paste(Sys.info()["nodename"], format(Sys.time(), "%Y%m%d%H%M%S"), sep = "_")
report_file <- "./vre_performance_test_r.Rmd"

output_dir <- "./results/"
output_file <- paste0("vre_performance_benchmark_r_", test_id, ".html")

render(
  input = report_file,
  params = list(test_id = test_id),
  output_dir = output_dir,
  output_file = output_file,
  output_format = html_document(toc = TRUE, theme = "cosmo")
)