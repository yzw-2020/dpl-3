# python test.py \
# --config_file configs/Market/resnet_base.yml \
# TEST.NECK_FEAT "('before')" \
# OUTPUT_DIR "('./logs/market1501')" \
# TEST.WEIGHT "('./logs/market1501')"

# python test.py \
# --config_file configs/Market/resnet_base.yml \
# TEST.NECK_FEAT "('after')" \
# OUTPUT_DIR "('./logs/market1501')" \
# TEST.WEIGHT "('./logs/market1501')"

# python test.py \
# --config_file configs/Market/resnet_base.yml \
# TEST.NECK_FEAT "('before')" \
# OUTPUT_DIR "('./logs/market1501_Adam')" \
# TEST.WEIGHT "('./logs/market1501_Adam')"

python test.py \
--config_file configs/Market/resnet_base.yml \
TEST.NECK_FEAT "('after')" \
OUTPUT_DIR "('./logs/market1501_Adam')" \
TEST.WEIGHT "('./logs/market1501_Adam')"