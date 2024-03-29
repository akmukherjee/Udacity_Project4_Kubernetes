FROM python:3.7.3-stretch
#Copy the requirements file
COPY requirements.txt /

## Step 1:
# Create a working directory

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# hadolint ignore=DL3013
#Change Working Directory
WORKDIR /app

## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

