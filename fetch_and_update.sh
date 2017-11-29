POSTCODE_HASH=`python hash.py`
python fetch.py
NEW_POSTCODE_HASH=`python hash.py`

if [ "$POSTCODE_HASH" != "$NEW_POSTCODE_HASH" ]; then
  echo "Postcodes updated! Tests passed!"
  exit 0;
fi

echo "Postcodes same as in previous build, failing tests and not updating packages!"
exit 1;
