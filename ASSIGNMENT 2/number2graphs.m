%Step 1
Semester=[1;2;3;4];

% your GPA each sem
GPA=[3.5; 3.8; 4.0; 3.6]; 

% your CGPA
CGPA = [3.5; 3.65; 3.77; 3.72];


% GRAPH 1 - BAR CHART OF GPA PER SEMESTER
figure(1);
bar(Semester, GPA);
xlabel('SEMESTER');
ylabel('GPA');
title('BAR GRAPH OF GPA PER SEMESTER');
grid on;
saveas(gcf,'2.1_barchart_gpa.png');

% GRAPH 2 - LINE GRAPH OF CGPA TREND
figure(2);
plot(Semester, CGPA,'-o','LineWidth',2);
xlabel('SEMESTER');
ylabel('CGPA');
title('LINE GRAPH OF CGPA PROGRESS');
ylim([0 5]);
grid on;
saveas(gcf,'2.2_linegraph_cgpa.png');

% GRAPH 3 - PIE CHART OF GPA CONTRIBUTION
figure(3);
pie(GPA);
legend("Sem 1:"+GPA(1),"Sem 2:"+GPA(2),"Sem 3:"+GPA(3),"Sem 4:"+GPA(4));
title('PIE CHART OF GPA');
saveas(gcf,'2.3_piechart_gpa.png');

% GRAPH 4 - STEP PLOT FOR CGPA
figure(4);
stairs(Semester, CGPA, 'LineWidth',2);
xlabel('SEMESTER');
ylabel('CGPA');
title('STEP PLOT OF CGPA');
saveas(gcf,'2.4_stepplot_cgpa.png');

% GRAPH 5 - FILL PLOT GRAPH FOR GPA
figure(5);
fill([Semester;flip(Semester)],[GPA;zeros(size(GPA))],'b','FaceAlpha',0.3);
hold on;
plot(Semester, GPA,'-o','LineWidth',2);
xlabel('SEMESTER');
ylabel('GPA');
title('FILL PLOT OF GPA');
grid on;
saveas(gcf,'2.5_fillplot_gpa.png');

% GRAPH 6 - VERTICAL BAR GRAPH FOR GPA
figure(6);
bar(Semester, GPA, 0.5);
xlabel('SEMESTER'); 
ylabel('GPA');
title('VERTICAL BAR GRAPH OF GPA');
grid on;
saveas(gcf,'2.6_verticalbar_gpa.png');

% GRAPH 7 - PARETO CHART
figure(7);
pareto(GPA);
xlabel('SEMESTER');
ylabel('GPA');
title('PARETO CHART OF GPA');
saveas(gcf,'2.7_parteo_gpa.png');

% GRAPH 8 - HEATMAP
figure(8);
% Make a table for heatmap
T = table(categorical(Semester), GPA);
T.Properties.VariableNames = {'Semester','GPA'};
h = heatmap(T, 'Semester', 'Semester', 'ColorVariable','GPA');
title('HEATMAP OF GPA');
saveas(gcf,'2.8_heatmap_gpa.png');

disp('ALL 8 GRAPHS')