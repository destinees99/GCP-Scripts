#!/bin/bash

# Set your project ID and path to the service account key file
PROJECT_ID="your-project-id"
KEY_FILE="path/to/your/key-file.json"

# Prompt the user for input
read -p "Enter the instance name: " INSTANCE_NAME
read -p "Enter the machine type (e.g., n1-standard-1): " MACHINE_TYPE
read -p "Enter the zone (e.g., us-central1-a): " ZONE

# Set up authentication using the service account key file
gcloud auth activate-service-account --key-file=$KEY_FILE --project=$PROJECT_ID

# Create the Compute Engine instance
gcloud compute instances create $INSTANCE_NAME \
    --machine-type=$MACHINE_TYPE \
    --zone=$ZONE
