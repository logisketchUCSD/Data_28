function avgWireMinDistUserAllDiff = gatewirecurvature(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));




rWireMinDistUser1 = [];
rWireMinDistUser2 = [];
rWireMinDistUser3 = [];
rWireMinDistUser4 = [];
rWireMinDistUser5 = [];
rWireMinDistUser6 = [];
rWireMinDistUser7 = [];
rWireMinDistUser8 = [];
rWireMinDistUser9 = [];
rWireMinDistUser10 = [];
rWireMinDistUser11 = [];
rWireMinDistUser12= [];




eWireMinDist1 = [];
eWireMinDist2 = [];
eWireMinDist3 = [];
eWireMinDist4 = [];
eWireMinDist5 = [];
eWireMinDist6 = [];
eWireMinDist7 = [];
eWireMinDist8 = [];
eWireMinDist9 = [];
eWireMinDist10 = [];
eWireMinDist11 = [];
eWireMinDist12 = [];





for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'AND')||strcmp(data.textdata(i,3),'OR')||strcmp(data.textdata(i,3),'NAND')||strcmp(data.textdata(i,3),'NOR')||strcmp(data.textdata(i,3),'NOT')||strcmp(data.textdata(i,3),'XOR')
        if strcmp(data.textdata(i,6),'Wire')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rWireMinDistUser1 = [rWireMinDistUser1 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'2')
                    rWireMinDistUser2 = [rWireMinDistUser2 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'3')
                    rWireMinDistUser3 = [rWireMinDistUser3 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'4')
                    rWireMinDistUser4 = [rWireMinDistUser4 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'5')
                    rWireMinDistUser5 = [rWireMinDistUser5 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'6')
                    rWireMinDistUser6 = [rWireMinDistUser6 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'7')
                    rWireMinDistUser7 = [rWireMinDistUser7 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'8')
                    rWireMinDistUser8 = [rWireMinDistUser8 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'9')
                    rWireMinDistUser9 = [rWireMinDistUser9 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'10')
                    rWireMinDistUser10 = [rWireMinDistUser10 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'11')
                    rWireMinDistUser11 = [rWireMinDistUser11 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'12')
                    rWireMinDistUser12 = [rWireMinDistUser12 data.data(i,4)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'Wire'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eWireMinDist1 = [eWireMinDist1 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eWireMinDist2 = [eWireMinDist2 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eWireMinDist3 = [eWireMinDist3 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eWireMinDist4 = [eWireMinDist4 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eWireMinDist5 = [eWireMinDist5 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eWireMinDist6 = [eWireMinDist6 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eWireMinDist7 = [eWireMinDist7 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eWireMinDist8 = [eWireMinDist8 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eWireMinDist9 = [eWireMinDist9 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eWireMinDist10 = [eWireMinDist10 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eWireMinDist11 = [eWireMinDist11 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eWireMinDist12 = [eWireMinDist12 data.data(i,4)];
                    end
                end


        end

    end
end



    avgWireMinDistUser1 = [sum(rWireMinDistUser1)/length(rWireMinDistUser1) sum(eWireMinDist1)/length(eWireMinDist1)];
    avgWireMinDistUser2 = [sum(rWireMinDistUser2)/length(rWireMinDistUser2)  sum(eWireMinDist2)/length(eWireMinDist2)];
    avgWireMinDistUser3 = [sum(rWireMinDistUser3)/length(rWireMinDistUser3) sum(eWireMinDist3)/length(eWireMinDist3)];
    avgWireMinDistUser4 = [sum(rWireMinDistUser4)/length(rWireMinDistUser4)  sum(eWireMinDist4)/length(eWireMinDist4)];
    avgWireMinDistUser5 = [sum(rWireMinDistUser5)/length(rWireMinDistUser5)  sum(eWireMinDist5)/length(eWireMinDist5)];
    avgWireMinDistUser6 = [sum(rWireMinDistUser6)/length(rWireMinDistUser6)  sum(eWireMinDist6)/length(eWireMinDist6)];
    avgWireMinDistUser7 = [sum(rWireMinDistUser7)/length(rWireMinDistUser7) sum(eWireMinDist7)/length(eWireMinDist7)];
    avgWireMinDistUser8 = [sum(rWireMinDistUser8)/length(rWireMinDistUser8) sum(eWireMinDist8)/length(eWireMinDist8)];
    avgWireMinDistUser9 = [sum(rWireMinDistUser9)/length(rWireMinDistUser9)  sum(eWireMinDist9)/length(eWireMinDist9)];
    avgWireMinDistUser10 = [sum(rWireMinDistUser10)/length(rWireMinDistUser10)  sum(eWireMinDist10)/length(eWireMinDist10)];
    avgWireMinDistUser11 = [sum(rWireMinDistUser11)/length(rWireMinDistUser11)  sum(eWireMinDist11)/length(eWireMinDist11)];
    avgWireMinDistUser12 = [sum(rWireMinDistUser12)/length(rWireMinDistUser12)  sum(eWireMinDist12)/length(eWireMinDist12)];
    
    avgWireMinDistUserAll = [avgWireMinDistUser1; avgWireMinDistUser2; avgWireMinDistUser3; avgWireMinDistUser4; avgWireMinDistUser5; avgWireMinDistUser6; avgWireMinDistUser7; avgWireMinDistUser8; avgWireMinDistUser9; avgWireMinDistUser10;avgWireMinDistUser11; avgWireMinDistUser12;];
    avgWireMinDistUserAllDiff = [diff(avgWireMinDistUser1); diff(avgWireMinDistUser2); diff(avgWireMinDistUser3); diff(avgWireMinDistUser4); diff(avgWireMinDistUser5); diff(avgWireMinDistUser6); diff(avgWireMinDistUser7); diff(avgWireMinDistUser8); diff(avgWireMinDistUser9); diff(avgWireMinDistUser10); diff(avgWireMinDistUser11); diff(avgWireMinDistUser12);];
   
   

