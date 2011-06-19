#!/usr/bin/env ruby -wKU

require "rubygems"
require "gosu"

require "game"
require "square"

width = 960
height = 640
speed = 2

squares = [
  Square.new(width, height, speed, Gosu::Color::RED),
  Square.new(width, height, speed, Gosu::Color::GREEN),
  Square.new(width, height, speed, Gosu::Color::BLUE),
  Square.new(width, height, speed, Gosu::Color::YELLOW),
  Square.new(width, height, speed, Gosu::Color::FUCHSIA),
]

Game.new(width, height, squares).show

