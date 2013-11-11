function avgNotMinDistUserAlldiff = gatenot(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));




rNotMinDistUser1 = [];
rNotMinDistUser2 = [];
rNotMinDistUser3 = [];
rNotMinDistUser4 = [];
rNotMinDistUser5 = [];
rNotMinDistUser6 = [];
rNotMinDistUser7 = [];
rNotMinDistUser8 = [];
rNotMinDistUser9 = [];
rNotMinDistUser10 = [];
rNotMinDistUser11 = [];
rNotMinDistUser12= [];




eNotMinDist1 = [];
eNotMinDist2 = [];
eNotMinDist3 = [];
eNotMinDist4 = [];
eNotMinDist5 = [];
eNotMinDist6 = [];
eNotMinDist7 = [];
eNotMinDist8 = [];
eNotMinDist9 = [];
eNotMinDist10 = [];
eNotMinDist11 = [];
eNotMinDist12 = [];





for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'NOT')
        if strcmp(data.textdata(i,6),'NOT')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rNotMinDistUser1 = [rNotMinDistUser1 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'2')
                    rNotMinDistUser2 = [rNotMinDistUser2 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'3')
                    rNotMinDistUser3 = [rNotMinDistUser3 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'4')
                    rNotMinDistUser4 = [rNotMinDistUser4 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'5')
                    rNotMinDistUser5 = [rNotMinDistUser5 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'6')
                    rNotMinDistUser6 = [rNotMinDistUser6 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'7')
                    rNotMinDistUser7 = [rNotMinDistUser7 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'8')
                    rNotMinDistUser8 = [rNotMinDistUser8 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'9')
                    rNotMinDistUser9 = [rNotMinDistUser9 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'10')
                    rNotMinDistUser10 = [rNotMinDistUser10 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'11')
                    rNotMinDistUser11 = [rNotMinDistUser11 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'12')
                    rNotMinDistUser12 = [rNotMinDistUser12 data.data(i,9)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'NOT'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eNotMinDist1 = [eNotMinDist1 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eNotMinDist2 = [eNotMinDist2 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eNotMinDist3 = [eNotMinDist3 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eNotMinDist4 = [eNotMinDist4 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eNotMinDist5 = [eNotMinDist5 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eNotMinDist6 = [eNotMinDist6 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eNotMinDist7 = [eNotMinDist7 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eNotMinDist8 = [eNotMinDist8 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eNotMinDist9 = [eNotMinDist9 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eNotMinDist10 = [eNotMinDist10 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eNotMinDist11 = [eNotMinDist11 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eNotMinDist12 = [eNotMinDist12 data.data(i,9)];
                    end
                end


        end

    end
end



    avgNotMinDistUser1 = [sum(rNotMinDistUser1)/length(rNotMinDistUser1) sum(eNotMinDist1)/length(eNotMinDist1)];
    avgNotMinDistUser2 = [sum(rNotMinDistUser2)/length(rNotMinDistUser2)  sum(eNotMinDist2)/length(eNotMinDist2)];
    avgNotMinDistUser3 = [sum(rNotMinDistUser3)/length(rNotMinDistUser3) sum(eNotMinDist3)/length(eNotMinDist3)];
    avgNotMinDistUser4 = [sum(rNotMinDistUser4)/length(rNotMinDistUser4)  sum(eNotMinDist4)/length(eNotMinDist4)];
    avgNotMinDistUser5 = [sum(rNotMinDistUser5)/length(rNotMinDistUser5)  sum(eNotMinDist5)/length(eNotMinDist5)];
    avgNotMinDistUser6 = [sum(rNotMinDistUser6)/length(rNotMinDistUser6)  sum(eNotMinDist6)/length(eNotMinDist6)];
    avgNotMinDistUser7 = [sum(rNotMinDistUser7)/length(rNotMinDistUser7) sum(eNotMinDist7)/length(eNotMinDist7)];
    avgNotMinDistUser8 = [sum(rNotMinDistUser8)/length(rNotMinDistUser8) sum(eNotMinDist8)/length(eNotMinDist8)];
    avgNotMinDistUser9 = [sum(rNotMinDistUser9)/length(rNotMinDistUser9)  sum(eNotMinDist9)/length(eNotMinDist9)];
    avgNotMinDistUser10 = [sum(rNotMinDistUser10)/length(rNotMinDistUser10)  sum(eNotMinDist10)/length(eNotMinDist10)];
    avgNotMinDistUser11 = [sum(rNotMinDistUser11)/length(rNotMinDistUser11)  sum(eNotMinDist11)/length(eNotMinDist11)];
    avgNotMinDistUser12 = [sum(rNotMinDistUser12)/length(rNotMinDistUser12)  sum(eNotMinDist12)/length(eNotMinDist12)];
    
    avgNotMinDistUserAll = [avgNotMinDistUser1; avgNotMinDistUser2; avgNotMinDistUser3; avgNotMinDistUser4; avgNotMinDistUser5; avgNotMinDistUser6; avgNotMinDistUser7; avgNotMinDistUser8; avgNotMinDistUser9; avgNotMinDistUser10;avgNotMinDistUser11; avgNotMinDistUser12;];
    avgNotMinDistUserAlldiff = [diff(avgNotMinDistUser1); diff(avgNotMinDistUser2); diff(avgNotMinDistUser3); diff(avgNotMinDistUser4); diff(avgNotMinDistUser5); diff(avgNotMinDistUser6); diff(avgNotMinDistUser7); diff(avgNotMinDistUser8); diff(avgNotMinDistUser9); diff(avgNotMinDistUser10); diff(avgNotMinDistUser11); diff(avgNotMinDistUser12);];
   
   

