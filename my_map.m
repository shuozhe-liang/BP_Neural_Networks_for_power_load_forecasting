function [output] = my_map(type, raw_data, raw_data_max, raw_data_min, max, min)

if type ~= 0
    output = my_pos_map(raw_data, raw_data_max, raw_data_min, max, min);
end

if type ~= 1 
    output = my_rev_map(raw_data, raw_data_max, raw_data_min, max, min);
end

end

function [out] = my_pos_map(raw_data, raw_data_max, raw_data_min, max, min)
    for i = 1:length(raw_data')
        out(i) = (max - min) * (raw_data(i) - raw_data_min) / (raw_data_max - raw_data_min) + min;
    end
end

function [out] = my_rev_map(raw_data, raw_data_max, raw_data_min, max, min)
    for i = 1:length(raw_data')
        out(i) = (raw_data(i) - min) * (raw_data_max - raw_data_min) / (max - min) + raw_data_min;
    end
end

