echo "This is a patcher that creates an IOS31 WAD."
echo "This is only for the Wii, please don't install this on a Wii U."
echo "If you want to patch IOS 31 for Wii U, please download the other version."
echo "Please install Mono or else this won't work."
printf '\e[0;31m%s\e[0m \n' '1. Unpacking IOS31...'
mono Sharpii.exe WAD -u IOS31_v3864.wad IOS31/
printf '\e[0;31m%s\e[0m \n' '2. Patching the APP file with the new key...'
./xdelta3 -f -d -s ./IOS31/00000006.app 00000006.delta ./IOS31/00000006.app
printf '\e[0;31m%s\e[0m \n' '3. Packing the new IOS31...'
mkdir WAD
mono Sharpii.exe WAD -p IOS31/ WAD/IOS31.wad -f
printf '\e[0;31m%s\e[0m \n' '4. Cleaning up files... (Type Y if needed).'
rm -rf IOS31_v3864.wad
rm -rf IOS31-old/
rm -rf IOS31/
echo "We're done."