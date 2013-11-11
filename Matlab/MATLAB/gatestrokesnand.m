function avgNandMinDistUserAll= gatenand(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));



rNandMinDistUser1 = [];
rNandMinDistUser2 = [];
rNandMinDistUser3 = [];
rNandMinDistUser4 = [];
rNandMinDistUser5 = [];
rNandMinDistUser6 = [];
rNandMinDistUser7 = [];
rNandMinDistUser8 = [];
rNandMinDistUser9 = [];
rNandMinDistUser10 = [];
rNandMinDistUser11 = [];
rNandMinDistUser12= [];



eNandMinDist1 = [];
eNandMinDist2 = [];
eNandMinDist3 = [];
eNandMinDist4 = [];
eNandMinDist5 = [];
eNandMinDist6 = [];
eNandMinDist7 = [];
eNandMinDist8 = [];
eNandMinDist9 = [];
eNandMinDist10 = [];
eNandMinDist11 = [];
eNandMinDist12 = [];





for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'NAND')
        if strcmp(data.textdata(i,6),'NAND')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rNandMinDistUser1 = [rNandMinDistUser1 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'2')
                    rNandMinDistUser2 = [rNandMinDistUser2 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'3')
                    rNandMinDistUser3 = [rNandMinDistUser3 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'4')
                    rNandMinDistUser4 = [rNandMinDistUser4 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'5')
                    rNandMinDistUser5 = [rNandMinDistUser5 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'6')
                    rNandMinDistUser6 = [rNandMinDistUser6 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'7')
                    rNandMinDistUser7 = [rNandMinDistUser7 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'8')
                    rNandMinDistUser8 = [rNandMinDistUser8 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'9')
                    rNandMinDistUser9 = [rNandMinDistUser9 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'10')
                    rNandMinDistUser10 = [rNandMinDistUser10 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'11')
                    rNandMinDistUser11 = [rNandMinDistUser11 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'12')
                    rNandMinDistUser12 = [rNandMinDistUser12 data.data(i,9)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'NAND'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eNandMinDist1 = [eNandMinDist1 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eNandMinDist2 = [eNandMinDist2 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eNandMinDist3 = [eNandMinDist3 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eNandMinDist4 = [eNandMinDist4 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eNandMinDist5 = [eNandMinDist5 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eNandMinDist6 = [eNandMinDist6 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eNandMinDist7 = [eNandMinDist7 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eNandMinDist8 = [eNandMinDist8 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eNandMinDist9 = [eNandMinDist9 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eNandMinDist10 = [eNandMinDist10 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eNandMinDist11 = [eNandMinDist11 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eNandMinDist12 = [eNandMinDist12 data.data(i,9)];
                    end
                end


        end

    end
end



    avgNandMinDistUser1 = [sum(rNandMinDistUser1)/length(rNandMinDistUser1) sum(eNandMinDist1)/length(eNandMinDist1)];
    avgNandMinDistUser2 = [sum(rNandMinDistUser2)/length(rNandMinDistUser2)  sum(eNandMinDist2)/length(eNandMinDist2)];
    avgNandMinDistUser3 = [sum(rNandMinDistUser3)/length(rNandMinDistUser3) sum(eNandMinDist3)/length(eNandMinDist3)];
    avgNandMinDistUser4 = [sum(rNandMinDistUser4)/length(rNandMinDistUser4)  sum(eNandMinDist4)/length(eNandMinDist4)];
    avgNandMinDistUser5 = [sum(rNandMinDistUser5)/length(rNandMinDistUser5)  sum(eNandMinDist5)/length(eNandMinDist5)];
    avgNandMinDistUser6 = [sum(rNandMinDistUser6)/length(rNandMinDistUser6)  sum(eNandMinDist6)/length(eNandMinDist6)];
    avgNandMinDistUser7 = [sum(rNandMinDistUser7)/length(rNandMinDistUser7) sum(eNandMinDist7)/length(eNandMinDist7)];
    avgNandMinDistUser8 = [sum(rNandMinDistUser8)/length(rNandMinDistUser8) sum(eNandMinDist8)/length(eNandMinDist8)];
    avgNandMinDistUser9 = [sum(rNandMinDistUser9)/length(rNandMinDistUser9)  sum(eNandMinDist9)/length(eNandMinDist9)];
    avgNandMinDistUser10 = [sum(rNandMinDistUser10)/length(rNandMinDistUser10)  sum(eNandMinDist10)/length(eNandMinDist10)];
    avgNandMinDistUser11 = [sum(rNandMinDistUser11)/length(rNandMinDistUser11)  sum(eNandMinDist11)/length(eNandMinDist11)];
    avgNandMinDistUser12 = [sum(rNandMinDistUser12)/length(rNandMinDistUser12)  sum(eNandMinDist12)/length(eNandMinDist12)];
    
    avgNandMinDistUserAll = [diff(avgNandMinDistUser1); diff(avgNandMinDistUser2); diff(avgNandMinDistUser3); diff(avgNandMinDistUser4); diff(avgNandMinDistUser5); diff(avgNandMinDistUser6); diff(avgNandMinDistUser7); diff(avgNandMinDistUser8); diff(avgNandMinDistUser9); diff(avgNandMinDistUser10); diff(avgNandMinDistUser11); diff(avgNandMinDistUser12);];
   
   

