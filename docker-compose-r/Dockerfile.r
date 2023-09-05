# Use a base image with R installed
FROM r-base

# Install additional packages
RUN R -e "install.packages('ggplot2')"

# Set working directory
WORKDIR /app

# Copy your R script or application into the container
COPY app.R /app/

# Specify the command to run when the container starts
CMD ["Rscript", "app.R"]
