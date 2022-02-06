from fastapi import FastAPI
from os import environ
app = FastAPI()


@app.get("/")
async def root():
    name = environ.get("NAME", "candidate")
    return {"message": f"Hello {name}"}
