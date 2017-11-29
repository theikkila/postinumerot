import json
import hashlib

def file_md5(filename):
    return hashlib.md5(open(filename, 'rb').read()).hexdigest()

def obj_md5(obj):
    return hashlib.md5(json.dumps(obj).encode('utf-8')).hexdigest()

postcode_map = json.load(open('postcode_map.json', 'r'))
postcodes = json.load(open('postcodes.json', 'r'))

for postcode, place in postcode_map.items():
    del place['date']
    postcode_map[postcode] = place

npostcodes = []
for place in postcodes:
    del place['date']
    npostcodes.append(place)


print(
    file_md5('postcode_map_light.json') +
    obj_md5(postcodes) +
    obj_md5(npostcodes)
    )
