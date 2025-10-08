# frozen_string_literal: true

class SelectExamplesController < ApplicationController
  def show
    @options = animals[params[:speed]] || animals[:slow]
  end

  def options
    @options = animals[params[:speed].to_sym] || animals[:slow]
    case params[:speed].to_sym
    when :slow then sleep 10
    when :medium then sleep 6
    when :fast then sleep 1
    end
  end

  private

  def animals
    {
      slow: %w(snail tortoise koala),
      medium: %w(elephant bear cat),
      fast: %w(cheetah lion, greyhound)
    }.with_indifferent_access
  end
end
