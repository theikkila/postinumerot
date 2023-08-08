POSTCODE_HASH=`python3 hash.py`
python3 fetch.py
NEW_POSTCODE_HASH=`python3 hash.py`

if [ "$POSTCODE_HASH" != "$NEW_POSTCODE_HASH" ]; then
  echo "Postcodes updated! Tests passed!"
  exit 0;
fi

echo "Postcodes same as in previous build, failing tests and not updating packages!"
exit 1;
