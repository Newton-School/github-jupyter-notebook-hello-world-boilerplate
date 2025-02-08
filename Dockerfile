# Use an official Jupyter Notebook base image
FROM jupyter/scipy-notebook:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY index.ipynb /app

# Install any additional dependencies if required (uncomment if needed)
# RUN pip install -r requirements.txt

# Expose Jupyter Notebook port
EXPOSE 8888

# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]