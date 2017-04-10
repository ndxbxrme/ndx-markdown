'use strict'
module = null
try
  module = angular.module 'ndx'
catch e
  module = angular.module 'ndx', []
module.filter 'markdown', ($sce) ->
  (input, newLines) ->
    if newLines
      input = input.replace /\n/g, '  \n'
    $sce.trustAs('html', marked(input))