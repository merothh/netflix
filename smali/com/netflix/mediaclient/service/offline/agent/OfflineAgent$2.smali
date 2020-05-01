.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
