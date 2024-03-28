Dir[File.join(File.dirname(__FILE__),'../screens/*_screen.rb')].each { |file| require file }

    module Screens
        class App
            def base
        @base ||= BaseScreen.new
        end
    
        def login
        @login ||= LoginScreen.new
        end

        def feed
            @feed ||= FeedScreen.new
        end
    end
end