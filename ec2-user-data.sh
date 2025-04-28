#!/bin/bash
# Use this for your user data (script from top to bottom)
# Install Apache2 (Ubuntu version)
#change package manager as per our os - apt or yum
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2

# Create enhanced HTML with CSS directly into index.html
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to My EC2 Instance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #6a11cb, #2575fc);
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        header {
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        p {
            font-size: 1.2em;
            margin-top: 10px;
        }
        footer {
            position: absolute;
            bottom: 10px;
            font-size: 0.9em;
        }
        .button {
            background-color: #ff7f50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 1em;
            margin: 10px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #ff4500;
        }
    </style>
</head>
<body>
    <header>Welcome to My EC2 Instance</header>
    <p>Hello World from $(hostname -f)!</p>
    <a class="button" href="https://aws.amazon.com/ec2/" target="_blank">Learn More About EC2</a>
    <footer>&copy; 2025 My EC2 Web Server</footer>
</body>
</html>
EOF
