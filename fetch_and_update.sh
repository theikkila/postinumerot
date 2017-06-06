POSTCODE_HASH=`cat postcode_map_light.json postcode_map.json postcodes.json | md5`
python fetch.py
NEW_POSTCODE_HASH=`cat postcode_map_light.json postcode_map.json postcodes.json | md5`

if [ "$POSTCODE_HASH" != "$NEW_POSTCODE_HASH" ]; then
  echo "Postcodes updated! Tests passed!"
  exit 0;
fi

echo "Postcodes same as in previous build, failing tests and not updating packages!"
exit 1;
