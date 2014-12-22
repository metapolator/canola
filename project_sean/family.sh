#! /usr/bin/env bash
SUBSET="$(cat ./current_subset.txt)"
BASEUFO="base.ufo";

cd project.mp;

# metapolator export -g "$SUBSET" blackcompressed ../ufos/blackcompressed.ufo;
# metapolator export -g "$SUBSET" blackwide ../ufos/blackwide.ufo;
# metapolator export -g "$SUBSET" thinwide ../ufos/thinwide.ufo;
# metapolator export -g "$SUBSET" thincompressed ../ufos/thincompressed.ufo;

metapolator export -g "$SUBSET" compressedthin ../ufos/compressedthin.ufo;
metapolator export -g "$SUBSET" compressedextraligth ../ufos/compressedextraligth.ufo; 
metapolator export -g "$SUBSET" compressedlight ../ufos/compressedlight.ufo;
metapolator export -g "$SUBSET" compressedregular ../ufos/compressedregular.ufo;
metapolator export -g "$SUBSET" compressedmedium ../ufos/compressedmedium.ufo;
metapolator export -g "$SUBSET" compressedsemibold ../ufos/compressedsemibold.ufo;
metapolator export -g "$SUBSET" compressedbold ../ufos/compressedbold.ufo;
metapolator export -g "$SUBSET" compressedextrabold ../ufos/compressedextrabold.ufo;
metapolator export -g "$SUBSET" compressedblack ../ufos/compressedblack.ufo;

metapolator export -g "$SUBSET" condensedthin ../ufos/condensedthin.ufo;
metapolator export -g "$SUBSET" condensedextralight ../ufos/condensedextralight.ufo;
metapolator export -g "$SUBSET" condensedlight ../ufos/condensedlight.ufo;
metapolator export -g "$SUBSET" condensedregular ../ufos/condensedregular.ufo;
metapolator export -g "$SUBSET" condensedmedium ../ufos/condensedmedium.ufo;
metapolator export -g "$SUBSET" condensedsemibold ../ufos/condensedsemibold.ufo;
metapolator export -g "$SUBSET" condensedbold ../ufos/condensedbold.ufo;
metapolator export -g "$SUBSET" condensedextrabold ../ufos/condensedextrabold.ufo;
metapolator export -g "$SUBSET" condensedblack ../ufos/condensedblack.ufo;

metapolator export -g "$SUBSET" narrowthin ../ufos/narrowthin.ufo;
metapolator export -g "$SUBSET" narrowextralight ../ufos/narrowextralight.ufo;
metapolator export -g "$SUBSET" narrowlight ../ufos/narrowlight.ufo;
metapolator export -g "$SUBSET" narrowregular ../ufos/narrowregular.ufo;
metapolator export -g "$SUBSET" narrowmedium ../ufos/narrowmedium.ufo;
metapolator export -g "$SUBSET" narrowsemibold ../ufos/narrowsemibold.ufo;
metapolator export -g "$SUBSET" narrowbold ../ufos/narrowbold.ufo;
metapolator export -g "$SUBSET" narrowextrabold ../ufos/narrowextrabold.ufo;
metapolator export -g "$SUBSET" narrowblack ../ufos/narrowblack.ufo;

metapolator export -g "$SUBSET" normalthin ../ufos/normalthin.ufo;
metapolator export -g "$SUBSET" normalextralight ../ufos/normalextralight.ufo;
metapolator export -g "$SUBSET" normallight ../ufos/normallight.ufo;
metapolator export -g "$SUBSET" normalregular ../ufos/normalregular.ufo;
metapolator export -g "$SUBSET" normalmedium ../ufos/normalmedium.ufo;
metapolator export -g "$SUBSET" normalsemibold ../ufos/normalsemibold.ufo;
metapolator export -g "$SUBSET" normalbold ../ufos/normalbold.ufo;
metapolator export -g "$SUBSET" normalextrabold ../ufos/normalextrabold.ufo;
metapolator export -g "$SUBSET" normalblack ../ufos/normalblack.ufo;

metapolator export -g "$SUBSET" widethin ../ufos/widethin.ufo;
metapolator export -g "$SUBSET" wideextralight ../ufos/wideextralight.ufo;
metapolator export -g "$SUBSET" widelight ../ufos/widelight.ufo;
metapolator export -g "$SUBSET" wideregular ../ufos/wideregular.ufo;
metapolator export -g "$SUBSET" widemedium ../ufos/widemedium.ufo;
metapolator export -g "$SUBSET" widesemibold ../ufos/widesemibold.ufo;
metapolator export -g "$SUBSET" widebold ../ufos/widebold.ufo;
metapolator export -g "$SUBSET" wideextrabold ../ufos/wideextrabold.ufo;
metapolator export -g "$SUBSET" wideblack ../ufos/wideblack.ufo;
