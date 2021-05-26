
function MIRscript
    for c = 1322:1322
    c = string(c);
    %path = append('Audio/', c, '.mp3')
    path = convertStringsToChars('Audio/'+c+'.mp3');
    
    %ONE is for tempo
    tempo = mirtempo(path);
    tempo = mirgetdata(tempo)
    
    %TWO is for pitch
    pitch = mirpitch(path, 'Total', 1);
    pitch = mirgetdata(pitch)
    
    %THREE is for mode
    mode = mirmode(path);
    mode = mirgetdata(mode)
    
    %FOUR is for pulse clarity
    pulse = mirpulseclarity(path);
    pulse = mirgetdata(pulse)
    
    %FIVE is for event density
    event = mireventdensity(path);
    event = mirgetdata(event)
    
    %SIX is for key
    key = mirkey(path,'Total',1)
    key = mirgetdata(key)
    
    %SEVEN is for energy
    energy = mirrms(path); %root mean square energy
    energy = mirgetdata(energy)
   
    %this is to export the results
    fid = fopen('savedfeatures.txt', 'a');
    fprintf(fid, 'ID:%f  %f  %f  %f  %f  %f  %f  %f\n', c, tempo, pitch, mode, pulse, event, key, energy);
    fclose(fid);
    end

    

