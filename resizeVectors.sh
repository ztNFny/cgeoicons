#! /bin/sh
cd ~/gitwork/cgeo/main/res/drawable/
sed -i 's/android:width="30dp"/android:width="36dp"/g' marker.xml
sed -i 's/android:height="30dp"/android:height="36dp"/g' marker.xml
sed -i 's/android:width="30dp"/android:width="36dp"/g' marker_nopin.xml
sed -i 's/android:height="30dp"/android:height="36dp"/g' marker_nopin.xml
sed -i 's/android:width="24dp"/android:width="12dp"/g' dot*.xml
sed -i 's/android:height="24dp"/android:height="12dp"/g' dot*.xml
sed -i 's/android:width="24dp"/android:width="12dp"/g' marker*.xml
sed -i 's/android:height="24dp"/android:height="12dp"/g' marker*.xml
sed -i 's/android:height="24dp"/android:height="22dp"/g' type*.xml
sed -i 's/android:width="24dp"/android:width="22dp"/g' type*.xml
#sed -i 's/android:viewportHeight="24">/android:viewportHeight="26"><group android:translateY="2">/g' type*.xml
#sed -i 's/<\/vector>/<\/group><\/vector>/g' type*.xml
#sed -i 's/android:height="24dp"/android:height="26dp"/g' waypoint*.xml
#sed -i 's/android:viewportHeight="24">/android:viewportHeight="26"><group android:translateY="2">/g' waypoint*.xml
#sed -i 's/<\/vector>/<\/group><\/vector>/g' waypoint*.xml