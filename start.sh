if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tokyo42/Filterbot1.git /Filterbot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filterbot1
fi
cd /Filterbot1
pip3 install -U -r requirements.txt
echo "🍃Starting Bot🍃...."
python3 bot.py
