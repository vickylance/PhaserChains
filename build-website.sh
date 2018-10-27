# Clone phaser-ce
git clone https://github.com/photonstorm/phaser-ce.git
# Checkout latest published tag
cd phaser-ce
latesttag=$(git describe --tags)
echo checking out ${latesttag}
git checkout ${latesttag}
# Build the dist, docs and test stuff
yarn
yarn grunt
yarn test --fix
yarn test:build
yarn test:dist
yarn test:ts
cd ..

# Clone phaser 2 examples
git clone https://github.com/photonstorm/phaser-examples.git

# Generate data.js
python makedata.py

# Generate website
python build.py
