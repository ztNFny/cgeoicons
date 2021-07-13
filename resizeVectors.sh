#! /bin/sh
sed -i 's/android:width="24dp"/android:width="12dp"/g' dot*.xml
sed -i 's/android:height="24dp"/android:height="12dp"/g' dot*.xml
sed -i 's/android:width="24dp"/android:width="13dp"/g' marker*.xml
sed -i 's/android:height="24dp"/android:height="13dp"/g' marker*.xml
sed -i 's/android:height="24dp"/android:height="25.7dp"/g' type*.xml
sed -i 's/android:viewportHeight="24">/android:viewportHeight="25.7"><group android:translateY="1.7">/g' type*.xml
sed -i 's/<\/vector>/<\/group><\/vector>/g' type*.xml
sed -i 's/android:height="24dp"/android:height="25.7dp"/g' waypoint*.xml
sed -i 's/android:viewportHeight="24">/android:viewportHeight="25.7"><group android:translateY="1.7">/g' waypoint*.xml
sed -i 's/<\/vector>/<\/group><\/vector>/g' waypoint*.xml
