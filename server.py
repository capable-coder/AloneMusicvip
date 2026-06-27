from aiohttp import web
import os

async def handle(request):
    return web.Response(text="AloneMusic Bot is Running!")

app = web.Application()
app.add_routes([web.get('/', handle)])

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))
    web.run_app(app, port=port)

