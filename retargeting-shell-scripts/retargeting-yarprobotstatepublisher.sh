#!/bin/bash

xterm -title "Yarprobostatepublisher Human" -e "yarprobotstatepublisher --period 0.0001 --name-prefix Human --tf-prefix /Human/ --model humanSubject01_66dof.urdf --reduced-model true --base-frame Pelvis --jointstates-topic "/Human/joint_states"" &
xterm -title "Yarprobostatepublisher iCub" -e "yarprobotstatepublisher --period 0.0001 --name-prefix iCub --tf-prefix /iCub/ --model teleoperation_iCub_model_V_2_5.urdf --reduced-model true --base-frame root_link_fake --jointstates-topic "/iCub/joint_states"" &
xterm -title "Yarprobostatepublisher Walkman" -e "yarprobotstatepublisher --period 0.0001 --name-prefix Walkman --tf-prefix /Walkman/ --model walkman.urdf --reduced-model true --base-frame base_link --jointstates-topic "/Walkman/joint_states"" &
xterm -title "Yarprobostatepublisher Atlas" -e "yarprobotstatepublisher --period 0.0001 --name-prefix Atlas --tf-prefix /Atlas/ --model atlas.urdf --reduced-model true --base-frame pelvis --jointstates-topic "/Atlas/joint_states"" &
#xterm -title "Yarprobostatepublisher Nao" -e "yarprobotstatepublisher --period 0.0001 --name-prefix Nao --tf-prefix /Nao/ --model nao.urdf --reduced-model true --base-frame base_link --jointstates-topic "/Nao/joint_states"" &
#xterm -title "Yarprobostatepublisher Baxter" -e "yarprobotstatepublisher --period 0.0001 --name-prefix Baxter --tf-prefix /Baxter/ --model baxter.urdf --reduced-model true --base-frame base --jointstates-topic "/Baxter/joint_states"" &
