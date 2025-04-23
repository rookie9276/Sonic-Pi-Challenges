define :introsong1 do 
  use_bpm 57
  use_synth :piano
  i=0.1
  intro = "C:/Users/djaut/Downloads/Intro.mp3"
  deadbeat = "C:/Users/djaut/Downloads/Dbeatt.mp3"
  
  
  define :mintro do
    2.times do
      sample intro
      sleep 13.4
    end
  end
  define :mone_piano do
    with_fx :reverb, room: 0.8 do
      play_chord [:C3, :F3, :C4], sustain: 2, release: 1
      2.times do
        play_chord [:C5, :E5, :G5], sustain: 2, release: 1
        sleep 1
      end
      #
      play_chord [:Ab2, :Eb3, :E4], sustain: 2, release: 4
      4.times do
        play_chord [:C5, :Ab4, :Eb4], sustain: 2, release: 1
        sleep 1
      end
      #
      play_chord [:E4, :G4, :Bb4], sustain: 2, release: 1
      play_chord [:E2, :Bb2, :Eb3], sustain: 2, release: 4
      sleep 1
      #
      play_chord [:B3, :E4, :G4], sustain: 2, release: 1
      sleep 1
      #
      play_chord [:C2, :G2, :C3], sustain: 2, release: 8
      8.times do
        play_chord [:E4, :C4, :G3], sustain: 2, release: 1
        sleep 1
      end
      
    end
  end
  
  
  define :marray do
    melody_notes = [:Ab4, :Db5, :Ab4, :Db5,  :Gb4, :Cb5, :Gb4, :Cb5]
    20.times do
      use_synth :prophet
      melody_notes.each do |note|
        play note, amp: 0.25
        sleep 0.25
      end
    end
    stop
  end
  
  
  
  #piano measure 2
  define :mtwo_piano do
    with_fx :reverb, room: 0.8 do
      
      play_chord [:C3, :F3, :C4], release: 1
      2.times do
        play_chord [:C5, :E5, :G5], release: 1
        sleep 1
      end
      #
      play_chord [:Ab2, :Eb3, :E4], release: 4
      4.times do
        play_chord [:C5, :Ab4, :Eb4], release: 1
        sleep 1
      end
      #
      play_chord [:E4, :G4, :Bb4], release: 1
      play_chord [:E2, :Bb2, :Eb3], release: 4
      
      sleep 1
      
      play_chord [:B3, :E4, :G4],  release: 1
      sleep 1
      
      play_chord [:E4, :C4, :G3], release: 1
      play_chord [:C2, :G2, :C3], release: 8
      sleep 1
      
      3.times do
        play_chord [:E4, :C4, :G3], release: 1
        sleep 1
      end
      
      play_chord [:E4, :C4, :G3], release: 1
      play_chord [:C2, :G2, :C3],  release: 3
      sleep 1
      
      2.times do
        play_chord [:E4, :C4, :G3],  release: 1
        sleep 1
      end
      play_chord [:E4, :C4, :G3], release: 1
      play_chord [:C3],  release: 1
      sleep 0.3
      play_chord [:E4], release: 1
      sleep 0.7
    end
  end
  
  
  
  define :mdrums do
    live_loop :drums do
      14.times do
        sample :drum_heavy_kick
        sample :drum_cymbal_hard
        sleep 1
        sample :drum_cymbal_pedal, sustain: 0.5
        sample :drum_snare_hard
        sleep 1
        sample :drum_heavy_kick
        sleep 0.25
        sample :drum_heavy_kick
        sleep 0.75
        sample :drum_cymbal_pedal, sustain: 0.5
        sample :drum_snare_hard
        2.times do
          sample :drum_heavy_kick
          sleep 0.5
        end
      end
      stop
    end
  end
  
  define :msample do
    16.times do
      i+=0.1
      sample deadbeat, amp: i
      sleep 2
    end
  end
  #piano measure 3
  define :mthree_piano do
    2.times do
      play_chord [:F2, :B2], release: 4
      4.times do
        play_chord [:F3, :B3, :D4, :F4], release: 1
        sleep 1
      end
      
      play_chord [:G2, :G1], release: 4
      4.times do
        play_chord [:G3, :B3, :D4], release: 1
        sleep 1
        
      end
      
      play_chord [:F2, :F1], release: 2
      2.times do
        play_chord [:A3, :C4, :F4], release: 1
        sleep 1
      end
      
      play_chord [:Db2, :Db3], release: 2
      2.times do
        play_chord [:F3, :A3, :D4, :F4], release: 1
        sleep 1
      end
      play_chord [:E4, :C4, :G3], release: 1
      play_chord [:C3, :C2], release: 3
      sleep 1
      play_chord [:E4, :C4, :G3], release: 1
      sleep 1
      play_chord [:E4, :C4, :G3], release: 1
      play_chord [:C3, :C2], sustain: 2, release: 1
      sleep 0.8
      
      play_chord [:E4, :C4, :G3],  release: 1
      play_chord [:C3, :C2],  release: 1
      sleep 0.2
      
      play_chord [:C3, :C2], release: 1
      play_chord [:C4, :G3],  release: 1
      sleep 0.3
      play [:D4],  release: 2
      
      sleep 0.7
      
    end
    stop
  end
  
  mintro
  mone_piano
  
  in_thread do
    mtwo_piano
  end
  in_thread do
    mdrums
  end
  in_thread do
    sleep 16
    marray
  end
  
  in_thread do
    sleep 16
    msample
  end
  
  in_thread do
    sleep 16
    mthree_piano
  end
  in_thread do
    sleep 56
    sample :ambi_haunted_hum, amp: 0.4, pitch: 0.1
    
  end
  
  
end
in_thread do
  sleep 1
  with_fx :flanger do
    with_fx :distortion do
      sample "C:/Users/djaut/Downloads/RealVocals1&2.mp3", amp: 2
    end
  end
end

define :interludesong2outro
use_bpm 80

#
#
live_loop :Atmos do
  10.times do
    sample :ambi_haunted_hum, amp: 0.4, pitch: 0.1
    sleep 10
  end
  stop
end
#
#
define :melody do |synth_type, amp_level, release_time, n1, n2, n3, n4|
  use_synth synth_type
  play n1, release: release_time, amp: amp_level
  sleep 1.5
  play n2, release: release_time, amp: amp_level
  sleep 0.5
  play n3, release: release_time, amp: amp_level
  sleep 1.5
  play n4, release: release_time, amp: amp_level
  sleep 0.5
end
#
#
define :mallsynth do
  live_loop :main1 do
    tick_reset
    16.times do
      melody :fm, 0.1, 3, 71, 79, 76, 71
    end
    stop
  end
  sleep 16
  #
  #
  live_loop :main2 do
    tick_reset
    12.times do
      melody :dark_ambience, 0.5, 3, 83, 91, 88, 83
    end
    stop
  end
  sleep 16
  #
  #
  live_loop :main3 do
    tick_reset
    8.times do
      melody :organ_tonewheel, 1, 1, 59, 67, 64, 59
    end
    stop
  end
  sleep 14.68
end
#
#
define :mdrumsintro do
  sample :drum_heavy_kick
  sleep 0.3
  sample :drum_cymbal_open, sustain: 0, release: 0.5
  sleep 0.5
  sample :drum_cymbal_pedal
  sleep 0.5
  live_loop :cymbal1 do
    15.times do
      sample :drum_cymbal_pedal
      sleep 1
    end
    stop
  end
  sleep 8
  live_loop :kick1 do
    7.times do
      sample :drum_heavy_kick
      sleep 1
    end
    stop
  end
  sleep 6.5
  
  live_loop :kick2 do
    2.times do
      sample :drum_heavy_kick
      sleep 0.5
    end
    stop
  end
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_tom_hi_hard, amp: 1.5
  sleep 0.5
  sample :drum_tom_lo_soft, sustain: 0, release: 0.7
  2.times do
    sample :drum_snare_hard
    sleep 0.25
  end
end

define :mdrums_second do
  live_loop :mdrums2 do
    8.times do
      sample :drum_heavy_kick
      sample :drum_splash_hard
      sleep 0.75
      sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 50, pan: -0.3
      sleep 0.75
      sample "C:/Users/djaut/Downloads/Tom2.mp3", amp: 50, pan: 0.6
      sleep 0.5
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 40, sustain: 2
      sleep 1.5
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 50, pan: -0.3
        sleep 0.25
      end
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 50, pan: -0.3
        sleep 0.75
      end
      sample "C:/Users/djaut/Downloads/Tom2.mp3", amp: 50, pan: 0.6
      sleep 0.5
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 40, sustain: 2
      sleep 0.5
      2.times do
        sample :drum_cymbal_pedal, amp: 0.5
        sleep 0.5
      end
      sample :drum_heavy_kick
      sleep 0.5
    end
    stop
  end
end


define :mdrums_2intro do
  live_loop :mdrumsecondintro do
    6.times do
      sample :drum_cymbal_pedal
      sleep 1
    end
    stop
  end
  sleep 6
  2.times do
    2.times do
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 40, sustain: 2
      sleep 0.25
    end
    sleep 0.25
    sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 50, pan: -0.3
    sleep 0.25
  end
end

define :mdrums_third do
  live_loop :mdrums3 do
    8.times do
      sample :drum_heavy_kick
      sample :drum_splash_hard
      sleep 0.75
      sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 100, pan: -0.3
      sleep 0.75
      sample "C:/Users/djaut/Downloads/Tom2.mp3", amp: 100, pan: 0.3
      sleep 0.5
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 90, sustain: 2
      sleep 1.5
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 100, pan: -0.3
        sleep 0.25
      end
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 100, pan: -0.3
        sleep 0.75
      end
      sample "C:/Users/djaut/Downloads/Tom2.mp3", amp: 100, pan: 0.3
      sleep 0.5
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 90, sustain: 2
      sleep 0.25
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 90, sustain: 2
      sleep 0.5
      sample :drum_heavy_kick
      sleep 0.25
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 90, sustain: 2
      sleep 0.25
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 90, sustain: 2
      sleep 0.5
      sample :drum_heavy_kick
      sleep 0.25
    end
    stop
  end
end

define :mdrums_3intro do
  live_loop :mdrumsecondintro do
    6.times do
      sample :drum_cymbal_pedal
      sleep 1
    end
    stop
  end
  sleep 6
  2.times do
    sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 100, sustain: 2
    sleep 0.25
  end
  2.times do
    sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 90, pan: -0.3
    sleep 0.25
  end
  2.times do
    sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 100, sustain: 2
    sleep 0.25
  end
  2.times do
    sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 90, pan: -0.3
    sleep 0.25
  end
  
end

define :mdrums_fourpointfive do
  live_loop :mdrums4 do
    4.times do
      sample :drum_splash_hard
      sleep 0.75
      sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 100, pan: -0.3
      sleep 0.75
      sample "C:/Users/djaut/Downloads/Tom2.mp3", amp: 100, pan: 0.3
      sleep 0.5
      sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 90, sustain: 2
      sleep 1
      sample :drum_heavy_kick, sustain: 1
      sleep 0.5
      2.times do
        sample"C:/Users/djaut/Downloads/Snare.mp3", amp: 100
        sleep 0.25
      end
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 100, pan: -0.3
        sleep 0.75
      end
      sample "C:/Users/djaut/Downloads/Tom2.mp3", amp: 100, pan: 0.3
      sleep 0.5
      2.times do
        sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 100, sustain: 2
        sleep 0.25
      end
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 80, pan: -0.3
        sleep 0.25
      end
      2.times do
        sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 100, sustain: 2
        sleep 0.25
      end
      2.times do
        sample"C:/Users/djaut/Downloads/Tom3.mp3", amp: 80, pan: -0.3
        sleep 0.25
      end
    end
    stop
  end
end
#
#
define :mdrums_fourpointeight do
  live_loop :mdrums8 do
    in_thread do
      16.times do
        sample :drum_splash_hard
        sleep 0.5
        sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 100
        sleep 0.5
      end
    end
    in_thread do
      128.times do
        sample :drum_heavy_kick, amp: 2
        sleep 0.125
      end
    end
    stop
  end
end
#
#
define :mdrums_fourpointnine do
  live_loop :mdrums9 do
    2.times do
      sample :drum_splash_hard
      i=0.5
      7.times do
        i+=0.3
        sample :drum_heavy_kick, amp: i
        sleep 1
      end
      4.times do
        sample "C:/Users/djaut/Downloads/Snare.mp3", amp: 50
        sample"C:/Users/djaut/Downloads/Tom3.mp3"
        sample :drum_heavy_kick, amp: 2
        sleep 0.25
      end
    end
    with_fx :flanger do
      sample "C:/Users/djaut/Downloads/Crashout.mp3"
    end
    2.times do
      sample :drum_splash_hard
      sleep 2
    end
    sample :drum_splash_hard
    sleep 0.5
    sample :drum_splash_hard
    sleep 9.5
    3.times do
      sample :drum_splash_hard
      sample :drum_heavy_kick
      sleep 1
    end
    sample "C:/Users/djaut/Downloads/Crashout.mp3"
    sleep 2
    sample :drum_splash_hard
    sleep 3
    sample :drum_splash_hard
    sleep 2
    sample :drum_splash_hard
    sample :drum_heavy_kick
    sleep 14
    3.times do
      sample :drum_splash_hard
      sample :drum_heavy_kick
      sleep 1
    end
    stop
  end
end
#
#
define :mBass do
  sleep 1
  live_loop :songsterrb do
    with_fx :flanger do
      with_fx :distortion do
        sample "C:/Users/djaut/Downloads/Bass.mp3", amp: 14
        stop
      end
    end
  end
end
#
#
define :mGuitars do
  live_loop :songsterrg do
    with_fx :flanger do
      with_fx :distortion do
        sample  "C:/Users/djaut/Downloads/Guitar1.mp3", amp: 18, pan: -0.75
        sleep 0.75
        sample "C:/Users/djaut/Downloads/Guitar2.mp3", amp: 18, pan: 0.75
      end
    end
    stop
  end
end
#
#
mallsynth
#
#
mdrumsintro
#
#
in_thread do
  sleep 17
  live_loop :main1 do
    tick_reset
    12.times do
      melody :fm, 0.25, 3, 71, 79, 76, 71
    end
    stop
  end
end
#
#
in_thread do
  mBass
end
#
#
in_thread do
  sleep 1
  mdrums_second
end
#
#
in_thread do
  sleep 65
  mdrums_2intro
end
#
#
in_thread do
  sleep 71.55
  mGuitars
end
#
#
in_thread do
  sleep 73
  melody_notes = [:G3, :D3, :G3, :D3, :F3, :G3, :D3, :G3]
  live_loop :array_melody do
    32.times do
      use_synth :zawa
      melody_notes.each do |note|
        play note, amp: 0.5
        sleep 0.25
      end
    end
    stop
  end
end
#
#
in_thread do
  sleep 73
  mdrums_third
end
#
#
in_thread do
  sleep 137
  mdrums_3intro
end
#
#
in_thread do
  sleep 145
  mdrums_fourpointfive
end
#
#
in_thread do
  sleep 177
  mdrums_fourpointeight
end
#
#
in_thread do
  sleep 193
  mdrums_fourpointnine
end
#
#
in_thread do
  sleep 145
  melody_notes = [:G3, :D3, :G3, :D3, :F3, :G3, :D3, :G3]
  live_loop :array_melody do
    with_fx :panslicer do
      32.times do
        use_synth :zawa
        melody_notes.each do |note|
          play note, amp: 0.25
          sleep 0.25
        end
      end
    end
    stop
  end
end
#
#
in_thread do
  sleep 145
  mallsynth
end
#
#
in_thread do
  tick_reset
  sleep 209
  live_loop :main1b do
    9.times do
      melody :fm, 0.35, 3, 71, 79, 76, 71
    end
    stop
  end
end

in_thread do
  sleep 145
  mallsynth
end

in_thread do
  sleep 258
  live_loop :fade_out_sample do
    with_fx :level, amp: 1 do |amp_fx|        with_fx :flanger do
        with_fx :distortion do
          sample_path = "C:/Users/djaut/Downloads/Outro.mp3"
          s = sample sample_path
                    in_thread do
            steps = 20
            fade = line(2, 0, steps: steps).ramp              
            duration = sample_duration(sample_path)
            
            fade.each do |a|
              control amp_fx, amp: a
              sleep duration / steps.to_f
            end
          end
        end
      end
    end
    
    stop  
  end
  
End
end
introsong1
interludesong2outro
