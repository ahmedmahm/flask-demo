from fastapi import FastAPI, Request, Response

app = FastAPI()

@app.get('/')
def tester():
    return {"Hello": "World"}

if __name__ == "__main__":
    uvicorn.run(app)