import WebSocket, { WebSocketServer } from 'ws';
import mysql from 'mysql';

// Configuración de la conexión a la base de datos
const dbConfig = {
    host: '172.23.0.3',
    user: 'root',
    password: 'TioGazpacho',
    database: 'omrch'
};

// Crear la conexión a la base de datos
const connection = mysql.createConnection(dbConfig);

connection.connect((err) => {
    if (err) {
        console.error('Error de conexión a la base de datos:', err);
        return;
    }
    console.log('Conexión establecida con la base de datos');
});


const wss = new WebSocketServer({ port: 32768 });
wss.on('connection', (ws) => {
    console.log('Client connected');

    // Consulta a la base de datos para obtener los mensajes
    connection.query('SELECT * FROM Messages', (error, results) => {
        if (error) {
            console.error('Error al recuperar mensajes de la base de datos:', error);
            return;
        }

        // Enviar los mensajes al cliente recién conectado
        results.forEach((row) => {
            // console.log('Enviando mensaje:', row);
            const data = {
                message: row.message_text,
                time: row.sent_at,
                author: row.sender
            };
            ws.send(JSON.stringify(data));
        });
    });

    ws.on('error', console.error);

    ws.on('message', (data) => {
        console.log("Data: " + data);

        // Parse el JSON
        let parsedData;
        try {
            parsedData = JSON.parse(data);
        } catch (error) {
            console.error('Error al parsear el mensaje:', error);
            return;
        }

        // Verificar que esten completos los datos
        const { user_id, sede_id, message, author } = parsedData;
        if (!user_id || !sede_id || !message || !author) {
            console.error('Faltan datos necesarios en el mensaje:', parsedData);
            return;
        }

        // console.log('Parsed data:', parsedData);

        // Obtener la hora en formato datetime de SQL de GDL
        const now = new Date();
        const options = {
            timeZone: 'America/Mexico_City',
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false
        };
        const formattedTime = now.toLocaleString('en-CA', options).replace(',', '');
        
        

        console.log('Fecha actual:', formattedTime);


        // console.log('Fecha actual:', formattedTime);

        // Insertar el mensaje en la base de datos
        const insertQuery = "INSERT INTO Messages (user_id, contest_id, sede_id, message_text, sent_at, sender) VALUES (?, ?, ?, ?, ?, ?)";
        connection.query(insertQuery, [user_id, null, sede_id, message, formattedTime, author], (error, results) => {
            if (error) {
                console.error('Error al insertar el mensaje en la base de datos:', error);
                return;
            }
            console.log('Mensaje insertado en la base de datos:', results);
        });

        wss.clients.forEach(client => {
            if(client.readyState === WebSocket.OPEN){
                client.send(data.toString());
            }
        });

    });

    //ws.send('something');

    ws.on('close', () => {
        console.log('Client disconnected');
    });
});