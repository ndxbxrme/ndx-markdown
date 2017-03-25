'use strict'
module = null
try
  module = angular.module 'ndx'
catch e
  module = angular.module 'ndx-markdown', []
module.filter 'markdown', ($sce) ->
  (input) ->
    $sce.trustAs('html', marked(input))