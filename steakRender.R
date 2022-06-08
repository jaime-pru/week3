#R code for the render function

rmarkdown::render("steakArticleParams.Rmd",
                  params = list(region = "Mountain"))


#R code to create the custom function

render_report <-function(regionvar){
  template <-"steakArticleParams.Rmd"
  outfile <-sprintf("steakArticle_%s.html",regionvar)
  parameters <-list(region = regionvar)
  rmarkdown::render(template,
                    output_file=outfile,
                    params=parameters)
  invisible(TRUE)
}

render_report("Pacific")
