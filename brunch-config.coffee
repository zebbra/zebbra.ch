# See http://brunch.io for documentation.
module.exports = config:
  paths:
    public: 'static'
    watched: ['assets']

  files:
    javascripts:
      joinTo: 
        'js/main.js':   /^assets/
        'js/vendor.js': /^node_modules/

    stylesheets:
      joinTo: 'css/main.css'

  conventions:
    assets: -> false

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

  npm:
    enabled: true

    globals:
      $: 'jquery',
      jQuery: 'jquery',
      Tether: 'tether',
      bootstrap: 'bootstrap'

  overrides:
    production:
      optimize: true
      sourceMaps: false
