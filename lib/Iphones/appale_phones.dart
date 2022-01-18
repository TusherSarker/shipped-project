import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'apple_display.dart';

class appaleMobile extends StatelessWidget {
  var IphoneList = [
    {
      "Product ID": 7731,
      "Picture": 'assets/images/Apple-iPhone-13-Pro-image.jpg',
      "Price": '৳ 147,999 128GB \n৳ 162,999 256GB',
      "Retail Price": '',
      "Name": 'iPhone 13 Pro',
      "Model": 'Apple iPhone 13 PRO',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G',
      "Body": '146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)',
      "Weight": '204 g (7.20 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          'Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 1200 nits (peak)',
      "Size": '6.1 inches, 90.2 cm2(~86.0% screen-to-body ratio)',
      "Resolution": '1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 15, upgradeable',
      "Chipset": 'Apple A15 Bionic (5 nm)',
      "CPU": 'Hexa-core (2 + 4)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '128GB/256GB 6GB RAM',
      "Main Camera":
          '12 MP, f/1.5, 26mm (wide), 1.9µm, dual pixel PDAF, sensor-shift stabilization (IBIS), 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode, stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": 'Li-Ion 3268 mAh, non-removable (12.78 Wh)',
      "Charging": 'Fast charging 20W, 50% in 30 min',
    },
    {
      "Product ID": 7732,
      "Picture": 'assets/images/Apple-iPhone-13-Pro-Max-image.jpg',
      "Price": '৳ 1,90,000 1TB',
      "Retail Price": '',
      "Name": 'iPhone 13 Pro Max',
      "Color": 'Graphite, Gold, Silver, Sierra Blue',
      "Model": 'Apple iPhone 13 PRO',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G',
      "Body": '160.8 x 78.1 x 7.7 mm (6.33 x 3.07 x 0.30 in)',
      "Weight": '240 g (8.47 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          'Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (HBM), 1200 nits (peak)',
      "Size": '6.7 inches, 109.8 cm2 (~87.4% screen-to-body ratio)',
      "Resolution": '1284 x 2778 pixels, 19.5:9 ratio (~458 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 15, upgradable to iOS 15.1',
      "Chipset": 'Apple A15 Bionic (5 nm)',
      "CPU": 'Hexa-core (2x3.22 GHz Avalanche + 4xX.X GHz Blizzard)',
      "GPU": 'Apple GPU (5-core graphics)',
      "Internal Memory":
          '128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM, 1TB 6GB RAM',
      "Main Camera":
          '12 MP, f/1.5, 26mm (wide), 1.9µm, dual pixel PDAF, sensor-shift OIS12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom, 12 MP, f/1.8, 13mm, 120˚ (ultrawide), PDAF, TOF 3D LiDAR scanner (depth)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10‑bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode, stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": 'Li-Ion 4352 mAh, non-removable (16.75 Wh)',
      "Charging":
          'Fast charging (27W, unofficial rating), 50% in 30 min (advertised)',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-13-image.jpg',
      "Price": '৳ 133,499',
      "Retail Price": '',
      "Name": 'iPhone 13 256GB',
      "Model": 'Apple iPhone 13',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G',
      "Body": '146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)',
      "Weight": '174 g (6.14 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          'Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 1200 nits (peak)',
      "Size": '6.1 inches, 90.2 cm2(~86.0% screen-to-body ratio)',
      "Resolution": '1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 15.0, upgradeable',
      "Chipset": 'Apple A15 Bionic (5 nm)',
      "CPU": 'Hexa-core (2 + 4)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '128GB 6GB RAM',
      "Main Camera":
          '12 MP, f/1.6, 26mm (wide), 1.7Âµm, dual pixel PDAF, sensor-shift stabilization (IBIS), 12 MP, f/2.4, 120, 13mm (ultrawide)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to XXfps), stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": ' Li-Ion 3015 mAh, non-removable (10.78 Wh)',
      "Charging": 'Fast charging 20W, 50% in 30 min',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-13-Mini-image.jpg',
      "Price": '৳ 133,999',
      "Retail Price": '',
      "Name": 'iPhone 13 mini 256GB',
      "Model": 'Apple iPhone 13 mini',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G',
      "Body": '146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)',
      "Weight": '141 g (4.97 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          'Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (typ), 1200 nits (peak)',
      "Size": '5.4 inches, 71.9 cm2(~85.1% screen-to-body ratio)',
      "Resolution": '1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 15.0, upgradeable',
      "Chipset": 'Apple A15 Bionic (5 nm)',
      "CPU": 'Hexa-core (2 + 4)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '256GB 4GB RAM',
      "Main Camera":
          '12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift stabilization (IBIS), 12 MP, f/2.4, 120, 13mm (ultrawide)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to XXfps), stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": 'Li-Ion 3015 mAh, non-removable (10.78 Wh)',
      "Charging": 'Fast charging 20W, 50% in 30 min',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iphone-12-Pro.jpg',
      "Price": '৳ 146,999',
      "Retail Price": '',
      "Name": 'Apple iPhone 12 Pro 128GB',
      "Model": 'Apple iPhone 12 PRO ',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G ',
      "Body": '160.8 x 78.1 x 7.4 mm (6.33 x 3.07 x 0.29 in) ',
      "Weight": '228 g (8.04 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM":
          'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China',
      "Display":
          'Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (HBM), 1200 nits (peak)',
      "Size": '6.1″ 1170 x 2532 pixels, 800 nits typ. display',
      "Resolution": '1284 x 2778 pixels, 19.5:9 ratio (~458 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 14.1, upgradable to iOS 15.1',
      "Chipset": 'Apple A14 Bionic (5 nm)',
      "CPU": 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM',
      "Main Camera":
          '12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.2, 52mm (telephoto), 1/3.4", 1.0µm, PDAF, OIS, 2x optical zoom 12 MP, f/2.4, 13mm, 120˚ (ultrawide), 1/3.6" TOF 3D LiDAR scanner (depth)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          '4K@24/30/60fps, 1080p@30/60/120/240fps, 10‑bit HDR, Dolby Vision HDR (up to 60fps), stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6" SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers(No 3.5mm jack)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": 'Li-Ion 3687 mAh, non-removable (14.13 Wh)',
      "Charging": 'Fast charging 22W, 50% in 30 min (advertised)',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iphone-12-Pro-Max.jpg',
      "Price": '৳ 161,999 ',
      "Retail Price": '',
      "Name": 'Apple iPhone 12 Pro Max 128GB',
      "Model": 'Apple iPhone 12 PRO MAX',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G ',
      "Body": '160.8 x 78.1 x 7.4 mm (6.33 x 3.07 x 0.29 in) ',
      "Weight": '228 g (8.04 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM":
          'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China',
      "Display":
          'Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (HBM), 1200 nits (peak)',
      "Size": '6.7 inches, 109.8 cm2 (~87.4% screen-to-body ratio)',
      "Resolution": '1284 x 2778 pixels, 19.5:9 ratio (~458 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 14.1, upgradable to iOS 15.1',
      "Chipset": 'Apple A14 Bionic (5 nm)',
      "CPU": 'Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM',
      "Main Camera":
          '12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift OIS 12 MP, f/2.2, 65mm (telephoto), 1/3.4", 1.0µm, PDAF, OIS, 2.5x optical zoom 12 MP, f/2.4, 13mm, 120˚ (ultrawide), 1/3.6" TOF 3D LiDAR scanner (depth)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          '4K@24/30/60fps, 1080p@30/60/120/240fps, 10‑bit HDR, Dolby Vision HDR (up to 60fps), stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6" SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers(No 3.5mm jack)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": 'Li-Ion 3687 mAh, non-removable (14.13 Wh)',
      "Charging": 'Fast charging 22W, 50% in 30 min (advertised)',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-X-Grey.jpg',
      "Price": '৳ 89,999.00',
      "Retail Price": '',
      "Name": 'Apple iPhone X',
      "Model": 'Apple iPhone X',
      "Network": '2G, 3G, 4G',
      "Body": '143.6 x 70.9 x 7.7 millimeters',
      "Weight": '174 grams',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          '1125 x 2436 pixels (458 ppi),Dolby Vision, HDR10, 625 nits, 120Hz, true-tone, 3D Touch, wide color gamut',
      "Size": '6.1 inches, 90.2 cm2(~86.0% screen-to-body ratio)',
      "Resolution": '1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 11.1.1, upgradable to iOS 13.4',
      "Chipset": 'Apple A11 Bionic (10 nm)',
      "CPU": 'Hexa-core, up to 2.39 GHz',
      "GPU": 'Apple GPU (3-core graphics)',
      "Internal Memory": '64 / 256 GB (NVMe), 3GB RAM',
      "Main Camera":
          'Dual 12+12 Megapixel,Ultra HD (2160p), OIS, time-lapse video with stabilization',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode, stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": '(No 3.5mm Jack) Loudspeaker (stereo speakers)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, LED Flash for Alerts, gyro, proximity, compass, – Apple Pay (Visa, MasterCard, AMEX certified),Siri',
      "Battery": 'Lithium-ion 2716 mAh (non-removable)',
      "Charging":
          '15W Fast Charging  (50% in 30 min), Qi Wireless Charging USB Power Delivery 2.0',
    },
    {
      "Product ID": 7721,
      "Picture": 'assets/images/Apple-iPhone-11.jpg',
      "Price": '৳ 93,999 128 GB \n৳ 99,999 256 GB',
      "Retail Price": '',
      "Name": 'Apple iPhone 11',
      "Color": 'Black, Green, Yellow, Purple, Red, White',
      "Model": 'A2221, A2111, A2223, iPhone12,1',
      "Network": '2G, 3G, 4G',
      "Body": '150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)',
      "Weight": '194 g (6.84 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), aluminum frame (7000 series)',
      "SIM":
          'Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China',
      "Display":
          'Liquid Retina IPS LCD, 625 nits (typ),6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)',
      "Size": '6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)',
      "Resolution": '828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)',
      "Protection":
          'Scratch-resistant glass, oleophobic coating True-toneWide color gamut',
      "Platform": 'iOS 11.1.1, upgradable to iOS 13.4',
      "Chipset": 'Apple A13 Bionic (7 nm+)',
      "CPU": 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '64GB 4GB RAM, 128GB 4GB RAM, 256GB 4GB RAM',
      "Main Camera":
          '12 MP, f/1.8, 26mm (wide), 1/2.55", 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6"',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode, stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6" SL 3D, (depth/biometrics sensor)',
      "Features": 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": '(No 3.5mm Jack) Loudspeaker (stereo speakers)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, LED Flash for Alerts, gyro, proximity, compass, – Apple Pay (Visa, MasterCard, AMEX certified),Siri',
      "Battery": 'Li-Ion 3110 mAh, non-removable (11.91 Wh)',
      "Charging":
          'Fast charging 18W, 50% in 30 min (advertised)0, USB Power Delivery 2.0 Qi wireless charging',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-X-Grey.jpg',
      "Price": '৳ 79,999.00',
      "Retail Price": '',
      "Name": 'Apple iPhone X',
      "Model": 'Apple iPhone X',
      "Network": '2G, 3G, 4G',
      "Body": '143.6 x 70.9 x 7.7 millimeters',
      "Weight": '174 grams',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          '1125 x 2436 pixels (458 ppi),Dolby Vision, HDR10, 625 nits, 120Hz, true-tone, 3D Touch, wide color gamut',
      "Size": '6.1 inches, 90.2 cm2(~86.0% screen-to-body ratio)',
      "Resolution": '1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 11.1.1, upgradable to iOS 13.4',
      "Chipset": 'Apple A11 Bionic (10 nm)',
      "CPU": 'Hexa-core, up to 2.39 GHz',
      "GPU": 'Apple GPU (3-core graphics)',
      "Internal Memory": '64 / 256 GB (NVMe), 3GB RAM',
      "Main Camera":
          'Dual 12+12 Megapixel,Ultra HD (2160p), OIS, time-lapse video with stabilization',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode, stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": '(No 3.5mm Jack) Loudspeaker (stereo speakers)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, LED Flash for Alerts, gyro, proximity, compass, – Apple Pay (Visa, MasterCard, AMEX certified),Siri',
      "Battery": 'Lithium-ion 2716 mAh (non-removable)',
      "Charging":
          '15W Fast Charging  (50% in 30 min), Qi Wireless Charging USB Power Delivery 2.0',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-13-image.jpg',
      "Price": '৳ 133,499',
      "Retail Price": '',
      "Name": 'iPhone 13 256GB',
      "Model": 'Apple iPhone 13',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G',
      "Body": '146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)',
      "Weight": '174 g (6.14 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          'Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 1200 nits (peak)',
      "Size": '6.1 inches, 90.2 cm2(~86.0% screen-to-body ratio)',
      "Resolution": '1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 15.0, upgradeable',
      "Chipset": 'Apple A15 Bionic (5 nm)',
      "CPU": 'Hexa-core (2 + 4)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '128GB 6GB RAM',
      "Main Camera":
          '12 MP, f/1.6, 26mm (wide), 1.7Âµm, dual pixel PDAF, sensor-shift stabilization (IBIS), 12 MP, f/2.4, 120, 13mm (ultrawide)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to XXfps), stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": ' Li-Ion 3015 mAh, non-removable (10.78 Wh)',
      "Charging": 'Fast charging 20W, 50% in 30 min',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-13-Mini-image.jpg',
      "Price": '৳ 133,999',
      "Retail Price": '',
      "Name": 'iPhone 13 mini 256GB',
      "Model": 'Apple iPhone 13 mini',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE/ 5G',
      "Body": '146.7 x 71.5 x 7.7 mm (5.78 x 2.81 x 0.30 in)',
      "Weight": '141 g (4.97 oz)',
      "Build":
          'Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display":
          'Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (typ), 1200 nits (peak)',
      "Size": '5.4 inches, 71.9 cm2(~85.1% screen-to-body ratio)',
      "Resolution": '1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": 'iOS 15.0, upgradeable',
      "Chipset": 'Apple A15 Bionic (5 nm)',
      "CPU": 'Hexa-core (2 + 4)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '256GB 4GB RAM',
      "Main Camera":
          '12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift stabilization (IBIS), 12 MP, f/2.4, 120, 13mm (ultrawide)',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to XXfps), stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation, Ultra Wideband (UWB) support',
      "Battery": 'Li-Ion 3015 mAh, non-removable (10.78 Wh)',
      "Charging": 'Fast charging 20W, 50% in 30 min',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iphone-12-Pro.jpg',
      "Price": '৳ 161,999',
      "Retail Price": '',
      "Name": 'iPhone 12 Pro 128GB',
      "Model": 'iPhone 12 Pro 128GB',
      "Network": '',
      "Body": ' ',
      "Weight": ' ',
      "Build": 'Ceramic Shield, tougher than any smartphone glass',
      "SIM": 'Single SIM (Nano-SIM and/or eSIM)',
      "Display": '6.1-inch (15.5 cm diagonal) Super Retina XDR display',
      "Size": '6.1 inches, 90.2 cm2(~86.0% screen-to-body ratio)',
      "Resolution": '1170 x 2532 pixels, 19.5:9 ratio (~460 ppi density)',
      "Protection":
          'Scratch-resistaScratch-resistant ceramic glass, oleophobic coating, Wide color gamut, True-tone',
      "Platform": ' ',
      "Chipset": 'A14 Bionic chip, the fastest chip ever in a smartphone',
      "CPU": '',
      "GPU": ' ',
      "Internal Memory": '128GB 4GB RAM',
      "Main Camera":
          'Pro camera system with 12MP Ultra Wide, Wide and Telephoto cameras; 4x optical zoom range; Night mode, Deep Fusion, Smart HDR 3, Apple ProRAW, 4K Dolby Vision HDR recording',
      "Features": 'Dual-LED dual-tone flash, HDR (photo/panorama)',
      "Video":
          ' 4K@24/30/60fps, 1080p@30/60/120/240fps, 10bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode, stereo sound rec.',
      "Selfie Camera":
          '12 MP, f/2.2, 23mm (wide), 1/3.6", SL 3D, (depth/biometrics sensor)',
      'Features': 'HDR',
      "Video": '4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS',
      "Sound": 'Yes, with stereo speakers',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Supports MagSafe accessories for easy attach and faster wireless charging,Industry-leading IP68 water resistance',
      "Battery": '',
      "Charging": 'Fast charging 20W, 50% in 30 min',
    },
    {
      "Product ID": 7721,
      "Picture": 'assets/images/Apple-iPhone-XS-Max-Gold.jpg',
      "Price": '৳ 93,999 128 GB \n৳ 99,999 256 GB',
      "Retail Price": '',
      "Name": 'Apple iPhone 11',
      "Color": 'Gold',
      "Model": '',
      "Network": '2G, 3G, 4G',
      "Body": '157.5 x 77.4 x 7.7 millimeters',
      "Weight": '208 grams',
      "Build": 'Gorilla Glass front & back, stainless steel frame',
      "SIM": '	Nano-SIM, e-SIM',
      "Display":
          'Super Retina OLED Touchscreen Dolby Vision, HDR10, 625 nits, 120Hz, true-tone, 3D Touch, wide color gamut',
      "Size": '6.5 inches',
      "Resolution": '1242 x 2688 pixels (458 ppi)',
      "Protection": 'Scratch-resistant glass, oleophobic coating',
      "Platform": 'iOS 12, upgradable to iOS 13.4',
      "Chipset": 'Apple A12 Bionic (7 nm)',
      "CPU": 'Hexa-core, up to 2.5 GHz',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '64 / 256 / 512 GB (NVMe)',
      "Main Camera": 'Dual 12+12 Megapixel',
      "Features":
          'Dual Pixel PDAF, telephoto, OIS, 2x optical zoom, quad-LED flash & more',
      "Video":
          'Ultra HD (2160p), HDR, OIS, slow-mo, cinematic video stabilization.',
      "Selfie Camera": 'Dual 7 Megapixel + SL 3D',
      "Features": 'F/2.2, HDR, depth / biometrics sensor',
      "Video": 'Full HD (1080p), gyro-EIS',
      "Sound": '(No 3.5mm Jack) Loudspeaker (stereo speakers)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS": 'Yes, with A-GPS, GLONASS, GALILEO, QZSS USB Lightning, USB 2.0',
      "Features":
          'Face ID, LED Flash for Alerts, gyro, proximity, compass, – Apple Pay (Visa, MasterCard, AMEX certified),Siri',
      "Battery": 'Lithium-ion 3174 mAh (non-removable)',
      "Charging":
          '15W Fast Charging  (50% in 30 min), Qi Wireless Charging USB Power Delivery 2.0',
    },
    {
      "Product ID": 7631,
      "Picture": 'assets/images/Apple-iPhone-X-Grey.jpg',
      "Price": '৳ 51,990',
      "Retail Price": '',
      "Name": 'Apple iPhone X',
      "Model": 'Apple iPhone X',
      "Network": 'GSM / CDMA / HSPA / EVDO / LTE',
      "Body": '138.4 x 67.3 x 7.3 mm (5.45 x 2.65 x 0.29 in)',
      "Weight": '148 g (5.22 oz)',
      "Build": 'Glass front, glass back, aluminum frame',
      "SIM": 'Nano-SIM',
      "Display":
          '4.7 inches, 60.9 cm2 (~65.4% screen-to-body ratio), Retina IPS LCD capacitive touchscreen, 16M colors',
      "Resolution": '750 x 1334 pixels, 16:9 ratio (~326 ppi density)',
      "Protection":
          'Ion-strengthened glass, oleophobic coating Wide color gamut True-tone 625 nits max brightness (advertised)',
      "Platform": 'iOS 13',
      "Chipset": 'Apple A13 Bionic (7 nm+)',
      "CPU": 'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)',
      "GPU": 'Apple GPU (4-core graphics)',
      "Internal Memory": '64 / 256 GB (NVMe), 3GB RAM',
      "Main Camera": 'Single 12 MP, f/1.8 (wide), PDAF, OIS',
      "Features": 'Quad-LED dual-tone flash, HDR, panorama',
      "Video":
          '4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, OIS, stereo sound rec.',
      "Selfie Camera": '7 MP, f/2.2',
      'Features': 'Face detection, HDR, panorama',
      "Video": '1080p@30fps; gyro-EIS',
      "Sound": '(No 3.5mm Jack) Loudspeaker (Yes, with stereo speakers)',
      "COMMS": 'Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot',
      "Bluetooth": '5.0, A2DP, LE',
      "GPS":
          'Yes, with A-GPS, GLONASS, GALILEO, 2.0, proprietary reversible connector',
      "Features":
          'Fingerprint (front-mounted), accelerometer, proximity, gyro, compass, barometer Siri natural language commands and dictation',
      "Battery": 'Non-removable Li-Ion 1821 mAh battery (6.96 Wh)',
      "Charging":
          'Fast charging 18W, 50% in 30 min (advertised) Qi wireless charging',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.55,
          crossAxisCount: 2),
      itemCount: IphoneList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => IphoneListViewClass(
                          IphoneList: IphoneList,
                          index: index,
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 3))
                ]),
            child: Column(
              children: [
                Container(
                  child: Image.asset('${IphoneList[index]['Picture']}'),
                ),
                Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      '${IphoneList[index]['Name']}',
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '''${IphoneList[index]['Price']}''',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                    ),
                    Text(
                      '${IphoneList[index]['Retail Price']}',
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 45, top: 30),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Order now",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.purple,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
