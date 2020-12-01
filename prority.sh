find -name AndroidManifest.xml |while read manifest;do
    packagename="$(xmlstarlet sel -t -m '//manifest' -v @package -n $manifest)";
    priority="$(xmlstarlet sel -t -m '//overlay' -v @android:priority -n $manifest)";
    echo -e "$priority\t$packagename";
done
