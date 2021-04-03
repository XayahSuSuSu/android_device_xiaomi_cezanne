#!/vendor/bin/sh

marketname=`getprop ro.product.marketname`
if [ "$marketname" != "" ];then
    echo "$marketname" > /config/usb_gadget/g1/strings/0x409/product
else
    echo "$(getprop ro.product.model)" > /config/usb_gadget/g1/strings/0x409/product
fi
