### **README: Nginx Dynamic Port and Rate Limiting Project**  

#### **📌 Project Overview**
This project sets up an **Nginx reverse proxy** with:
- **Dynamic port allocation**: Users are assigned different ports for security.
- **Rate limiting**: Prevents abuse using Nginx’s `limit_req_zone`.
- **Load balancing**: Distributes requests across multiple Node.js servers.

---

## **📂 Project Structure**
```
Nginxtest/
│── conf/                 # Nginx configuration files
│   ├── nginx.conf        # Main Nginx config file
│   ├── dynamic_port.conf # Handles dynamic port assignments
│   ├── mime.types        # MIME types for serving files
│── logs/                 # Nginx logs (error.log, access.log)
│── html/                 # Static website files (index.html)
│── node_modules/         # Node.js dependencies
│── server.js             # Sample Node.js server
│── nginx.exe             # Nginx executable for Windows
│── update_ports.ps1      # PowerShell script to update ports dynamically
│── docker-compose.yaml   # Optional: Run Nginx and servers in Docker
│── package.json          # Node.js dependencies
│── README.md             # Project instructions (this file)
```

---

## **🚀 Getting Started**
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/your-repo/nginx-dynamic-port.git
cd nginx-dynamic-port
```

---

### **2️⃣ Install Dependencies**
**For Node.js:**
```sh
npm install
```

**For Nginx (Windows):**
1. Download [Nginx for Windows](https://nginx.org/en/download.html).
2. Extract and copy `nginx.exe` into the project directory.

---

### **3️⃣ Configure Nginx**
1. Open `conf/nginx.conf` and modify settings if needed.
2. Ensure `include conf/dynamic_port.conf;` is added.

---

### **4️⃣ Start Services**
**Start Nginx:**
```sh
nginx.exe
```

**Start Node.js Backend:**
```sh
node server.js
```

---

### **5️⃣ Test the Setup**
#### **Check if Nginx is running**
```sh
curl http://localhost:8080/
```
#### **Test Rate Limiting**
Use **Apache Benchmark**:
```sh
ab -n 20 -c 5 -H "X-User-Id: user123" http://localhost:8080/
```
If rate limiting works, you should see **429 Too Many Requests** after exceeding the allowed rate.

---

## **📌 Useful Commands**
| Command | Description |
|---------|------------|
| `nginx.exe -s reload` | Reload Nginx without restarting |
| `nginx.exe -s stop` | Stop Nginx |
| `tail -f logs/access.log` | View Nginx logs in real-time |
| `node server.js` | Start the Node.js server |

---

## **📌 Next Steps**
- ✅ Add SSL for **HTTPS security**.
- ✅ Use Docker for **better portability**.
- ✅ Implement **token-based authentication** for enhanced security.

---

**📧 Need Help?**  
Open an issue in the repository or contact the project maintainers. 🚀
