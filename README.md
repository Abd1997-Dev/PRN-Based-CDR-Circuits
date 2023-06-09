# PRN-Based-CDR-Circuits
## Pseudo Random Number based Clock and Data Recovery circuits.


The modules inside the soc increases as the technology scaling increases. The speed of the processor(or module) is increasing so that the speed of the communication line also should increase(i.e. communication bandwidth). To solve that parallel communication lines are used. but many parallel communication lines cannot be used because of the crosstalk and timing skew issues. Thus, a upper limit for the usage of the parallel communication links has arrived. The other reasons are large area of silicon, uneconomical and impractical if we use parallel links. So the serial links are the only solution.


<p align="center">
<img src="https://github.com/Abd1997-Dev/PRN-Based-CDR-Circuits/assets/73669849/87046aba-7341-4e40-baf2-46a888475a1c" width="400" height="200">
</p>
<p align = "center">
Fig. 1 - SERDES<sup>[1]</sup>
</p>


<p align="center">
<img src="https://github.com/Abd1997-Dev/PRN-Based-CDR-Circuits/assets/73669849/23b50680-43b6-4b08-8ff6-800a432cf10a" width="400" height="200">
</p>
<p align = "center">
Fig. 2 - Intermodule communication system with a simplified top level block diagram<sup>[1]</sup>
</p>


The problem with the point to point serial link is high dynamic power consumption. Because of the charging and the discharging of the capacitance presence in the transmission line.


<p align="center">
<img src="https://github.com/Abd1997-Dev/PRN-Based-CDR-Circuits/assets/73669849/8cf6801e-b842-47bf-8108-c09ad51716e5" width="400" height="200">
</p>
<p align = "center">
Fig. 2 - Capacitance model in the transmission line<sup>[1]</sup>
</p>

The power expression is,


<p align = "center">
C = Q/V
</p>

<p align = "center">
I = Q/T
</p>

<p align = "center">
I = (C*V<sub>dd</sub>)/T
</p>

<p align = "center">
I = (C*V<sub>dd</sub>)F
</p>

<p align = "center">
P = V<sub>dd</sub>*I
</p>

The final power expression is, 

<p align = "center">
P = C*V<sub>dd</sub><sup>2</sup>*F
</p>

In the final power expression the capacitance cannot be changed, voltage is based on the technology, and the frequencey is the only possibility to change. so we have to reduce the switching frequency without affecting the bandwidth of the communication much. Thus, the clock and data recovery circuit with the reduced frequency operation is required.

In a study publised in research paper<sup>[1]</sup> shows that the receiver circuit is power hungry and it consumes 60% of the total power of the transceiver. Out of that, CDR consumes 30% of the power. Thus, the CDR is the most power hungry circuit ot power consuming block among other blocks of the serial data link.

To avoid this high dynamic power consumption, in this project the internally generated clocks with 1/8<sup>th</sup> the frequency of the input datastream. Thus, this kind of the Serial links are used in the SOC frequently.


### Circuit Implementation<sup>[2]</sup>
There are four building blocks like 
#### (i) PRN Sequence Generator
#### (ii) DCO based 16 phase generator
#### (iii) Early Late Phase Detector
#### (iv) Delay Line Controller

All the verilog code for this four building blocks are added with this repository.

### References
##### [1] M. Alser, M. Assaad, F. Azmadi Hussin, and I.Yohannes, "Design and FPGA Implemennattion of PLL-based Quarter-rate Clock and Data recovery Circuit," in 4th International Conference on Intelligent and Advanced Systems, 2012.



#####  [2] S. Ghuguloth, S. Todima, S. Pastham, B. Pradeep Kumar, and C.Sekhar paidimarry, "Design of PRN bsed Octa-rate clock and Data recovery Circuit using FPGA," in International Conference on Signal and Information Processing, 2016.



