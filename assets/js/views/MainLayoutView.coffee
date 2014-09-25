define(['marionette', 'jquery'], (Marionette, $) ->
  MainLayout = Marionette.LayoutView.extend(
    template: '#layout'

    ui:
      menuItems: '#mainMenu a'

    events:
      'click @ui.menuItems': 'onMenuItemClicked'

    onMenuItemClicked: (e) ->
      $(@.ui.menuItems).removeClass('active')
      $(e.target).addClass('active')
  )
  return MainLayout
)