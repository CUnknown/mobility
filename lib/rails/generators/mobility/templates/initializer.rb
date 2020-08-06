Mobility.configure do |config|
  # PLUGINS

  config.plugins do
    # Backend
    #
    # Sets the default backend to use in models. This can be overridden in models
    # by passing +backend: ...+ to +translates+.
    #
    # To default to a different backend globally, replace +:key_value+ by another
    # backend name.
    #
    backend default: :key_value

    # ActiveRecord
    #
    # Defines ActiveRecord as ORM, and enables ActiveRecord-specific plugins.
    active_record

    # Accessors
    #
    # Define reader and writer methods for translated attributes. Remove either
    # to disable globally, or pass +reader: false+ or +writer: false+ to
    # +translates+ in any translated model.
    #
    reader
    writer

    # Query
    #
    # Defines a scope on the model class which allows querying on
    # translated attributes. The default scope is named +i18n+, pass a different
    # name as default to change the global default, or to +translates+ in any
    # model to change it for that model alone.
    #
    query

    # Cache
    #
    # Comment out to disable caching reads and writes.
    #
    cache

    # Dirty
    #
    # Uncomment this line to include and enable globally:
    # dirty
    #
    # Or uncomment this line to include but disable by default, and only enable
    # per model by passing +dirty: true+ to +translates+.
    # dirty, default: false

    # Fallbacks
    #
    # Uncomment line below to enable fallbacks, using +I18n.fallbacks+.
    # fallbacks
    #
    # Or uncomment this line to enable fallbacks with a global default.
    # fallbacks, default: { :pt => :en }

    # Presence
    #
    # Converts blank strings to nil on reads and writes. Comment out to
    # disable.
    #
    presence

    # Default
    #
    # Set a default translation per attributes. When enabled, passing +default:
    # 'foo'+ sets a default translation string to show in case no translation is
    # present. Can also be passed a proc.
    #
    # default

    # Fallthrough Accessors
    #
    # Uses method_missing to define locale-specific accessor methods like
    # +title_en+, +title_en=+, +title_fr+, +title_fr=+ for each translated
    # attribute. If you know what set of locales you want to support, it's
    # generally better to use Locale Accessors (or both together) since
    # +method_missing+ is very slow.  (You can use both fallthrough and locale
    # accessor plugins together without conflict.)
    #
    # fallthrough_accessors

    # Locale Accessors
    #
    # Uses +def+ to define accessor methods for a set of locales. By default uses
    # +I18n.available_locales+, but you can pass the set of locales with
    # +translates+ and/or set a global default here.
    #
    # locale_accessors
    #
    # Or define specific defaults by uncommenting line below
    # locale_accessors default: [:en, :ja]
  end

  # You can also include backend-specific default options. For example, if you
  # want to default to using the text-type translation table with the KeyValue
  # backend, you can set that as a default by uncommenting this line, or change
  # it to :string to default to the string-type translation table instead. (For
  # other backends, this option is ignored.)
  #
  # default :type, :text

  # OTHER CONFIGURATION

  # By default, Mobility uses the +translates+ class method in models to
  # describe translated attributes, but you can configure this method to be
  # whatever you like. This may be useful if using Mobility alongside another
  # translation gem which uses the same method name.
  config.accessor_method = :translates
end
