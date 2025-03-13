use_bpm 120
use_synth :chiplead

define :mkn do |one, two|
  play one
  play two
  sleep 0.5
end

# m1
mkn :a4, :a5
mkn :a4, :a5
mkn :c5, :c6
mkn :a4, :a5

# m2
mkn :d5, :d6
mkn :a4, :a5
mkn :e5, :e6
mkn :e5, :e6

# m3
mkn :c5, :c6
mkn :c5, :c6
mkn :e5, :e6
mkn :c5, :c6

# m4
mkn :g5, :g6
mkn :c5, :c6
mkn :e5, :e6
mkn :c5, :c6

# m5
mkn :g4, :g5
mkn :g4, :g5
mkn :b4, :b5
mkn :g4, :g5

# m6
mkn :c5, :c6
mkn :g4, :g5
mkn :d5, :d6
mkn :c5, :c6

# m7
mkn :f4, :f5
mkn :f4, :f5
mkn :a4, :a5
mkn :f4, :f5

# m8
mkn :c5, :c6
mkn :f4, :f5
mkn :c5, :c6
mkn :b4, :b5
