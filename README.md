
1. **Build the Docker image**:

    Run the following command in your terminal:

    ```bash
   docker build -t research-js:nginx .
    ```

    This command builds a Docker image from your Dockerfile and tags it as `research-js:nginx`.

2. **Run the Docker container**:

    After the image is built, you can run it with the following command:

    ```bash
    docker run --name js-app -d -p 8080:80 research-js:nginx
    ```

    This command runs a Docker container from the `react-app:nginx` image, names it `react-app`, and maps port 8080 on your machine to port 80 on the container.

3. **Access the application**:

    Open your web browser and navigate to `http://localhost:8080`. You should see your React application running.

## Contact

If you want to contact me you can reach me at `<your-email@example.com>`.

## License

This project uses the following license: `<license_name>`.