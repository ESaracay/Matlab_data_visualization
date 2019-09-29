load grades_data.mat
x= quiz_scores;
y=final_scores;
scatter(x,y,'^','r');
xlabel("quiz_scores");
ylabel("final_scores");
title("quiz_scores vs. final_scores");
hold on
p=polyfit(x,y,1);
second= 0:60;
y=polyval(p,second);
scatter(second,y,'o','b');
%save plot -d= flag and then add file type
print('grades_correlation.png','-dpng');