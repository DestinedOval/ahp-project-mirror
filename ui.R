##########################################################
# AHP-Long-Waits
# Original author(s): Stewart Wilson
# Original date: 2024-05-17
# Written/run on RStudio server 2022.7.2.576.12 and R 4.1.2
# Description of content
##########################################################


# Get packages
source("setup.R")

# UI
ui <- fluidPage(
  tagList(
    # Specify most recent fontawesome library - change version as needed
    tags$style("@import url(https://use.fontawesome.com/releases/v6.1.2/css/all.css);"),
    navbarPage(
      id = "intabset", # id used for jumping between tabs
      title = div(
        tags$a(img(src = "phs-logo.png", height = 40),
               href = "https://www.publichealthscotland.scot/",
               target = "_blank"), # PHS logo links to PHS website
        style = "position: relative; top: -5px;"),
      windowTitle = "AHP-Long-Waits",# Title for browser tab
      header = tags$head(includeCSS("www/styles.css"),
                         includeScript("www/javascript.js"),  # CSS stylesheet & JavaScript
                         tags$link(rel = "shortcut icon", href = "favicon_phs.ico") # Icon for browser tab
      ),
      
      ##############################################.
      # INTRO PAGE ----
      ##############################################.
      tabPanel(title = "Introduction",
               icon = icon_no_warning_fn("book-open"),
               value = "intro",
               uiOutput("intro_page_ui")
               
      ), # tabpanel
      ##############################################.
      # PAGE 1 ----
      ##############################################.
      tabPanel(title = "Page 1",
               # Look at https://fontawesome.com/search?m=free for icons
               icon = icon_no_warning_fn("chart-line"),
               value = "intro",
               uiOutput("page_1_ui"),
               
               
      ) # tabpanel
    ) # navbar
  ) # taglist
) # ui fluidpage

### END OF SCRIPT ###