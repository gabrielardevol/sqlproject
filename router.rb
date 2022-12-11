# what have I watch over a period of time
# what kind of media have I consumed the most
require_relative "controller"
# require_relative "view"

class Router
  def initialize
    @running = true
    @controller = Controller.new
    run
  end

  def run
    if @running == true
      choice = @controller.display_options
      case choice
      when "1"
        @controller.display
      when "2"
        puts @controller.add
      else
        puts "else"
      end
    end
  end

end
