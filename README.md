# Jupyter Notebook in Docker

This repository contains a Jupyter Notebook (`index.ipynb`) that runs inside a Docker container. It provides an isolated environment for executing and managing Jupyter notebooks.

---

## 🚀 Setup & Usage

### **1️⃣ Build the Docker Image**

Run the following command to build the Docker image:

```sh
docker build --platform linux/arm64 -t jupyter-notebook .
```

---

### **2️⃣ Run the Jupyter Notebook**

Start the container and expose it on port `8888`:

```sh
docker run --platform linux/arm64 -p 8888:8888 -v $(pwd):/app jupyter-notebook
```

- This command:
  - Maps your local directory (`$(pwd)`) to `/app` in the container.
  - Exposes Jupyter Notebook on port `8888`.
  - Ensures compatibility with **Apple Silicon (M1/M2/M3 chips)** by setting the platform to `linux/arm64`.

---

### **3️⃣ Access the Notebook**

Once the container is running, open your browser and go to:

```
http://localhost:8888
```

Your `index.ipynb` file should be available in the Jupyter Notebook interface.

---

## 📌 Troubleshooting

### **1️⃣ Docker Permission Issues (macOS)**

If you encounter permission errors, make sure your Docker Desktop is up to date and try running the container as `root`:

```sh
docker run --platform linux/arm64 -p 8888:8888 -v $(pwd):/app --user root jupyter-notebook
```

### **2️⃣ Port Conflict**

If port `8888` is already in use, run on a different port (e.g., `8890`):

```sh
docker run --platform linux/arm64 -p 8890:8888 -v $(pwd):/app jupyter-notebook
```

Then access Jupyter Notebook at:

```
http://localhost:8890
```

### **3️⃣ Stopping the Container**

To stop the running container, press:

```
CTRL + C
```

or find and stop it using:

```sh
docker ps
docker stop <container_id>
```

---

## 📂 File Structure

```
📁 YourRepo/
 ├── 📄 Dockerfile
 ├── 📄 .gitignore
 ├── 📄 README.md
 ├── 📄 index.ipynb  # Your Jupyter Notebook
```

---

## 🎯 Notes

- The `.gitignore` file excludes Jupyter checkpoints, virtual environments, and system files.
- Ensure `Docker` is installed before running the commands.
- This setup is optimized for Apple M1/M2/M3 chips but works on other platforms too.

---

## 👨‍💻 Author

[Newton School](https://github.com/Newton-School)

Enjoy coding! 🚀
