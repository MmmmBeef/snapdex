FROM python:3.7

# Create directory to run everything in
RUN mkdir /src
WORKDIR /src

# Add source files to directory
ADD . /src

# Run Python
ENTRYPOINT ["python", "-m", "http.server"]

# TODO: Remove this as Discord bot won't need port exposed
EXPOSE 8000