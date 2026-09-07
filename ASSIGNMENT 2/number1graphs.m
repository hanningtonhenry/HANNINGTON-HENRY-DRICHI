data=readtable('number1.xlsx','VariableNamingRule','preserve');
disp(data);

% GRAPH 1 - Histogram HOSTEL/HALL plot
figure(1);
y3=data{:,4};
histogram(categorical(y3));
xlabel('HOSTEL/HALL');
ylabel('COUNT');
title('HORIZONTAL BAR GRAPH OF HOSTEL/HALL')
saveas(gcf,'1.1_hostel.png');

% GRAPH 2 - Histogram Age plot
figure(2);
histogram(categorical(string(data.AGE)));
title('Age Distribution');
xlabel('Age'); 
ylabel('Count');
saveas(gcf,'1.2_ageplot.png');

% GRAPH 3 - Scatter Plot
data=sortrows(data,6);
x2=data{:,1}; 
y2=data{:,6};
figure(3);
scatter(categorical(x2), y2, 'filled');
xtickangle(45);
xlabel('NAMES');
ylabel('AGE');
title('SCATTER PLOT OF NAMES AND AGE');
grid on;
saveas(gcf,'1.3_scatterplot.png');

% GRAPH 4 - PIE CHART 
figure(4);
Association=categorical(data{:,3});
[counts,labels]=groupcounts(Association);
pie(counts);
title('PIE CHART OF ASSOCIATIONS');
saveas(gcf,'1.4_piechart.png');

% GRAPH 5 - STEP PLOT
figure(5);
age_sorted = sort(str2double(string(data{:,6}))); 
stairs(age_sorted, 'LineWidth',2);
xlabel('STUDENT NUMBER');
ylabel('AGE');
title('STEP PLOT GRAPH');
grid on;
saveas(gcf,'1.5_stepplot.png');

% GRAPH 6 - line plot 
data = sortrows(data, 'TRIBE');
x = categorical(data.NAME);
y = categorical(data.TRIBE);
figure(6);
plot(y,'*-');
set(gca,'XTickLabel',data.NAME);
xtickangle(90);
xlabel('NAMES');
ylabel('TRIBES');
title('A LINE PLOT OF NAMES AGAINST TRIBES');
grid on;
saveas(gcf,'1.6_lineplot.png');

disp('ALL 6 GRAPHS SAVED')