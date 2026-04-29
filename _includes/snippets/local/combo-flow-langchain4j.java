# Illustrative — see Quarkus Flow docs for the current Java + DSL integration API.
# src/main/resources/research-and-summarize.yaml
document: { dsl: "1.0.0", namespace: "demo", name: "research", version: "1.0.0" }
do:
  - research:
      call: function
      with: { name: "researchTopic", arguments: { topic: "${ .topic }" } }
  - summarize:
      call: function
      with: { name: "summarizeFindings", arguments: { findings: "${ .research }" } }

// Java functions exposed to the workflow

@ApplicationScoped
public class ResearchFunctions {

    @Inject ResearchAssistant assistant;

    @WorkflowFunction("researchTopic")
    public String research(String topic) { return assistant.research(topic); }

    @WorkflowFunction("summarizeFindings")
    public String summarize(String findings) { return assistant.summarize(findings); }
}
