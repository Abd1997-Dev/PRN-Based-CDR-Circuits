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


