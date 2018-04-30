# soapysdr-wsprd -- WSPR daemon for SoapySDR supported receivers

This is based on https://github.com/Guenael/rtlsdr-wsprd and only replaces the sdr access from rtlsdr with SoapySDR.

This non-interactive application allows automatic reporting of WSPR spots on WSPRnet. The idea is to allow the use of small computer like RasberryPi or Beaglebone boards, with a simple deamon. This kind of very lightweight setup could run continuously without maintenance and help to increase the WSPR network. The code is massively based on Steven Franke (K9AN) implementation and Joe Taylor (K1JT) work. This code was originally written for AirSpy and rtlsdr receiver.

## Application flow

- Perform a time alignment (2 mins)
- Start the reception
- Decimate the IQ data (2.4Msps to 375 sps)
- Decode WSPR signal
- Push the spots on WSPRnet
- Repeat...

## Howto

1. Install a Linux compatible disto on your device (ex. Raspbian for RaspberryPi)
2. Install dependencies & useful tools (ex. ntp for time synchronization)
   ex: sudo apt-get install build-essential cmake libfftw3-dev libusb-1.0-0-dev curl libcurl4-gnutls-dev ntp 
3. Install SoapySDR library : https://github.com/pothosware/SoapySDR
4. Install SoapySDR driver fpr your SDR, e.g. https://github.com/pothosware/SoapyHackRF
5. Install soapysdr-wsprd (this app) : https://github.com/chrta/soapysdr-wsprd
6. Enjoy it with ./soapysdr_wsprd <your options>

## SDR devices & tests

- HackRF One: in progess

## Raspberry devices & tests

- RaspberryPi 3 : TODO
