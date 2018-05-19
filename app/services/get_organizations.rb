class Organization
  def self.get_homeless_organizations
    response = RestClient.get('http://localhost:3001/organizations?category=Homelessness')
      JSON.parse(response)
      if response.code == '200' then
      response.each do |response|
        puts response
        puts "#{response['name']['description']['address']['phone']['website']}"
      end
    end
  end
  def self.get_music_and_art_organizations
    response = RestClient.get('http://localhost:3001/organizations?category=Music+and+Art')
    JSON.parse(response)
  end
  def self.get_animal_welfare_organizations
    response = RestClient.get('http://localhost:3001/organizations?category=Animal+welfare')
    JSON.parse(response)
  end
end
