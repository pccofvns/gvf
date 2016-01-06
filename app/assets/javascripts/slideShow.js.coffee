slideShow = ->

  ### GLOBALS *********************************************************************************************###

  globals = 
    slideDelay: 4000
    fadeDelay: 35
    wrapperID: 'slideShowImages'
    buttonID: 'slideShowButton'
    buttonStartText: 'Start Slides'
    buttonStopText: 'Stop Slides'
    wrapperObject: null
    buttonObject: null
    slideImages: []
    slideShowID: null
    slideShowRunning: true
    slideIndex: 0

  ### MAIN ************************************************************************************************###

  ### FUNCTIONS *******************************************************************************************###

  initializeGlobals = ->
    globals.wrapperObject = if document.getElementById(globals.wrapperID) then document.getElementById(globals.wrapperID) else null
    globals.buttonObject = if document.getElementById(globals.buttonID) then document.getElementById(globals.buttonID) else null
    if globals.wrapperObject
      globals.slideImages = if globals.wrapperObject.querySelectorAll('img') then globals.wrapperObject.querySelectorAll('img') else []
    return

  # initializeGlobals
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  insufficientSlideShowMarkup = ->
    if !globals.wrapperObject
      # There is no wrapper element whose ID is globals.wrapperID - fatal error.
      if globals.buttonObject
        globals.buttonObject.style.display = 'none'
        # Hide the not needed slide show button element when present.
      return true
    if !globals.slideImages.length
      # There needs to be at least one slide <img> element - fatal error.
      if globals.wrapperObject
        globals.wrapperObject.style.display = 'none'
        # Hide the not needed <div> wrapper element.
      if globals.buttonObject
        globals.buttonObject.style.display = 'none'
        # Hide the not needed slide show button element.
      return true
    false
    # The markup expected by this library seems to be present.

  # insufficientSlideShowMarkup
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  initializeSlideShowMarkup = ->
    slideWidthMax = maxSlideWidth()
    # Returns a value that is always in pixel units.
    slideHeightMax = maxSlideHeight()
    # Returns a value that is always in pixel units.
    globals.wrapperObject.style.position = 'relative'
    globals.wrapperObject.style.overflow = 'hidden'
    # This is just a safety thing.
    globals.wrapperObject.style.width = slideWidthMax + 'px'
    globals.wrapperObject.style.height = slideHeightMax + 'px'
    slideCount = globals.slideImages.length
    i = 0
    while i < slideCount
      globals.slideImages[i].style.opacity = 0
      globals.slideImages[i].style.position = 'absolute'
      globals.slideImages[i].style.top = '0px';#(slideHeightMax - (globals.slideImages[i].getBoundingClientRect().height)) / 2 + 'px'
      globals.slideImages[i].style.left = '0px';#(slideWidthMax - (globals.slideImages[i].getBoundingClientRect().width)) / 2 + 'px'
      i++
    globals.slideImages[0].style.opacity = 1
    # Make the first slide visible.
    if globals.buttonObject
      globals.buttonObject.textContent = globals.buttonStopText
    return

  # initializeSlideShowMarkup
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  maxSlideWidth = ->
    maxWidth = 0
    maxSlideIndex = 0
    slideCount = globals.slideImages.length
    i = 0
    while i < slideCount
      if globals.slideImages[i].width > maxWidth
        maxWidth = globals.slideImages[i].width
        # The width of the widest slide so far.
        maxSlideIndex = i
        # The slide with the widest width so far.
      i++
    globals.slideImages[maxSlideIndex].getBoundingClientRect().width
    # Account for the image's border, padding, and margin values. Note that getBoundingClientRect() is always in units of pixels.

  # maxSlideWidth
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  maxSlideHeight = ->
    maxHeight = 0
    maxSlideIndex = 0
    slideCount = globals.slideImages.length
    i = 0
    while i < slideCount
      if globals.slideImages[i].height > maxHeight
        maxHeight = globals.slideImages[i].height
        # The height of the tallest slide so far.
        maxSlideIndex = i
        # The slide with the tallest height so far.
      i++
    globals.slideImages[maxSlideIndex].getBoundingClientRect().height
    # Account for the image's border, padding, and margin values. Note that getBoundingClientRect() is always in units of pixels.

  # maxSlideHeight
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  startSlideShow = ->
    globals.slideShowID = setInterval(transitionSlides, globals.slideDelay)
    return

  # startSlideShow
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  haltSlideShow = ->
    clearInterval globals.slideShowID
    return

  # haltSlideShow
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  toggleSlideShow = ->
    if globals.slideShowRunning
      haltSlideShow()
      if globals.buttonObject
        globals.buttonObject.textContent = globals.buttonStartText
    else
      startSlideShow()
      if globals.buttonObject
        globals.buttonObject.textContent = globals.buttonStopText
    globals.slideShowRunning = !globals.slideShowRunning
    return

  # toggleSlideShow
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  transitionSlides = ->
    currentSlide = globals.slideImages[globals.slideIndex]

    fadeActiveSlides = ->
      currentSlideOpacity -= opacityLevelIncrement
      nextSlideOpacity += opacityLevelIncrement
      # console.log(currentSlideOpacity + nextSlideOpacity); // This should always be very close to 1.
      if currentSlideOpacity >= 0 and nextSlideOpacity <= 1
        currentSlide.style.opacity = currentSlideOpacity
        nextSlide.style.opacity = nextSlideOpacity
      else
        currentSlide.style.opacity = 0
        nextSlide.style.opacity = 1
        clearInterval fadeActiveSlidesID
      return

    ++globals.slideIndex
    if globals.slideIndex >= globals.slideImages.length
      globals.slideIndex = 0
    nextSlide = globals.slideImages[globals.slideIndex]
    currentSlideOpacity = 1
    # Fade the current slide out.
    nextSlideOpacity = 0
    # Fade the next slide in.
    opacityLevelIncrement = 1 / globals.fadeDelay
    fadeActiveSlidesID = setInterval(fadeActiveSlides, globals.fadeDelay)
    # fadeActiveSlides
    return

  initializeGlobals()
  if insufficientSlideShowMarkup()
    return
    # Insufficient slide show markup - exit now.
  # Assert: there's at least one slide image.
  if globals.slideImages.length == 1
    return
    # The solo slide image is already being displayed - exit now.
  # Assert: there's at least two slide images.
  initializeSlideShowMarkup()
  globals.wrapperObject.addEventListener 'click', toggleSlideShow, false
  # If the user clicks a slide show image, it toggles the slide show on and off.
  if globals.buttonObject
    globals.buttonObject.addEventListener 'click', toggleSlideShow, false
    # This callback is used to toggle the slide show on and off.
  startSlideShow()
  # transitionSlides
  return

window.addEventListener 'load', slideShow, false
# slideShow

# ---
# generated by js2coffee 2.1.0