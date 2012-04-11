module Placeholdit
  class Railtie < Rails::Railtie
    initializer "placeholdit.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
