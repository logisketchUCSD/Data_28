function   avgAndNumStrokesUserAll = gatestrokesand(file)






data = importdata(char(file));





rAndNumStrokesUser1 = [];
rAndNumStrokesUser2 = [];
rAndNumStrokesUser3 = [];
rAndNumStrokesUser4 = [];
rAndNumStrokesUser5 = [];
rAndNumStrokesUser6 = [];
rAndNumStrokesUser7 = [];
rAndNumStrokesUser8 = [];
rAndNumStrokesUser9 = [];
rAndNumStrokesUser10 = [];
rAndNumStrokesUser11 = [];
rAndNumStrokesUser12 = [];


eAndNumStrokesUser1 = [];
eAndNumStrokesUser2 = [];
eAndNumStrokesUser3 = [];
eAndNumStrokesUser4 = [];
eAndNumStrokesUser5 = [];
eAndNumStrokesUser6 = [];
eAndNumStrokesUser7 = [];
eAndNumStrokesUser8 = [];
eAndNumStrokesUser9 = [];
eAndNumStrokesUser10 = [];
eAndNumStrokesUser11 = [];
eAndNumStrokesUser12 = [];


for i=1:length(data.textdata)
    if strcmp(data.textdata(i,3),'AND')
        if strcmp(data.textdata(i,6),'AND')
            if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                if strcmp(data.textdata(i,2),'1')
                    rAndNumStrokesUser1 = [rAndNumStrokesUser1 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'2')
                    rAndNumStrokesUser2 = [rAndNumStrokesUser2 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'3')
                    rAndNumStrokesUser3 = [rAndNumStrokesUser3 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'4')
                    rAndNumStrokesUser4 = [rAndNumStrokesUser4 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'5')
                    rAndNumStrokesUser5 = [rAndNumStrokesUser5 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'6')
                    rAndNumStrokesUser6 = [rAndNumStrokesUser6 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'7')
                    rAndNumStrokesUser7 = [rAndNumStrokesUser7 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'8')
                    rAndNumStrokesUser8 = [rAndNumStrokesUser8 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'9')
                    rAndNumStrokesUser9 = [rAndNumStrokesUser9 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'10')
                    rAndNumStrokesUser10 = [rAndNumStrokesUser10 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'11')
                    rAndNumStrokesUser11 = [rAndNumStrokesUser11 data.data(i,9)];
                elseif strcmp(data.textdata(i,2),'12')
                    rAndNumStrokesUser12 = [rAndNumStrokesUser12 data.data(i,9)];

                end
            end
        end
    elseif strcmp(data.textdata(i,3),'EQ1')||strcmp(data.textdata(i,3),'EQ2')
        switch char(data.textdata(i,6))
            case 'AND'
                if i == 1 || ~strcmp(data.textdata(i,4),data.textdata(i-1,4))
                    if strcmp(data.textdata(i,2),'1')
                        eAndNumStrokesUser1 = [eAndNumStrokesUser1 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'2')
                        eAndNumStrokesUser2 = [eAndNumStrokesUser2 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'3')
                        eAndNumStrokesUser3 = [eAndNumStrokesUser3 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'4')
                        eAndNumStrokesUser4 = [eAndNumStrokesUser4 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'5')
                        eAndNumStrokesUser5 = [eAndNumStrokesUser5 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'6')
                        eAndNumStrokesUser6 = [eAndNumStrokesUser6 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'7')
                        eAndNumStrokesUser7 = [eAndNumStrokesUser7 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'8')
                        eAndNumStrokesUser8 = [eAndNumStrokesUser8 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'9')
                        eAndNumStrokesUser9 = [eAndNumStrokesUser9 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'10')
                        eAndNumStrokesUser10 = [eAndNumStrokesUser10 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'11')
                        eAndNumStrokesUser11 = [eAndNumStrokesUser11 data.data(i,9)];
                    elseif strcmp(data.textdata(i,2),'12')
                        eAndNumStrokesUser12 = [eAndNumStrokesUser12 data.data(i,9)];
                    end
                end


        end

    end
end


    avgAndNumStrokesUser1 = [sum(rAndNumStrokesUser1)/length(rAndNumStrokesUser1) sum(eAndNumStrokesUser1)/length(eAndNumStrokesUser1)];
    avgAndNumStrokesUser2 = [sum(rAndNumStrokesUser2)/length(rAndNumStrokesUser2)  sum(eAndNumStrokesUser2)/length(eAndNumStrokesUser2)];
    avgAndNumStrokesUser3 = [sum(rAndNumStrokesUser3)/length(rAndNumStrokesUser3) sum(eAndNumStrokesUser3)/length(eAndNumStrokesUser3)];
    avgAndNumStrokesUser4 = [sum(rAndNumStrokesUser4)/length(rAndNumStrokesUser4)  sum(eAndNumStrokesUser4)/length(eAndNumStrokesUser4)];
    avgAndNumStrokesUser5 = [sum(rAndNumStrokesUser5)/length(rAndNumStrokesUser5)  sum(eAndNumStrokesUser5)/length(eAndNumStrokesUser5)];
    avgAndNumStrokesUser6 = [sum(rAndNumStrokesUser6)/length(rAndNumStrokesUser6)  sum(eAndNumStrokesUser6)/length(eAndNumStrokesUser6)];
    avgAndNumStrokesUser7 = [sum(rAndNumStrokesUser7)/length(rAndNumStrokesUser7) sum(eAndNumStrokesUser7)/length(eAndNumStrokesUser7)];
    avgAndNumStrokesUser8 = [sum(rAndNumStrokesUser8)/length(rAndNumStrokesUser8) sum(eAndNumStrokesUser8)/length(eAndNumStrokesUser8)];
    avgAndNumStrokesUser9 = [sum(rAndNumStrokesUser9)/length(rAndNumStrokesUser9)  sum(eAndNumStrokesUser9)/length(eAndNumStrokesUser9)];
    avgAndNumStrokesUser10 = [sum(rAndNumStrokesUser10)/length(rAndNumStrokesUser10)  sum(eAndNumStrokesUser10)/length(eAndNumStrokesUser10)];
    avgAndNumStrokesUser11 = [sum(rAndNumStrokesUser11)/length(rAndNumStrokesUser11)  sum(eAndNumStrokesUser11)/length(eAndNumStrokesUser11)];
    avgAndNumStrokesUser12 = [sum(rAndNumStrokesUser12)/length(rAndNumStrokesUser12)  sum(eAndNumStrokesUser12)/length(eAndNumStrokesUser12)];
    
    avgAndNumStrokesUserAll = [diff(avgAndNumStrokesUser1); diff(avgAndNumStrokesUser2); diff(avgAndNumStrokesUser3); diff(avgAndNumStrokesUser4); diff(avgAndNumStrokesUser5); diff(avgAndNumStrokesUser6); diff(avgAndNumStrokesUser7); diff(avgAndNumStrokesUser8); diff(avgAndNumStrokesUser9); diff(avgAndNumStrokesUser10); diff(avgAndNumStrokesUser11); diff(avgAndNumStrokesUser12);];
    bar(avgAndNumStrokesUserAll)
    xlabel('User Number')
    ylabel('Difference Ang. NumStrokes per gate')
   

