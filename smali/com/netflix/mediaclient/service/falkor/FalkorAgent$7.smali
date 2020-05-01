.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowsePlaySessionEnd(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "FalkorAgent"

    const-string/jumbo v1, "onBrowsePlaySessionEnd() returned false - something wrong with backend!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SPY-8604 - Got false response from the server"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
