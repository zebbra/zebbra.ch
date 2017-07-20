# See http://brunch.io for documentation.
module.exports = config:
  paths:
    public: 'static'
    watched: ['src']

  files:
    javascripts:
      joinTo:
        'js/app.js' : /^src/
        'js/vendor.js' : /^node_modules/

    stylesheets:
      joinTo:
        'css/app.css'

  plugins:
    sass:
      options:
        debug: 'comments'
        includePaths: [
          'node_modules/bootstrap/scss'
          'node_modules/font-awesome/scss'
        ]

    copycat:
      fonts: ['node_modules/font-awesome/fonts']
      verbose: false
      onlyChanged: true

  modules:
    wrapper: false
    # autoRequire:
    #   "js/app.js": ["js/initialize.coffee"]

  npm:
    enabled: true

    globals:
      $: 'jquery',
      jQuery: 'jquery',
      Tether: 'tether',
      bootstrap: 'bootstrap'
      # smoothScroll: 'smooth-scroll'
