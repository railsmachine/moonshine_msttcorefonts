module Moonshine
  module Msttcorefonts

    # Define options for this plugin via the <tt>configure</tt> method
    # in your application manifest:
    #
    #    configure(:msttcorefonts => {:foo => true})
    #
    # Moonshine will autoload plugins, just call the recipe(s) you need in your
    # manifests:
    #
    #    recipe :msttcorefonts
    def msttcorefonts(options = {})
      # define the recipe
      # options specified with the configure method will be 
      # automatically available here in the options hash.
      #    options[:foo]   # => true


      # This accepts Microsoft's EULA for corefonts. Deploying implies that you've accepted this as well
      #   http://corefonts.sourceforge.net/eula.htm

      file '/var/cache/preseeding',
        :ensure => :directory,
        :alias => 'preseeding directory'

      file '/var/cache/preseeding/msttcorefonts.seed',
        :ensure => :present,
        :content => template(File.join(File.dirname(__FILE__), '..', '..', 'templates','msttcorefonts.seed'))

      package 'msttcorefonts',
        :ensure => :installed,
        :responsefile => '/var/cache/preseeding/msttcorefonts.seed',
        :require => '/var/cache/preseeding/msttcorefonts.seed'

    end
    
  end
end
