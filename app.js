const http = require('http');
const fs = require('fs');
const { createClient } = require('redis');

const redis = createClient({
    url: 'redis://redis:6379'
});

redis.on('error', (err) => {
    console.log('Redis error:', err.message);
});

async function start() {

    try {

        await redis.connect();

        console.log('Conectado a Redis');

    } catch (error) {

        console.log('Redis todavía no disponible');

    }


    const server = http.createServer(async (req, res) => {

        if (req.url === '/health') {

            res.writeHead(200, {
                'Content-Type': 'application/json'
            });

            res.end(JSON.stringify({

                status: 'online',

                service: 'Node.js',

                redis: redis.isOpen
                    ? 'connected'
                    : 'disconnected'

            }));

            return;

        }


        if (req.url === '/redis') {

            try {

                if (!redis.isOpen) {

                    throw new Error(
                        'Redis no conectado'
                    );

                }


                await redis.set(
                    'docker-compose',
                    'Redis funcionando correctamente'
                );


                const value =
                    await redis.get(
                        'docker-compose'
                    );


                res.writeHead(200, {

                    'Content-Type':
                        'application/json'

                });


                res.end(JSON.stringify({

                    redis: 'OK',

                    message: value

                }));


            } catch (error) {

                res.writeHead(500, {

                    'Content-Type':
                        'application/json'

                });


                res.end(JSON.stringify({

                    redis: 'ERROR',

                    message: error.message

                }));

            }

            return;

        }


        if (req.url === '/') {

            fs.readFile(
                '/app/index.html',
                (err, data) => {

                    if (err) {

                        res.writeHead(500);

                        res.end(
                            'Error al cargar dashboard'
                        );

                        return;

                    }


                    res.writeHead(200, {

                        'Content-Type':
                            'text/html; charset=utf-8'

                    });


                    res.end(data);

                }
            );

            return;

        }


        res.writeHead(404);

        res.end('404 - Not Found');

    });


    server.listen(
        3000,
        '0.0.0.0',
        () => {

            console.log(
                'Node.js ejecutándose en puerto 3000'
            );

        }
    );

}

start();
