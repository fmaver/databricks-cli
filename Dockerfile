# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

ENV DATABRICKS_HOST=""
ENV DATABRICKS_TOKEN=""

# Install necessary dependencies
RUN apt-get update && \
   apt-get install -y curl unzip
# RUN apt-get update && \
#     apt-get install -y curl unzip python3 python3-pip

# Install Databricks CLI
RUN curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh


# Set the PATH to include the Databricks CLI directory
#ENV PATH="/root/.databricks:${PATH}"

# Set the working directory
WORKDIR /root

# Set the default command to run an interactive shell
CMD ["/bin/bash"]
