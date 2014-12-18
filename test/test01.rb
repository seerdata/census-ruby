require '../lib/client'
require '../lib/request'

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], dataset: 'SF1')
#data = @client.where({ fields: 'P0010001', level: 'COUNTY:001', within: 'STATE:06' })
# new mexico
#data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:35' })
# oregon
#data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:41' })
data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:06' })
puts data
