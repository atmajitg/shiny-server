ui = basicPage(
    fluidRow(
      column(width = 4,
             imageOutput("image", height=300,
                         click = "image_click",
                         hover = hoverOpts(
                           id = "image_hover",
                           delay = 500,
                           delayType = "throttle"
                         ),
                         brush = brushOpts(id = "image_brush")
             )
      ),
      column(width = 4,
             verbatimTextOutput("image_clickinfo"),
             verbatimTextOutput("image_hoverinfo")
      ),
      column(width = 4,
             wellPanel(actionButton("newimage", "New image")),
             verbatimTextOutput("image_brushinfo")
      )
    )
  )