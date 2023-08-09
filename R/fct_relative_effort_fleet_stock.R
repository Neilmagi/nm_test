#' Relative effort for fleets and stock
#'
#' @param data 
#' @param limits 
#' @param xlab 
#' @param ylab 
#' @param fillLegendTitle 
#'
#' @return
#' @export
#' @import ggplot2
#'
#' @examples
#' 
plot_relEffortFltStk <- function (data, limits = c(-100, 100), xlab = "Stock", 
                                  ylab = "Fleet", fillLegendTitle = "Variation\n in effort") 
{
  p <- ggplot(data) + aes(x = scenario, y = fleet, fill = var) + 
    geom_tile(color = "white", lwd = 1, linetype = 1) + 
    scale_fill_gradient2(name = "Variation\n in effort", 
                         limits = limits, low = "red4", mid = "grey90", 
                         high = "blue4", midpoint = 0) + theme(panel.background = element_blank(), 
                                                               strip.background = element_rect(colour = NA, fill = NA), 
                                                               axis.text.x = element_text(angle = 90, hjust = 0, vjust = 0.3), 
                                                               text = element_text(size = 9)) + coord_fixed() + xlab(xlab) + 
    ylab(ylab)
  return(p)
}
