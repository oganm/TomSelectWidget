#' @import htmlwidgets

#' @export
tom_select = function(tom_select,height = NULL, width = NULL){
    x = tom_select
    htmlwidgets::createWidget("tomselect",x,height = NULL, width = NULL,package = 'TomSelectWidget')
}


#' @export
tom_select_output <- function(outputId, width = "100%", height = "400px") {
    shinyWidgetOutput(outputId, "tomselect", width, height, package = "TomSelectWidget")
}


#' @export
render_tom_select <- function(expr, env = parent.frame(), quoted = FALSE) {
    if (!quoted) { expr <- substitute(expr) } # force quoted
    shinyRenderWidget(expr, rdogOutput, env, quoted = TRUE)
}
