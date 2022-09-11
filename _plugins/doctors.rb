module Jekyll
  class DoctorPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'doctor'
        dir = site.config['doctor_dir'] || ''
        date = Date.today
        data = read_data_object('doctors.json', site)
        data.each do |doctor|
          next unless doctor['state']
          next if doctor['state'].length != 2
          next if doctor['state'].count("/\A[a-zA-Z]*\z/") != 2
          categories = [doctor['city'], doctor['state'], doctor['zipcode']]
          formatted_name = doctor['name'].gsub(/\s+/, '-').downcase
          file_name = "#{formatted_name}.html"
          file_dir1 = "#{doctor['state']&.gsub(/\s+/, "")&.upcase}/#{doctor['city'].gsub(/\s+/, "")}"
          site.pages << DoctorPage.new(site, site.source, File.join(file_dir1, ''), doctor, file_name)
        end
      end
    end

    def read_data_object(filename, site)
      data_path = File.join(site.config['source'], '_data')
      if File.symlink?(data_path)
        return "Data directory '#{data_path}' cannot be a symlink"
      end
      file = File.join('_data', filename)

      return "File #{file} could not be found" if !File.exists?( file )
      
      result = nil
      Dir.chdir(data_path) do
        result = File.read( filename )
      end
      puts "## Error: No data in #{file}" if result.nil?
      # puts result
      result = JSON.parse( result ) if result
    end
  end

  # A Page subclass used in the `CategoryPageGenerator`
  class DoctorPage < Page
    def initialize(site, base, dir, doctor, file_name)
      @site = site
      @base = base
      @dir  = dir
      @name = file_name

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'doctor.html')
      self.data['doctor_name'] = doctor['name']
      self.data['img_url'] = doctor['img_url']
      self.data['address1'] = doctor['address1']
      self.data['address2'] = doctor['address2']
      self.data['city'] = doctor['city']
      self.data['state'] = doctor['state']
      self.data['zipcode'] = doctor['zipcode']
      self.data['phone'] = doctor['phone']
      self.data['board_certifications'] = doctor['board_certifications']
      self.data['nbir_participant'] = doctor['nbir_participant']
      self.data['url'] = doctor['url']
      self.data['specialties'] = doctor['specialties']
      self.data['twitter'] = doctor['twitter']
      self.data['facebook'] = doctor['facebook']
      self.data['instagram'] = doctor['instagram']
      self.data['intro'] = doctor['advance'] ? doctor['advance']['intro'] : nil
      self.data['video_url'] = doctor['video_url']
      self.data['website'] = doctor['website']&.gsub(/\s+/, "")
      self.data['languages'] = doctor['languages']
      self.data['memberships'] = doctor['advance'] ? doctor['advance']['memberships'] : nil
      self.data['education'] = doctor['advance'] ? doctor['advance']['education'] : nil
      self.data['procedures'] = doctor['advance'] ? doctor['advance']['procedures'] : nil
      self.data['payment'] = doctor['advance'] ? doctor['advance']['payment'] : nil
      self.data['insurance'] = doctor['advance'] ? doctor['advance']['education'] : nil
      self.data['google_maps_url'] = "https://www.google.com/maps/place/#{doctor['address1']} #{doctor['address2']}, #{doctor['city']}, #{doctor['state']} #{doctor['zipcode']}"
      self.data['categories'] = [doctor['state'], doctor['zipcode'], doctor['city']].join(' ')
    end
  end
end


