v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -250 200 -150 {lab=A}
N 240 -220 240 -180 {lab=#net1}
N 240 -310 240 -280 {lab=VP}
N 240 -320 240 -310 {lab=VP}
N 240 -250 320 -250 {lab=VP}
N 320 -320 320 -250 {lab=VP}
N 240 -320 320 -320 {lab=VP}
N 240 -150 320 -150 {lab=VN}
N 320 -150 320 -80 {lab=VN}
N 240 -80 320 -80 {lab=VN}
N 240 -200 340 -200 {lab=#net1}
N 100 -200 200 -200 {lab=A}
N 240 -340 240 -320 {lab=VP}
N 240 -120 240 -80 {lab=VN}
N 240 -80 240 -60 {lab=VN}
C {sky130_fd_pr/nfet_01v8.sym} 220 -150 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 220 -250 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 240 -340 0 0 {name=p1 lab=VP}
C {iopin.sym} 240 -60 0 0 {name=p2 lab=VN}
C {ipin.sym} 100 -200 0 0 {name=p3 lab=A}
C {opin.sym} 340 -200 0 0 {name=p4 lab=Y}
