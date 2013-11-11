function avgXorMinDistUserAlldiff = gatexorcurvature(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));




rXorMinDistUser1 = [];
rXorMinDistUser2 = [];
rXorMinDistUser3 = [];
rXorMinDistUser4 = [];
rXorMinDistUser5 = [];
rXorMinDistUser6 = [];
rXorMinDistUser7 = [];
rXorMinDistUser8 = [];
rXorMinDistUser9 = [];
rXorMinDistUser10 = [];
rXorMinDistUser11 = [];
rXorMinDistUser12= [];




eXorMinDist1 = [];
eXorMinDist2 = [];
eXorMinDist3 = [];
eXorMinDist4 = [];
eXorMinDist5 = [];
eXorMinDist6 = [];
eXorMinDist7 = [];
eXorMinDist8 = [];
eXorMinDist9 = [];
eXorMinDist10 = [];
eXorMinDist11 = [];
eXorMinDist12 = [];





for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'XOR')
        if strcmp(data.textdata(i,6),'XOR')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rXorMinDistUser1 = [rXorMinDistUser1 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'2')
                    rXorMinDistUser2 = [rXorMinDistUser2 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'3')
                    rXorMinDistUser3 = [rXorMinDistUser3 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'4')
                    rXorMinDistUser4 = [rXorMinDistUser4 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'5')
                    rXorMinDistUser5 = [rXorMinDistUser5 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'6')
                    rXorMinDistUser6 = [rXorMinDistUser6 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'7')
                    rXorMinDistUser7 = [rXorMinDistUser7 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'8')
                    rXorMinDistUser8 = [rXorMinDistUser8 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'9')
                    rXorMinDistUser9 = [rXorMinDistUser9 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'10')
                    rXorMinDistUser10 = [rXorMinDistUser10 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'11')
                    rXorMinDistUser11 = [rXorMinDistUser11 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'12')
                    rXorMinDistUser12 = [rXorMinDistUser12 data.data(i,4)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'XOR'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eXorMinDist1 = [eXorMinDist1 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eXorMinDist2 = [eXorMinDist2 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eXorMinDist3 = [eXorMinDist3 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eXorMinDist4 = [eXorMinDist4 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eXorMinDist5 = [eXorMinDist5 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eXorMinDist6 = [eXorMinDist6 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eXorMinDist7 = [eXorMinDist7 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eXorMinDist8 = [eXorMinDist8 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eXorMinDist9 = [eXorMinDist9 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eXorMinDist10 = [eXorMinDist10 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eXorMinDist11 = [eXorMinDist11 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eXorMinDist12 = [eXorMinDist12 data.data(i,4)];
                    end
                end


        end

    end
end



    avgXorMinDistUser1 = [sum(rXorMinDistUser1)/length(rXorMinDistUser1) sum(eXorMinDist1)/length(eXorMinDist1)];
    avgXorMinDistUser2 = [sum(rXorMinDistUser2)/length(rXorMinDistUser2)  sum(eXorMinDist2)/length(eXorMinDist2)];
    avgXorMinDistUser3 = [sum(rXorMinDistUser3)/length(rXorMinDistUser3) sum(eXorMinDist3)/length(eXorMinDist3)];
    avgXorMinDistUser4 = [sum(rXorMinDistUser4)/length(rXorMinDistUser4)  sum(eXorMinDist4)/length(eXorMinDist4)];
    avgXorMinDistUser5 = [sum(rXorMinDistUser5)/length(rXorMinDistUser5)  sum(eXorMinDist5)/length(eXorMinDist5)];
    avgXorMinDistUser6 = [sum(rXorMinDistUser6)/length(rXorMinDistUser6)  sum(eXorMinDist6)/length(eXorMinDist6)];
    avgXorMinDistUser7 = [sum(rXorMinDistUser7)/length(rXorMinDistUser7) sum(eXorMinDist7)/length(eXorMinDist7)];
    avgXorMinDistUser8 = [sum(rXorMinDistUser8)/length(rXorMinDistUser8) sum(eXorMinDist8)/length(eXorMinDist8)];
    avgXorMinDistUser9 = [sum(rXorMinDistUser9)/length(rXorMinDistUser9)  sum(eXorMinDist9)/length(eXorMinDist9)];
    avgXorMinDistUser10 = [sum(rXorMinDistUser10)/length(rXorMinDistUser10)  sum(eXorMinDist10)/length(eXorMinDist10)];
    avgXorMinDistUser11 = [sum(rXorMinDistUser11)/length(rXorMinDistUser11)  sum(eXorMinDist11)/length(eXorMinDist11)];
    avgXorMinDistUser12 = [sum(rXorMinDistUser12)/length(rXorMinDistUser12)  sum(eXorMinDist12)/length(eXorMinDist12)];
    
    avgXorMinDistUserAll = [avgXorMinDistUser1; avgXorMinDistUser2; avgXorMinDistUser3; avgXorMinDistUser4; avgXorMinDistUser5; avgXorMinDistUser6; avgXorMinDistUser7; avgXorMinDistUser8; avgXorMinDistUser9; avgXorMinDistUser10;avgXorMinDistUser11; avgXorMinDistUser12;];
    avgXorMinDistUserAlldiff = [diff(avgXorMinDistUser1); diff(avgXorMinDistUser2); diff(avgXorMinDistUser3); diff(avgXorMinDistUser4); diff(avgXorMinDistUser5); diff(avgXorMinDistUser6); diff(avgXorMinDistUser7); diff(avgXorMinDistUser8); diff(avgXorMinDistUser9); diff(avgXorMinDistUser10); diff(avgXorMinDistUser11); diff(avgXorMinDistUser12);];
   
   

