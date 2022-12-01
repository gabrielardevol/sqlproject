# what have I watch over a period of time
# what kind of media have I consumed the most
require_relative "view"
class Router
  def initialize
    running = true
    @view = View.new
    if running == true
      choice = @view.display_options
      case choice
      when "1"
        puts "1"
      when "2"
        puts "2"
      else
        puts "else"
      end
    end
  end

end

Router.new
