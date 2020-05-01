.class Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;
.super Ljava/lang/Object;
.source "PdsLoggingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "nf_pds_logs"

    const-string/jumbo v1, "Check if we have not delivered events from last time our app was runnung..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1$1;-><init>(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl$1;->this$0:Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;->access$100(Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;)Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/util/data/DataRepository;->loadAll(Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;)V

    return-void
.end method
