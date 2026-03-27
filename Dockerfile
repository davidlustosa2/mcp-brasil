FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir mcp-brasil fastmcp

EXPOSE 8000 

CMD ["fastmcp", "run", "mcp_brasil.server:mcp", "--transport", "http", "--port", "8000"]
