#!/usr/bin/env ruby -wKU

require "rubygems"
require "gosu"

require "game"
require "square"

width = 960
height = 640

squares = [
  Square.new(width, height, Gosu::Color::RED),
  Square.new(width, height, Gosu::Color::GREEN),
  Square.new(width, height, Gosu::Color::BLUE),
  Square.new(width, height, Gosu::Color::YELLOW),
  Square.new(width, height, Gosu::Color::FUCHSIA),
]

Game.new(width, height, squares).show

