H = H
L = L
v = v
@(x) sqrt(2*g*H)*tanh(sqrt(2*g*H)/(2*L)*t)-v

H = 13.5
L = 3.75
v = 1
@(t) sqrt(2*9.81*13.5)*tanh(sqrt(2*9.81*13.5)/(2*3.75)*t)-1

# test 1: v1 = 1 m/s
Test name: 
test1

Setup command:
sudo apt update && sudo apt install octave octave-symbolic

Run command: 
octave --eval "tr = exercicio1(@(t) sqrt(2*9.81*13.5)*tanh(sqrt(2*9.81*13.5)/(2*3.75)*t)-1, 0, 10); assert(tr, 0.0283, 0.01)"

# test 2: v2 = 5 m/s
Test name: 
test1

Setup command:
sudo apt update && sudo apt install octave octave-symbolic

Run command: 
octave --eval "tr = exercicio1(@(t) sqrt(2*9.81*13.5)*tanh(sqrt(2*9.81*13.5)/(2*3.75)*t)-5, 0, 10); assert(tr, 0.1463, 0.01)"

# test 1: v1 = 1 m/s
Test name: 
test1

Setup command:
sudo apt update && sudo apt install octave octave-symbolic

Run command: 
octave --eval "tr = exercicio1(@(t) sqrt(2*9.81*13.5)*tanh(sqrt(2*9.81*13.5)/(2*3.75)*t)-12.5, 0, 10); assert(tr, 0.4680, 0.01)"
