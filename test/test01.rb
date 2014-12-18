require '../lib/client'
require '../lib/request'

@client = CensusApi::Client.new(ENV['CENSUS_API_KEY'], dataset: 'SF1')

# CSA New Mexico
#data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:35' })
# CSA Oregon
#data = @client.where({ fields: 'P0010001', level: 'CSA', within: 'STATE:41' })

# State
#data = @client.where({ fields: 'P0010001', level: 'STATE' })

# County
#data = @client.where({ fields: 'P0010001', level: 'COUNTY' })
# Counties New Mexico
#data = @client.where({ fields: 'P0010001', level: 'COUNTY', within: 'STATE:35' })
# Counties Oregon
#data = @client.where({ fields: 'P0010001', level: 'COUNTY', within: 'STATE:41' })
# Bernalillo County
#data = @client.where({ fields: 'P0010001', level: 'COUNTY:001', within: 'STATE:35' })

# Places in New Mexico
#data = @client.where({ fields: 'P0010001', level: 'PLACE', within: 'STATE:35' })
# Silver City in New Mexico
data = @client.where({ fields: 'P0010001', level: 'PLACE:73260', within: 'STATE:35' })

puts data
