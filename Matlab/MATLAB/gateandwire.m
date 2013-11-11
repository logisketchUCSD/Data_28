function avgAndMinDistUserAll= gateandtime(file)

% import the data into a vector (actually 2 vectors
% gatedata.textdata and gatedata.data)
% gatedata = importdata('GateStats.csv');

data = importdata(char(file));

rWireMinDist = [];


rAndMinDistUser1 = [];
rAndMinDistUser2 = [];
rAndMinDistUser3 = [];
rAndMinDistUser4 = [];
rAndMinDistUser5 = [];
rAndMinDistUser6 = [];
rAndMinDistUser7 = [];
rAndMinDistUser8 = [];
rAndMinDistUser9 = [];
rAndMinDistUser10 = [];
rAndMinDistUser11 = [];
rAndMinDistUser12= [];


rOrMinDist = [];
rXorMinDist = [];
rNandMinDist = [];
rNorMinDist = [];
rNotMinDist = [];
eWireMinDist = [];



eAndMinDist1 = [];
eAndMinDist2 = [];
eAndMinDist3 = [];
eAndMinDist4 = [];
eAndMinDist5 = [];
eAndMinDist6 = [];
eAndMinDist7 = [];
eAndMinDist8 = [];
eAndMinDist9 = [];
eAndMinDist10 = [];
eAndMinDist11 = [];
eAndMinDist12 = [];



eOrMinDist = [];
eXorMinDist = [];
eNandMinDist = [];
eNorMinDist = [];
eNotMinDist = [];
cWireMinDist = [];
cAndMinDist = [];
cOrMinDist = [];
cXorMinDist = [];
cNandMinDist = [];
cNorMinDist = [];
cNotMinDist = [];


for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'AND')
        if strcmp(data.textdata(i,6),'AND')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))

                if strcmp(data.textdata(i,2),'1')
                    rAndMinDistUser1 = [rAndMinDistUser1 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'2')
                    rAndMinDistUser2 = [rAndMinDistUser2 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'3')
                    rAndMinDistUser3 = [rAndMinDistUser3 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'4')
                    rAndMinDistUser4 = [rAndMinDistUser4 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'5')
                    rAndMinDistUser5 = [rAndMinDistUser5 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'6')
                    rAndMinDistUser6 = [rAndMinDistUser6 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'7')
                    rAndMinDistUser7 = [rAndMinDistUser7 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'8')
                    rAndMinDistUser8 = [rAndMinDistUser8 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'9')
                    rAndMinDistUser9 = [rAndMinDistUser9 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'10')
                    rAndMinDistUser10 = [rAndMinDistUser10 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'11')
                    rAndMinDistUser11 = [rAndMinDistUser11 data.data(i,12)];
                elseif strcmp(data.textdata(i,2),'12')
                    rAndMinDistUser12 = [rAndMinDistUser12 data.data(i,12)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'AND'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eAndMinDist1 = [eAndMinDist1 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eAndMinDist2 = [eAndMinDist2 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eAndMinDist3 = [eAndMinDist3 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eAndMinDist4 = [eAndMinDist4 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eAndMinDist5 = [eAndMinDist5 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eAndMinDist6 = [eAndMinDist6 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eAndMinDist7 = [eAndMinDist7 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eAndMinDist8 = [eAndMinDist8 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eAndMinDist9 = [eAndMinDist9 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eAndMinDist10 = [eAndMinDist10 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eAndMinDist11 = [eAndMinDist11 data.data(i,12)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eAndMinDist12 = [eAndMinDist12 data.data(i,12)];
                    end
                end


        end

    end
end



    avgAndMinDistUser1 = [sum(rAndMinDistUser1)/length(rAndMinDistUser1) sum(eAndMinDist1)/length(eAndMinDist1)];
    avgAndMinDistUser2 = [sum(rAndMinDistUser2)/length(rAndMinDistUser2)  sum(eAndMinDist2)/length(eAndMinDist2)];
    avgAndMinDistUser3 = [sum(rAndMinDistUser3)/length(rAndMinDistUser3) sum(eAndMinDist3)/length(eAndMinDist3)];
    avgAndMinDistUser4 = [sum(rAndMinDistUser4)/length(rAndMinDistUser4)  sum(eAndMinDist4)/length(eAndMinDist4)];
    avgAndMinDistUser5 = [sum(rAndMinDistUser5)/length(rAndMinDistUser5)  sum(eAndMinDist5)/length(eAndMinDist5)];
    avgAndMinDistUser6 = [sum(rAndMinDistUser6)/length(rAndMinDistUser6)  sum(eAndMinDist6)/length(eAndMinDist6)];
    avgAndMinDistUser7 = [sum(rAndMinDistUser7)/length(rAndMinDistUser7) sum(eAndMinDist7)/length(eAndMinDist7)];
    avgAndMinDistUser8 = [sum(rAndMinDistUser8)/length(rAndMinDistUser8) sum(eAndMinDist8)/length(eAndMinDist8)];
    avgAndMinDistUser9 = [sum(rAndMinDistUser9)/length(rAndMinDistUser9)  sum(eAndMinDist9)/length(eAndMinDist9)];
    avgAndMinDistUser10 = [sum(rAndMinDistUser10)/length(rAndMinDistUser10)  sum(eAndMinDist10)/length(eAndMinDist10)];
    avgAndMinDistUser11 = [sum(rAndMinDistUser11)/length(rAndMinDistUser11)  sum(eAndMinDist11)/length(eAndMinDist11)];
    avgAndMinDistUser12 = [sum(rAndMinDistUser12)/length(rAndMinDistUser12)  sum(eAndMinDist12)/length(eAndMinDist12)];
    
    avgAndMinDistUserAll = [diff(avgAndMinDistUser1); diff(avgAndMinDistUser2); diff(avgAndMinDistUser3); diff(avgAndMinDistUser4); diff(avgAndMinDistUser5); diff(avgAndMinDistUser6); diff(avgAndMinDistUser7); diff(avgAndMinDistUser8); diff(avgAndMinDistUser9); diff(avgAndMinDistUser10); diff(avgAndMinDistUser11); diff(avgAndMinDistUser12);];
   
   

