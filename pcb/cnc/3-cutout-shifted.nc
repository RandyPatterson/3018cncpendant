(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: 3018Pendant-B_Cu.gbr_cutout_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 23 January 2022 at 21:59)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.2 mm)
(Feedrate_XY: 100.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -1.8 mm)
(DepthPerCut: 0.5 mm <=>4 passes)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 5.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: Default_no_M6)

(X range:    0.4000 ...   58.7400  mm)
(Y range:    0.4000 ...   42.5202  mm)

(Spindle Speed: 1000.0 RPM)
G21
G90
G94

G01 F100.00

M5
G00 Z15.0000
G00 X0.0000 Y0.0000
T1
(MSG, Change to Tool Dia = 1.2000)
M0
G00 Z15.0000
        
M03 S1000.0
G4 P1.0
G01 F100.00
G00 X55.1400 Y0.4000
G01 F60.00
G01 Z-0.5000
G01 F100.00
G01 X4.0000 Y0.4000
G01 X3.6471 Y0.4173
G01 X3.2977 Y0.4692
G01 X2.9550 Y0.5550
G01 X2.6223 Y0.6740
G01 X2.3030 Y0.8251
G01 X1.9999 Y1.0067
G01 X1.7162 Y1.2172
G01 X1.4544 Y1.4544
G01 X1.2172 Y1.7162
G01 X1.0067 Y1.9999
G01 X0.8251 Y2.3030
G01 X0.6740 Y2.6223
G01 X0.5550 Y2.9550
G01 X0.4692 Y3.2977
G01 X0.4173 Y3.6471
G01 X0.4000 Y4.0000
G01 X0.4000 Y38.9202
G01 X0.4173 Y39.2731
G01 X0.4692 Y39.6225
G01 X0.5550 Y39.9652
G01 X0.6740 Y40.2979
G01 X0.8251 Y40.6172
G01 X1.0067 Y40.9203
G01 X1.2172 Y41.2040
G01 X1.4544 Y41.4658
G01 X1.7162 Y41.7030
G01 X1.9999 Y41.9135
G01 X2.3030 Y42.0951
G01 X2.6223 Y42.2462
G01 X2.9550 Y42.3652
G01 X3.2977 Y42.4510
G01 X3.6471 Y42.5029
G01 X4.0000 Y42.5202
G01 X55.1400 Y42.5202
G01 X55.4929 Y42.5029
G01 X55.8423 Y42.4510
G01 X56.1850 Y42.3652
G01 X56.5177 Y42.2462
G01 X56.8370 Y42.0951
G01 X57.1401 Y41.9135
G01 X57.4238 Y41.7030
G01 X57.6856 Y41.4658
G01 X57.9228 Y41.2040
G01 X58.1333 Y40.9203
G01 X58.3149 Y40.6172
G01 X58.4660 Y40.2979
G01 X58.5850 Y39.9652
G01 X58.6708 Y39.6225
G01 X58.7227 Y39.2731
G01 X58.7400 Y38.9202
G01 X58.7400 Y4.0000
G01 X58.7227 Y3.6471
G01 X58.6708 Y3.2977
G01 X58.5850 Y2.9550
G01 X58.4660 Y2.6223
G01 X58.3149 Y2.3030
G01 X58.1333 Y1.9999
G01 X57.9228 Y1.7162
G01 X57.6856 Y1.4544
G01 X57.4238 Y1.2172
G01 X57.1401 Y1.0067
G01 X56.8370 Y0.8251
G01 X56.5177 Y0.6740
G01 X56.1850 Y0.5550
G01 X55.8423 Y0.4692
G01 X55.4929 Y0.4173
G01 X55.1400 Y0.4000
G00 X55.1400 Y0.4000
G01 F60.00
G01 Z-1.0000
G01 F100.00
G01 X55.4929 Y0.4173
G01 X55.8423 Y0.4692
G01 X56.1850 Y0.5550
G01 X56.5177 Y0.6740
G01 X56.8370 Y0.8251
G01 X57.1401 Y1.0067
G01 X57.4238 Y1.2172
G01 X57.6856 Y1.4544
G01 X57.9228 Y1.7162
G01 X58.1333 Y1.9999
G01 X58.3149 Y2.3030
G01 X58.4660 Y2.6223
G01 X58.5850 Y2.9550
G01 X58.6708 Y3.2977
G01 X58.7227 Y3.6471
G01 X58.7400 Y4.0000
G01 X58.7400 Y38.9202
G01 X58.7227 Y39.2731
G01 X58.6708 Y39.6225
G01 X58.5850 Y39.9652
G01 X58.4660 Y40.2979
G01 X58.3149 Y40.6172
G01 X58.1333 Y40.9203
G01 X57.9228 Y41.2040
G01 X57.6856 Y41.4658
G01 X57.4238 Y41.7030
G01 X57.1401 Y41.9135
G01 X56.8370 Y42.0951
G01 X56.5177 Y42.2462
G01 X56.1850 Y42.3652
G01 X55.8423 Y42.4510
G01 X55.4929 Y42.5029
G01 X55.1400 Y42.5202
G01 X4.0000 Y42.5202
G01 X3.6471 Y42.5029
G01 X3.2977 Y42.4510
G01 X2.9550 Y42.3652
G01 X2.6223 Y42.2462
G01 X2.3030 Y42.0951
G01 X1.9999 Y41.9135
G01 X1.7162 Y41.7030
G01 X1.4544 Y41.4658
G01 X1.2172 Y41.2040
G01 X1.0067 Y40.9203
G01 X0.8251 Y40.6172
G01 X0.6740 Y40.2979
G01 X0.5550 Y39.9652
G01 X0.4692 Y39.6225
G01 X0.4173 Y39.2731
G01 X0.4000 Y38.9202
G01 X0.4000 Y4.0000
G01 X0.4173 Y3.6471
G01 X0.4692 Y3.2977
G01 X0.5550 Y2.9550
G01 X0.6740 Y2.6223
G01 X0.8251 Y2.3030
G01 X1.0067 Y1.9999
G01 X1.2172 Y1.7162
G01 X1.4544 Y1.4544
G01 X1.7162 Y1.2172
G01 X1.9999 Y1.0067
G01 X2.3030 Y0.8251
G01 X2.6223 Y0.6740
G01 X2.9550 Y0.5550
G01 X3.2977 Y0.4692
G01 X3.6471 Y0.4173
G01 X4.0000 Y0.4000
G01 X55.1400 Y0.4000
G00 X55.1400 Y0.4000
G01 F60.00
G01 Z-1.5000
G01 F100.00
G01 X4.0000 Y0.4000
G01 X3.6471 Y0.4173
G01 X3.2977 Y0.4692
G01 X2.9550 Y0.5550
G01 X2.6223 Y0.6740
G01 X2.3030 Y0.8251
G01 X1.9999 Y1.0067
G01 X1.7162 Y1.2172
G01 X1.4544 Y1.4544
G01 X1.2172 Y1.7162
G01 X1.0067 Y1.9999
G01 X0.8251 Y2.3030
G01 X0.6740 Y2.6223
G01 X0.5550 Y2.9550
G01 X0.4692 Y3.2977
G01 X0.4173 Y3.6471
G01 X0.4000 Y4.0000
G01 X0.4000 Y38.9202
G01 X0.4173 Y39.2731
G01 X0.4692 Y39.6225
G01 X0.5550 Y39.9652
G01 X0.6740 Y40.2979
G01 X0.8251 Y40.6172
G01 X1.0067 Y40.9203
G01 X1.2172 Y41.2040
G01 X1.4544 Y41.4658
G01 X1.7162 Y41.7030
G01 X1.9999 Y41.9135
G01 X2.3030 Y42.0951
G01 X2.6223 Y42.2462
G01 X2.9550 Y42.3652
G01 X3.2977 Y42.4510
G01 X3.6471 Y42.5029
G01 X4.0000 Y42.5202
G01 X55.1400 Y42.5202
G01 X55.4929 Y42.5029
G01 X55.8423 Y42.4510
G01 X56.1850 Y42.3652
G01 X56.5177 Y42.2462
G01 X56.8370 Y42.0951
G01 X57.1401 Y41.9135
G01 X57.4238 Y41.7030
G01 X57.6856 Y41.4658
G01 X57.9228 Y41.2040
G01 X58.1333 Y40.9203
G01 X58.3149 Y40.6172
G01 X58.4660 Y40.2979
G01 X58.5850 Y39.9652
G01 X58.6708 Y39.6225
G01 X58.7227 Y39.2731
G01 X58.7400 Y38.9202
G01 X58.7400 Y4.0000
G01 X58.7227 Y3.6471
G01 X58.6708 Y3.2977
G01 X58.5850 Y2.9550
G01 X58.4660 Y2.6223
G01 X58.3149 Y2.3030
G01 X58.1333 Y1.9999
G01 X57.9228 Y1.7162
G01 X57.6856 Y1.4544
G01 X57.4238 Y1.2172
G01 X57.1401 Y1.0067
G01 X56.8370 Y0.8251
G01 X56.5177 Y0.6740
G01 X56.1850 Y0.5550
G01 X55.8423 Y0.4692
G01 X55.4929 Y0.4173
G01 X55.1400 Y0.4000
G00 X55.1400 Y0.4000
G01 F60.00
G01 Z-1.8000
G01 F100.00
G01 X55.4929 Y0.4173
G01 X55.8423 Y0.4692
G01 X56.1850 Y0.5550
G01 X56.5177 Y0.6740
G01 X56.8370 Y0.8251
G01 X57.1401 Y1.0067
G01 X57.4238 Y1.2172
G01 X57.6856 Y1.4544
G01 X57.9228 Y1.7162
G01 X58.1333 Y1.9999
G01 X58.3149 Y2.3030
G01 X58.4660 Y2.6223
G01 X58.5850 Y2.9550
G01 X58.6708 Y3.2977
G01 X58.7227 Y3.6471
G01 X58.7400 Y4.0000
G01 X58.7400 Y38.9202
G01 X58.7227 Y39.2731
G01 X58.6708 Y39.6225
G01 X58.5850 Y39.9652
G01 X58.4660 Y40.2979
G01 X58.3149 Y40.6172
G01 X58.1333 Y40.9203
G01 X57.9228 Y41.2040
G01 X57.6856 Y41.4658
G01 X57.4238 Y41.7030
G01 X57.1401 Y41.9135
G01 X56.8370 Y42.0951
G01 X56.5177 Y42.2462
G01 X56.1850 Y42.3652
G01 X55.8423 Y42.4510
G01 X55.4929 Y42.5029
G01 X55.1400 Y42.5202
G01 X4.0000 Y42.5202
G01 X3.6471 Y42.5029
G01 X3.2977 Y42.4510
G01 X2.9550 Y42.3652
G01 X2.6223 Y42.2462
G01 X2.3030 Y42.0951
G01 X1.9999 Y41.9135
G01 X1.7162 Y41.7030
G01 X1.4544 Y41.4658
G01 X1.2172 Y41.2040
G01 X1.0067 Y40.9203
G01 X0.8251 Y40.6172
G01 X0.6740 Y40.2979
G01 X0.5550 Y39.9652
G01 X0.4692 Y39.6225
G01 X0.4173 Y39.2731
G01 X0.4000 Y38.9202
G01 X0.4000 Y4.0000
G01 X0.4173 Y3.6471
G01 X0.4692 Y3.2977
G01 X0.5550 Y2.9550
G01 X0.6740 Y2.6223
G01 X0.8251 Y2.3030
G01 X1.0067 Y1.9999
G01 X1.2172 Y1.7162
G01 X1.4544 Y1.4544
G01 X1.7162 Y1.2172
G01 X1.9999 Y1.0067
G01 X2.3030 Y0.8251
G01 X2.6223 Y0.6740
G01 X2.9550 Y0.5550
G01 X3.2977 Y0.4692
G01 X3.6471 Y0.4173
G01 X4.0000 Y0.4000
G01 X55.1400 Y0.4000
G00 Z2.0000
M05
G00 Z2.0000
G00 Z5.00


