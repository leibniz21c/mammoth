from typing import List
from fastapi import FastAPI, WebSocket
from fastapi.responses import HTMLResponse

app = FastAPI()

class ConnectionManager:
    def __init__(self):
        self.connections: List[WebSocket] = []

    async def connect(self, websocket: WebSocket):
        await websocket.accept()
        self.connections.append(websocket)

    async def broadcast(self, data: str):
        for connection in self.connections:
            await connection.send_text(data)


manager = ConnectionManager()




#this part is for client html
html = """
<!DOCTYPE html>
<html>
    <head>
        <title>Chat</title>
    </head>
    <body>
        <h1>WebSocket Chat</h1>
        <button onClick="showForm(event)" id="connect">Connect</button>
        <form action="" onsubmit="sendMessage(event)" id="form" style="display: none">
            <input type="text" id="messageText" autocomplete="off"/>
            <button>Send</button>
        </form>
        <ul id='messages'>
        </ul>
        <script>
            var clientID = Date.now();
            var ws = new WebSocket(`ws://localhost:8000/ws/${clientID}`);

            function processMessage(event) {
                var messages = document.getElementById('messages')
                var message = document.createElement('li')
                var content = document.createTextNode(event.data)
                message.appendChild(content);
                messages.appendChild(message);
            }

            ws.onmessage = processMessage;

            function sendMessage(event) {
                var input = document.getElementById("messageText")
                var message = document.createElement('li')
                var content = document.createTextNode(input.value)
                message.appendChild(content);
                messages.appendChild(message);
                ws.send(input.value);

                input.value = ''
                event.preventDefault()
            }

            function showForm(event) {
                var button = document.getElementById("connect");
                var form = document.getElementById("form");
                button.style.display = "none";
                form.style.display = "block";
            }

        </script>
    </body>
</html>

"""

@app.get("/")
async def get():
    return HTMLResponse(html)


@app.websocket("/ws/{client_id}")
async def websocket_endpoint(websocket: WebSocket, client_id: int):
    await manager.connect(websocket)
    while True:
        data = await websocket.receive_text()
        await manager.broadcast(f"Client {client_id}: {data}")

