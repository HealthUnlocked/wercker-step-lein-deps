# Restore previously cached libraries
cp $WERCKER_CACHE_DIR/lein-deps ~/.m2/repository/

lein deps

# Cache updated libraries
cp ~/.m2/repository $WERCKER_CACHE_DIR/lein-deps
