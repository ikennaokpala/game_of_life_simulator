$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

SEATING_ARRANGEMENT = [
                       [:soft, :hard, :none],
                       [:hard, :none, :soft],
                       [:none, :soft, :hard],
                      ]

require 'simulator'
require 'neighbour'
