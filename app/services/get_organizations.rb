class Organization
  def self.get_organizations
  response = RestClient.get('http://localhost:3001/organizations?category=Homelessness')
  JSON.parse(response)
  end
end
