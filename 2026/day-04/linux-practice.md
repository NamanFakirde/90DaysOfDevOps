<h2>Linux Practice - hands-on </h2>

<h3>Process check:</h3>
<ul>
  <li>ps: displays the active process within the terminal only, it showed me bash (PID-2648) and ps (PID-3399).</li>
  <li>ps aux: displays all the process running on an OS in detail, it showed me user, pid, cpu and memory consumption.</li>
  <li>top: Gives real time running process in a system, it showed the active process like systemd, NetworkManager, kthreadd, etc with their details.</li>
  <li>kill: terminate the active process using its PID (eg kill 3514), it directly terminate the process without any output.</li>
  <img width=500"" height="180" alt="image" src="https://github.com/user-attachments/assets/737e19f2-9333-41a1-94d0-b380a8d13397" />
</ul>

<h3>Service check</h3>
<ul>
  <li>systemctl status <service>: shows the current state of service, it showed that ssh is active and running on my pc.</li>
  <li>systemctl list -units --type=<service>: list current active services on a server, it showed various active services.</li>
  <img width="500" height="180" alt="image" src="https://github.com/user-attachments/assets/bf3b8deb-6a0f-4687-970e-1bb32cab804b"/> <img width="500" height="190" alt="image" src="https://github.com/user-attachments/assets/e7a45ab9-27a1-4b49-82b1-b56a2ceaf20c" />    
</ul>

<h3>Log check</h3>
<ul>
  <li>journalctl -u (service): Give the log of a specific service, it showed logs of ssh in my case.</li>
  <li>top -n 50 <file.txt>: shows the 50 lines from the file, it showed me the first few lines since there was not much logs in the file.</li>
  <img width="400" height="150" alt="image" src="https://github.com/user-attachments/assets/97803b74-dc66-475e-a44f-5130d9480e5e" /> <img width="400" height="150" alt="Screenshot 2026-02-03 133203" src="https://github.com/user-attachments/assets/b3d2f863-e96a-4e6f-acf5-e4739b50514d" />
</ul>

<h3>Mini troubleshooting steps</h3>
<ul>
  <b>Scenario:SSH service is not running</b>
  <li>Step 1: using "systemctl status ssh" to check the current status of ssh.</li>
  <img width="400" height="150" alt="image" src="https://github.com/user-attachments/assets/cc222f16-7168-4f3c-85bd-9572629c769b" />
  <li>Step 2: Since the service is stopped/dead therefore using "sudo systemctl start ssh" to start the service.</li>
  <li>Step 3: Again checking the status using "systemctl status ssh"</li>
  <img width="400" height="150" alt="Screenshot 2026-02-03 151120" src="https://github.com/user-attachments/assets/b3d14e29-f431-4855-8c35-aa6ee46f8a75" />
  <br>here as we can see the <b>ACTIVE</b> status is showing <b>RUNNING</b>
  <li>Step 4: Therefore, we can conclude that we have resolved our issue of ssh not running.</li>
</ul>

