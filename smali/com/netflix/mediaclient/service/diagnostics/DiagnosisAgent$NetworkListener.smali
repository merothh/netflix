.class Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;
.super Ljava/lang/Object;
.source "DiagnosisAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;-><init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 4

    .prologue
    .line 136
    instance-of v0, p1, Lcom/netflix/mediaclient/event/network/NetworkEvent;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lcom/netflix/mediaclient/event/network/NetworkEvent;

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$200(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$200(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$100(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 140
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "nf_service_diagnosisagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL: Ignoring response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getErrorGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setErrorGroup(I)V

    .line 147
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setErrorCode(I)V

    .line 148
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setResult(I)V

    .line 149
    sget-object v1, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->COMPLETED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string/jumbo v1, "nf_service_diagnosisagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo v1, "nf_service_diagnosisagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Err Group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->getErrorGroup()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$104(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)I

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$NetworkListener;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;->access$300(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "nf_service_diagnosisagent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URL: Ignoring Network Event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/network/NetworkEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
