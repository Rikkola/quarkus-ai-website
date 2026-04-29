// application.properties
// quarkus.langchain4j.mcp.local-tools.transport-type=stdio
// quarkus.langchain4j.mcp.local-tools.command=jbang,mcp-server-jdbc@quarkiverse/quarkus-mcp-servers

@RegisterAiService
public interface DataAssistant {

    @ToolBox  // tools come from the configured MCP server
    String query(@UserMessage String question);
}
