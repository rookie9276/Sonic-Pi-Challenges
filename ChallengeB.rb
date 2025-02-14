#CHALLENGE B: Stranger Things Progression
use_bpm 160
use_synth :prophet

#Starter Beat
live_loop :main_theme do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end
sleep 8
# Total Sleep = 8
live_loop :beat do
  sample :drum_snare_soft
  sleep 8
end
sleep 8
 
live_loop :spooky do
  sample :hat_snap
  sleep 8
end

live_loop :chill do
  sample :hat_zap
  sleep 4
end

live_loop :bass do
  sample :bass_hard_c
  sleep 16
end
