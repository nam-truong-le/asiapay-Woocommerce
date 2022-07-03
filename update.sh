#!/bin/sh

./build.sh $1

ssh -i wordpress.pem bitnami@shop-dev.vietnam-immigrations.org "rm -rvf /bitnami/wordpress/wp-content/plugins/paydollar-payment-gateway-woocommerce/*"

scp -i wordpress.pem -vr ./paydollar-payment-gateway-woocommerce/* bitnami@shop-dev.vietnam-immigrations.org:/bitnami/wordpress/wp-content/plugins/paydollar-payment-gateway-woocommerce/
