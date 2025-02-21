# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano
# Measure 2

define :mtwo_eight do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end
# Measure 3
define :mthree_four_six do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end
# Measure 5
define :mfive_seven do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end
# do NOT change this live_loop!
live_loop:background_notes do
  play:E3, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  play:E4, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  sleep 1
  play:E4, amp: 0.25
  sleep 1
  
  play:E3, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  play:E4, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  sleep 1
  play:E4, amp: 0.5
  sleep 1
  
  play:E3, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  play:E4, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  sleep 1
  play:E4, amp: 0.75
  sleep 1
  
  5.times do
    play:E3, amp: 1
    sleep 1
    play:B3, amp: 1
    play:E4, amp: 1
    sleep 1
    play:B3, amp: 1
    sleep 1
    play:E4, amp: 1
    sleep 1
  end
  stop
end
live_loop :layer3 do
  16.times do
    sample"C:/Users/james_auton/Downloads/echoing-burp_80bpm.wav"
    sleep 2
  end
  sample :drum_heavy_kick
  sample"C:/Users/james_auton/Downloads/dark-distorto-bass-relentless-terror_177bpm_G_major.wav", amp: 3
  sample"C:/Users/james_auton/Downloads/echoing-burp_80bpm.wav"
  sleep 3
  sample "C:/Users/james_auton/Downloads/fnf-type-vocals-gardenimax_177bpm_C_minor.wav"
  sample "C:/Users/james_auton/Downloads/audiomass-output.mp3", amp: 4
  sleep 3
  sample "C:/Users/james_auton/Downloads/audiomass-output (1).mp3"
  
  sleep 9
  sample "C:/Users/james_auton/Downloads/vine-boom_125bpm_G.wav", amp: 3
  stop
end

# optimize the 8 measures below with FUNCTIONS!
# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

mtwo_eight

mthree_four_six

mthree_four_six

mfive_seven

mthree_four_six

mfive_seven

mtwo_eight
