#!/bin/sh

TARGET="paydollar-payment-gateway-woocommerce"
TARGET_ZIP="${TARGET}-v$1.zip"

echo "===Zip"
zip "$TARGET_ZIP" -r $TARGET
unzip -la "$TARGET_ZIP"
echo "===Success"
