stNotes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]
i=0
use_bpm 160
use_synth :saw
live_loop :main_theme do
  with_fx :distortion do
    8.times do
      play(stNotes[i])
      sleep 0.5
      i=i+1
    end
    i=0
  end
end

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25
pklay = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2]
slep = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]
i = 0
live_loop :white_stripes do
  8.times do
    play (pklay[i])
    sleep (slep[i])
    i = i + 1
  end
  i = 0
end
