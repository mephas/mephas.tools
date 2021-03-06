##' @title tab functions in MEPHAS
##'
##'
##' @return stop tab
##'
##' @examples
##' # NOT Run
##'
##' @export
tabstop <- function(){
        navbarMenu("", icon = icon("power-off"),
           tabPanel(
                   actionLink(
                           "close", "Stop", 
                           icon = icon("power-off"),
                           onclick = "setTimeout(function(){window.close();}, 100);"
                   )
           ),
           tabPanel(
                   tags$a("",
                          #target = "_blank",
                          #style = "margin-top:-30px; color:DodgerBlue",
                          href = paste0("javascript:history.go(0)"),#,
                          list(icon("redo"), "Restart"))
           )
)
}


##' @title tab functions in MEPHAS
##'
##'
##' @return link tab
##'
##' @examples
##' # NOT Run
##'
##' @export
tablink <- function(){
        navbarMenu("", icon = icon("link"),
                   tabPanel(
                           tags$a("",
                                  target = "_blank",
                                  #style = "margin-top:-30px; color:DodgerBlue",
                                  href = paste0("https://alain003.phs.osaka-u.ac.jp/mephas/","index.html"),#,
                                  list(icon("home"), "Home Page"))
                   ),
                   
                   tabPanel(
                           tags$a("",
                                  target = "_blank",
                                  #style = "margin-top:-30px; color:DodgerBlue",
                                  href = paste0("https://mephas.github.io/helppage/"),#,
                                  list(icon("question-circle"), "Tutorial"))
                    ),
                   tabPanel(

                          tags$a("",
                                target = "_blank",
                                #style = "margin-top:-30px; color:DodgerBlue",
                                href = paste0("https://www.youtube.com/channel/UC7NNDN2iIjWe2NSRKT-7VgA/videos"),#,
                                list(icon("video"), "Video"))
                   )
              )       
}


##' @title tab functions in MEPHAS
##'
##'
##' @return off button
##'
##' @examples
##' # NOT Run
##'
##' @export
tabOF <- function(){
fluidPage(#
shinyWidgets::switchInput(#
       inputId = "explain_on_off",#
       label = "<i class=\"fa fa-book\"></i>", # Explanation in Details
        inline = TRUE,
        onLabel = "Show",
        offLabel = "Hide",
        size = "mini"
        )
)
}

##' @title tab functions in MEPHAS
##'
##'
##' @return link 
##'
##' @examples
##' # NOT Run
##'
##' @export
stylink <- function(){
  tagList(
  tags$head(
  tags$link(rel = "shortcut icon", href = "../www/favicon.ico"),
  tags$link(rel = "icon", type = "image/png", sizes = "96x96", href = "../www/favicon-96x96.ico"),
  tags$link(rel = "icon", type = "image/png", sizes = "32x32", href = "../www/favicon-32x32.png"),
  tags$link(rel = "icon", type = "image/png", sizes = "16x16", href = "../www/favicon-16x16.png")
)
  )
}