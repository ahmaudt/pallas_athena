# config/initializers/bootstrap_form.rb

module BootstrapForm
  module FormGroup
    def form_group_classes(options)
      classes = ['mb-3', options[:class].try(:split)].flatten.compact
      classes << 'form-floating' if options[:layout] == :floating
      # classes << 'row' if horizontal_group_with_gutters?(options[:layout], classes)
      classes << 'col-auto g-3' if field_inline_override?(options[:layout])
      classes << feedback_class if options[:icon]
      classes
    end

    def form_group_content(label, help_text, options, &block)
      if group_layout_horizontal?(options[:layout])
        concat(label).concat(tag.div(capture(&block) + help_text, class: form_group_control_class(options)))
      elsif options[:layout] == :floating
        concat(capture(&block))
        concat(label)
        concat(help_text) if help_text
      else
        concat(label)
        concat(capture(&block))
        concat(help_text) if help_text
      end
    end
  end
end

BootstrapForm.configure do |c|
  c.default_form_attributes = {} # to make forms W3C compliant
end


