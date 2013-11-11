function avgNorMinDistUserAlldiff = gatenorcurvature(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));




rNorMinDistUser1 = [];
rNorMinDistUser2 = [];
rNorMinDistUser3 = [];
rNorMinDistUser4 = [];
rNorMinDistUser5 = [];
rNorMinDistUser6 = [];
rNorMinDistUser7 = [];
rNorMinDistUser8 = [];
rNorMinDistUser9 = [];
rNorMinDistUser10 = [];
rNorMinDistUser11 = [];
rNorMinDistUser12= [];




eNorMinDist1 = [];
eNorMinDist2 = [];
eNorMinDist3 = [];
eNorMinDist4 = [];
eNorMinDist5 = [];
eNorMinDist6 = [];
eNorMinDist7 = [];
eNorMinDist8 = [];
eNorMinDist9 = [];
eNorMinDist10 = [];
eNorMinDist11 = [];
eNorMinDist12 = [];





for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'NOR')
        if strcmp(data.textdata(i,6),'NOR')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rNorMinDistUser1 = [rNorMinDistUser1 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'2')
                    rNorMinDistUser2 = [rNorMinDistUser2 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'3')
                    rNorMinDistUser3 = [rNorMinDistUser3 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'4')
                    rNorMinDistUser4 = [rNorMinDistUser4 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'5')
                    rNorMinDistUser5 = [rNorMinDistUser5 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'6')
                    rNorMinDistUser6 = [rNorMinDistUser6 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'7')
                    rNorMinDistUser7 = [rNorMinDistUser7 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'8')
                    rNorMinDistUser8 = [rNorMinDistUser8 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'9')
                    rNorMinDistUser9 = [rNorMinDistUser9 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'10')
                    rNorMinDistUser10 = [rNorMinDistUser10 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'11')
                    rNorMinDistUser11 = [rNorMinDistUser11 data.data(i,4)];
                elseif strcmp(data.textdata(i,2),'12')
                    rNorMinDistUser12 = [rNorMinDistUser12 data.data(i,4)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'NOR'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eNorMinDist1 = [eNorMinDist1 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eNorMinDist2 = [eNorMinDist2 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eNorMinDist3 = [eNorMinDist3 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eNorMinDist4 = [eNorMinDist4 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eNorMinDist5 = [eNorMinDist5 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eNorMinDist6 = [eNorMinDist6 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eNorMinDist7 = [eNorMinDist7 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eNorMinDist8 = [eNorMinDist8 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eNorMinDist9 = [eNorMinDist9 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eNorMinDist10 = [eNorMinDist10 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eNorMinDist11 = [eNorMinDist11 data.data(i,4)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eNorMinDist12 = [eNorMinDist12 data.data(i,4)];
                    end
                end


        end

    end
end



    avgNorMinDistUser1 = [sum(rNorMinDistUser1)/length(rNorMinDistUser1) sum(eNorMinDist1)/length(eNorMinDist1)];
    avgNorMinDistUser2 = [sum(rNorMinDistUser2)/length(rNorMinDistUser2)  sum(eNorMinDist2)/length(eNorMinDist2)];
    avgNorMinDistUser3 = [sum(rNorMinDistUser3)/length(rNorMinDistUser3) sum(eNorMinDist3)/length(eNorMinDist3)];
    avgNorMinDistUser4 = [sum(rNorMinDistUser4)/length(rNorMinDistUser4)  sum(eNorMinDist4)/length(eNorMinDist4)];
    avgNorMinDistUser5 = [sum(rNorMinDistUser5)/length(rNorMinDistUser5)  sum(eNorMinDist5)/length(eNorMinDist5)];
    avgNorMinDistUser6 = [sum(rNorMinDistUser6)/length(rNorMinDistUser6)  sum(eNorMinDist6)/length(eNorMinDist6)];
    avgNorMinDistUser7 = [sum(rNorMinDistUser7)/length(rNorMinDistUser7) sum(eNorMinDist7)/length(eNorMinDist7)];
    avgNorMinDistUser8 = [sum(rNorMinDistUser8)/length(rNorMinDistUser8) sum(eNorMinDist8)/length(eNorMinDist8)];
    avgNorMinDistUser9 = [sum(rNorMinDistUser9)/length(rNorMinDistUser9)  sum(eNorMinDist9)/length(eNorMinDist9)];
    avgNorMinDistUser10 = [sum(rNorMinDistUser10)/length(rNorMinDistUser10)  sum(eNorMinDist10)/length(eNorMinDist10)];
    avgNorMinDistUser11 = [sum(rNorMinDistUser11)/length(rNorMinDistUser11)  sum(eNorMinDist11)/length(eNorMinDist11)];
    avgNorMinDistUser12 = [sum(rNorMinDistUser12)/length(rNorMinDistUser12)  sum(eNorMinDist12)/length(eNorMinDist12)];
    
    avgNorMinDistUserAll = [avgNorMinDistUser1; avgNorMinDistUser2; avgNorMinDistUser3; avgNorMinDistUser4; avgNorMinDistUser5; avgNorMinDistUser6; avgNorMinDistUser7; avgNorMinDistUser8; avgNorMinDistUser9; avgNorMinDistUser10;avgNorMinDistUser11; avgNorMinDistUser12;];
    avgNorMinDistUserAlldiff = [diff(avgNorMinDistUser1); diff(avgNorMinDistUser2); diff(avgNorMinDistUser3); diff(avgNorMinDistUser4); diff(avgNorMinDistUser5); diff(avgNorMinDistUser6); diff(avgNorMinDistUser7); diff(avgNorMinDistUser8); diff(avgNorMinDistUser9); diff(avgNorMinDistUser10); diff(avgNorMinDistUser11); diff(avgNorMinDistUser12);];
   
   

