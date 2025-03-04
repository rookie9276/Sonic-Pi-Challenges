use_bpm 57
use_synth :piano
play_chord [:C5, :Eb5, :G5], sustain: 2, release: 1
play_chord [:C3, :F3, :C4], sustain: 2, release: 2
sleep 1
play_chord [:C5, :E5, :G5], sustain: 2, release: 1
sleep 1


play_chord [:Ab2, :Eb3, :E4], sustain: 2, release: 4
play_chord [:C5, :Ab4, :Eb4], sustain: 2, release: 1
sleep 1

3.times do
  play_chord [:C5, :Ab4, :Eb4], sustain: 2, release: 1
  sleep 1
end

play_chord [:E4, :G4, :Bb4], sustain: 2, release: 1
play_chord [:E2, :Bb2, :Eb3], sustain: 2, release: 4
sleep 1

play_chord [:B3, :E4, :G4], sustain: 2, release: 1
sleep 1

play_chord [:E4, :C4, :G3], sustain: 2, release: 1
play_chord [:C2, :G2, :C3], sustain: 2, release: 8
sleep 1

7.times do
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  sleep 1
end


4.times do
  play_chord [:C5, :Eb5, :G5], sustain: 2, release: 1
  play_chord [:C3, :F3, :C4], sustain: 2, release: 2
  sleep 1
  play_chord [:C5, :E5, :G5], sustain: 2, release: 1
  sleep 1
  
  
  play_chord [:Ab2, :Eb3, :E4], sustain: 2, release: 4
  play_chord [:C5, :Ab4, :Eb4], sustain: 2, release: 1
  sleep 1
  
  3.times do
    play_chord [:C5, :Ab4, :Eb4], sustain: 2, release: 1
    sleep 1
  end
  
  play_chord [:E4, :G4, :Bb4], sustain: 2, release: 1
  play_chord [:E2, :Bb2, :Eb3], sustain: 2, release: 4
  sleep 1
  
  play_chord [:B3, :E4, :G4], sustain: 2, release: 1
  sleep 1
  
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  play_chord [:C2, :G2, :C3], sustain: 2, release: 8
  sleep 1
  
  3.times do
    play_chord [:E4, :C4, :G3], sustain: 2, release: 1
    sleep 1
  end
  
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  play_chord [:C2, :G2, :C3], sustain: 2, release: 3
  sleep 1
  
  2.times do
    play_chord [:E4, :C4, :G3], sustain: 2, release: 1
    sleep 1
  end
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  play_chord [:C3], sustain: 1.3, release: 1
  sleep 0.3
  play_chord [:E4], sustain: 2, release: 1
  sleep 0.7
end

2.times do
  play_chord [:F3, :B3, :D4, :F4], sustain: 2, release: 1
  play_chord [:F2, :B2], sustain: 2, release: 4
  sleep 1
  3.times do
    play_chord [:F3, :B3, :D4, :F4], sustain: 2, release: 1
    sleep 1
  end
  
  play_chord [:G3, :B3, :D4], sustain: 2, release: 1
  play_chord [:G2, :G1], sustain: 1, release: 4
  sleep 1
  
  3.times do
    play_chord [:G3, :B3, :D4], sustain: 2, release: 1
    sleep 1
    
  end
  play_chord [:A3, :C4, :F4], sustain: 2, release: 1
  play_chord [:F2, :F1], sustain: 2, release: 2
  sleep 1
  play_chord [:A3, :C4, :F4], sustain: 2, release: 1
  sleep 1
  
  play_chord [:F3, :A3, :Db4, :F4], sustain: 2, release: 1
  play_chord [:Db2, :Db3], sustain: 2, release: 2
  sleep 1
  play_chord [:F3, :A3, :D4, :F4], sustain: 2, release: 1
  sleep 1
  
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  play_chord [:C3, :C2], sustain: 2, release: 3
  sleep 1
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  sleep 1
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  play_chord [:C3, :C2], sustain: 2, release: 1
  sleep 0.8
  
  play_chord [:E4, :C4, :G3], sustain: 2, release: 1
  play_chord [:C3, :C2], sustain: 2, release: 1
  sleep 0.2
  
  play_chord [:C3, :C2], sustain: 2, release: 1
  play_chord [:C4, :G3], sustain: 2, release: 1
  sleep 0.3
  play_chord [:D4], sustain: 2, release: 2
  
  sleep 0.7
  
end
