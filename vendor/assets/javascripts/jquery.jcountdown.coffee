(($) ->
  $.fn.setCountdown = (options) ->
    defaults =
      targetDate:
        "2012-12-21"
      itemLabels: [
        "Days"
        "Hours"
        "Minutes"
        "Seconds"
      ]

    options = $.extend(defaults, options)

    if @.size() > 0
      @assignHtml(options)
      @updateCountdown(options)
      this

  $.fn.assignHtml = (options) ->
    itemClasses = [
      'jctdn-days'
      'jctdn-hours'
      'jctdn-mins'
      'jctdn-secs'
    ]

    html = ''
    for item, i in itemClasses
      html += "<span class='#{item}'><label>#{options.itemLabels[i]}</label><div></div></span>"

    @html(html)

  $.fn.updateCountdown = (options) ->
    timer_element = @.first()

    now = new Date()
    # Fix for Mobile Safari - see http://stackoverflow.com/a/4623148/45622
    parsed_date = options.targetDate.split(/-/)
    target = new Date(parsed_date[0], parsed_date[1]-1, parsed_date[2])

    diff = Math.floor((target.valueOf() - now.valueOf()) / 1000)

    if diff <= 0
      secs = mins = hours = days = 0
      clearTimeout($.data(timer_element, 'timer')) if $.data(timer_element, 'timer')
    else
      secs = diff % 60
      mins = Math.floor(diff / 60) % 60
      hours = Math.floor(diff / (60 * 60)) % 24
      days = Math.floor(diff / (60 * 60 * 24))

      $.data(
        timer_element,
        'timer',
        setTimeout((->timer_element.updateCountdown(options)), 1000)
      )

    timer_element.find("span.jctdn-days div").html(days)
    timer_element.find("span.jctdn-hours div").html(if hours > 9 then hours else '0' + hours)
    timer_element.find("span.jctdn-mins div").html(if mins > 9 then mins else '0' + mins)
    timer_element.find("span.jctdn-secs div").html(if secs > 9 then secs else '0' + secs)

)(jQuery)
