mkdir -p ~/.m2/repository

# Restore previously cached libraries
cp -r $WERCKER_CACHE_DIR/lein-deps ~/.m2/repository/

lein deps

# Cache updated libraries
cp -r ~/.m2/repository $WERCKER_CACHE_DIR/lein-deps
