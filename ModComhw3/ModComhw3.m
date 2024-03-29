% Draw 1000 samples from a uniform distribution with limits -pi to +pi

uniform_samples = unifrnd(-pi, pi, 1000, 1);

 

% Plot histogram

um=mean(uniform_samples)

uv=var(uniform_samples)

figure;

histogram(uniform_samples, 20); % Adjust the number of bins as needed

title('Uniform Distribution');

xlabel('Values');

ylabel('Frequency');

 

% Draw 1000 samples from a Gaussian distribution with mean = 0 and variance = 1

gaussian_samples1 = randn(1000, 1);

 

% Plot histogram

gm1=mean(gaussian_samples1)

gv1=var(gaussian_samples1)

figure;

histogram(gaussian_samples1, 20); % Adjust the number of bins as needed

title('Gaussian Distribution with mean = 0, variance = 1');

xlabel('Values');

ylabel('Frequency');

 

% Draw 1000 samples from a Gaussian distribution with mean = 10 and variance = 5

gaussian_samples2 = sqrt(5)*randn(1000, 1) + 10;

 

% Plot histogram

gm2=mean(gaussian_samples2)

gv2=var(gaussian_samples2)

figure;

histogram(gaussian_samples2, 20); % Adjust the number of bins as needed

title('Gaussian Distribution with mean = 10, variance = 5');

xlabel('Values');

ylabel('Frequency');

