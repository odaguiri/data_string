module DataString
  class Config
    def mapper
      @mapper ||= file('data_string.yml')
    end

    private

    def file(name)
      file_path = [DataString.root, 'config', name].join('/')
      YAML.load ERB.new(File.read(file_path)).result
    end
  end
end
