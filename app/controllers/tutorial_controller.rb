class TutorialController < ApplicationController

  def index
    @tutorial = "Nothing to see here"
  end

  def one_render_method
    @title = "The React Component"
  end

  def two_calling_functions
    @title = "Calling Functions"
  end

  def three_introduction_to_state
    @title = "Introduction to State"
  end

  def four_props
    @title = "Passing Data to a Component"
  end

end
