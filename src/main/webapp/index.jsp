<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Temperature Converter</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background: white;
            border-radius: 16px;
            padding: 50px 40px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            width: 100%;
            max-width: 420px;
            text-align: center;
        }
        .icon { font-size: 3rem; margin-bottom: 10px; }
        h1 { color: #2c3e50; font-size: 1.8rem; margin-bottom: 8px; }
        .subtitle { color: #7f8c8d; margin-bottom: 30px; font-size: 0.95rem; }
        label {
            display: block;
            text-align: left;
            color: #555;
            font-weight: bold;
            margin-bottom: 6px;
        }
        input[type="number"] {
            width: 100%;
            padding: 14px 16px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1.1rem;
            outline: none;
            margin-bottom: 20px;
        }
        input[type="number"]:focus { border-color: #667eea; }
        button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
        }
        button:hover { opacity: 0.9; }
        .info-box {
            margin-top: 25px;
            background: #f8f9fa;
            border-radius: 8px;
            padding: 12px;
            font-size: 0.85rem;
            color: #666;
        }
        .formula { color: #e74c3c; font-weight: bold; }
    </style>
</head>
<body>
<div class="container">
    <div class="icon">🌡️</div>
    <h1>Temperature Converter</h1>
    <p class="subtitle">Convert Celsius to Fahrenheit instantly</p>
    <form action="convert" method="post">
        <label for="celsius">Enter Temperature (°C):</label>
        <input type="number"
               id="celsius"
               name="celsius"
               placeholder="e.g., 100"
               step="0.01"
               required>
        <button type="submit">Convert to Fahrenheit →</button>
    </form>
    <div class="info-box">
        Formula: <span class="formula">°F = (°C × 9/5) + 32</span>
    </div>
</div>
</body>
</html>
