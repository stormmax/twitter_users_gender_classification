function [labels prob]= nnpredict_my(nn, x)
    nn.testing = 1;
    nn = nnff(nn, x, zeros(size(x,1), nn.size(end)));
    nn.testing = 0;
    
    [dummy, i] = max(nn.a{end},[],2);
    labels = i;
    prob = nn.a{end};
end
