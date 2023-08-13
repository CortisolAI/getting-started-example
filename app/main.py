import logging

from fastapi import FastAPI
import uvicorn


logging.basicConfig(
    filename='cortisol_app.log',
    filemode='a',
    format='%(asctime)s %(levelname)s %(message)s',
    level=logging.INFO)

app = FastAPI()


@app.get("/")
def read_root():
    logging.info("This is a log")
    return {"Hello": "Cortisol"}


if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=8080)
