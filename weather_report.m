%% Weather Data Analysis Report
% This report analyzes and visualizes historical weather data, 
% including basic statistical measures, trends, correlations, 
% and advanced visualizations. The goal is to uncover insights 
% into temperature, humidity, precipitation, and wind speed.

%% Section 1: Data Import and Preparation
% Import weather data from a CSV file and clean it.


% The data contains the following columns:
% - Date
% - Temperature
% - Humidity
% - Precipitation
% - WindSpeed

%% Section 2: Basic Statistical Analysis
% Compute basic statistics such as mean, median, and standard deviation 
% for key weather parameters.

% Example code for statistical calculations
meanTemp = mean(weatherData.Temperature, 'omitnan');
disp(['Mean Temperature: ', num2str(meanTemp), ' °C']);
stdTemp = std(weatherData.Temperature, 'omitnan');
disp(['Standard Deviation of Temperature: ', num2str(stdTemp), ' °C']);

%% Section 3: Data Visualization
% Plot time series and create 3D surface plots to visualize trends.

% Code for a time series plot
figure;
plot(weatherData.Date, weatherData.Temperature, 'r-', 'LineWidth', 1.5);
xlabel('Date');
ylabel('Temperature (°C)');
title('Temperature Over Time');
grid on;

% Code for humidity plot
figure;
plot(weatherData.Date, weatherData.Humidity, 'b-', 'LineWidth', 1.5);
xlabel('Date');
ylabel('Humidity (%)');
title('Humidity Over Time');
grid on;

%% Section 4: Correlation and Regression Analysis
% Perform correlation analysis and fit linear regression models.



% Regression plot
figure;
scatter(weatherData.Temperature, weatherData.Humidity, 'b.');
hold on;
p = polyfit(weatherData.Temperature, weatherData.Humidity, 1);
fitted = polyval(p, weatherData.Temperature);
plot(weatherData.Temperature, fitted, 'r-', 'LineWidth', 1.5);
xlabel('Temperature (°C)');
ylabel('Humidity (%)');
title('Linear Regression: Temperature vs. Humidity');
grid on;
hold off;

%% Section 5: 3D Surface Visualization
% Visualize temperature variation over time and space.

% Convert Date to numeric values for plotting
time = datenum(weatherData.Date);  % Convert datetime to serial date numbers
x = 1:length(weatherData.Temperature);  % Spatial data (this can be your locations if available)

% Create a 3D surface plot
figure;

xlabel('Spatial Location');
ylabel('Time (Days)');
zlabel('Temperature (°C)');
title('3D Surface Plot of Temperature Variation');
shading interp;
colorbar;
colormap jet;

%% Section 6: Conclusion
% The analysis reveals key trends and insights into the weather data.
% The linear regression model shows a strong relationship between 
% temperature and humidity. Temperature variations can be observed
% over time, providing a clear picture of temperature behavior.
