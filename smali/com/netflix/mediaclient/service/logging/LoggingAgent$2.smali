.class Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;
.super Ljava/lang/Object;
.source "LoggingAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Running state check..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$000(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/IntegratedClientLoggingManager;->checkState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$100(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->checkState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$200(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;->checkState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$300(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->checkState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->checkState()V

    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Running state check done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
