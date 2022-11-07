import fastify from 'fastify'

const app = fastify()
const port = Number(process.env.PORT) || 3000

app.get('/', async (req, reply) => {
  reply.send('ok')
})

;(async () => {
  await app.listen({port, host: '0.0.0.0'})
  console.log(`Server started on http://127.0.0.1:${port}`)
})()
