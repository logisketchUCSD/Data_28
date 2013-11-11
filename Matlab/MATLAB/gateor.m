function avgOrMinDistUserAlldiff = gateor(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));




rOrMinDistUser1 = [];
rOrMinDistUser2 = [];
rOrMinDistUser3 = [];
rOrMinDistUser4 = [];
rOrMinDistUser5 = [];
rOrMinDistUser6 = [];
rOrMinDistUser7 = [];
rOrMinDistUser8 = [];
rOrMinDistUser9 = [];
rOrMinDistUser10 = [];
rOrMinDistUser11 = [];
rOrMinDistUser12= [];




eOrMinDist1 = [];
eOrMinDist2 = [];
eOrMinDist3 = [];
eOrMinDist4 = [];
eOrMinDist5 = [];
eOrMinDist6 = [];
eOrMinDist7 = [];
eOrMinDist8 = [];
eOrMinDist9 = [];
eOrMinDist10 = [];
eOrMinDist11 = [];
eOrMinDist12 = [];





for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'OR')
        if strcmp(data.textdata(i,6),'OR')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rOrMinDistUser1 = [rOrMinDistUser1 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'2')
                    rOrMinDistUser2 = [rOrMinDistUser2 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'3')
                    rOrMinDistUser3 = [rOrMinDistUser3 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'4')
                    rOrMinDistUser4 = [rOrMinDistUser4 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'5')
                    rOrMinDistUser5 = [rOrMinDistUser5 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'6')
                    rOrMinDistUser6 = [rOrMinDistUser6 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'7')
                    rOrMinDistUser7 = [rOrMinDistUser7 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'8')
                    rOrMinDistUser8 = [rOrMinDistUser8 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'9')
                    rOrMinDistUser9 = [rOrMinDistUser9 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'10')
                    rOrMinDistUser10 = [rOrMinDistUser10 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'11')
                    rOrMinDistUser11 = [rOrMinDistUser11 data.data(i,8)];
                elseif strcmp(data.textdata(i,2),'12')
                    rOrMinDistUser12 = [rOrMinDistUser12 data.data(i,8)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'OR'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eOrMinDist1 = [eOrMinDist1 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eOrMinDist2 = [eOrMinDist2 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eOrMinDist3 = [eOrMinDist3 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eOrMinDist4 = [eOrMinDist4 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eOrMinDist5 = [eOrMinDist5 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eOrMinDist6 = [eOrMinDist6 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eOrMinDist7 = [eOrMinDist7 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eOrMinDist8 = [eOrMinDist8 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eOrMinDist9 = [eOrMinDist9 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eOrMinDist10 = [eOrMinDist10 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eOrMinDist11 = [eOrMinDist11 data.data(i,8)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eOrMinDist12 = [eOrMinDist12 data.data(i,8)];
                    end
                end


        end

    end
end



    avgOrMinDistUser1 = [sum(rOrMinDistUser1)/length(rOrMinDistUser1) sum(eOrMinDist1)/length(eOrMinDist1)];
    avgOrMinDistUser2 = [sum(rOrMinDistUser2)/length(rOrMinDistUser2)  sum(eOrMinDist2)/length(eOrMinDist2)];
    avgOrMinDistUser3 = [sum(rOrMinDistUser3)/length(rOrMinDistUser3) sum(eOrMinDist3)/length(eOrMinDist3)];
    avgOrMinDistUser4 = [sum(rOrMinDistUser4)/length(rOrMinDistUser4)  sum(eOrMinDist4)/length(eOrMinDist4)];
    avgOrMinDistUser5 = [sum(rOrMinDistUser5)/length(rOrMinDistUser5)  sum(eOrMinDist5)/length(eOrMinDist5)];
    avgOrMinDistUser6 = [sum(rOrMinDistUser6)/length(rOrMinDistUser6)  sum(eOrMinDist6)/length(eOrMinDist6)];
    avgOrMinDistUser7 = [sum(rOrMinDistUser7)/length(rOrMinDistUser7) sum(eOrMinDist7)/length(eOrMinDist7)];
    avgOrMinDistUser8 = [sum(rOrMinDistUser8)/length(rOrMinDistUser8) sum(eOrMinDist8)/length(eOrMinDist8)];
    avgOrMinDistUser9 = [sum(rOrMinDistUser9)/length(rOrMinDistUser9)  sum(eOrMinDist9)/length(eOrMinDist9)];
    avgOrMinDistUser10 = [sum(rOrMinDistUser10)/length(rOrMinDistUser10)  sum(eOrMinDist10)/length(eOrMinDist10)];
    avgOrMinDistUser11 = [sum(rOrMinDistUser11)/length(rOrMinDistUser11)  sum(eOrMinDist11)/length(eOrMinDist11)];
    avgOrMinDistUser12 = [sum(rOrMinDistUser12)/length(rOrMinDistUser12)  sum(eOrMinDist12)/length(eOrMinDist12)];
    
    avgOrMinDistUserAll = [avgOrMinDistUser1; avgOrMinDistUser2; avgOrMinDistUser3; avgOrMinDistUser4; avgOrMinDistUser5; avgOrMinDistUser6; avgOrMinDistUser7; avgOrMinDistUser8; avgOrMinDistUser9; avgOrMinDistUser10;avgOrMinDistUser11; avgOrMinDistUser12;];
    avgOrMinDistUserAlldiff = [diff(avgOrMinDistUser1); diff(avgOrMinDistUser2); diff(avgOrMinDistUser3); diff(avgOrMinDistUser4); diff(avgOrMinDistUser5); diff(avgOrMinDistUser6); diff(avgOrMinDistUser7); diff(avgOrMinDistUser8); diff(avgOrMinDistUser9); diff(avgOrMinDistUser10); diff(avgOrMinDistUser11); diff(avgOrMinDistUser12);];
   
   

