function ErrorCode=mark(data)
%Send mark to the recording system
%Send marks to cerebus
global CRS
Mask = bin2dec('0111111111');
ErrorCode = vsgmex(CRS.crsIOWriteDigitalOut, data, Mask);
end

