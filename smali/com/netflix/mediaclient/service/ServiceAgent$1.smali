.class Lcom/netflix/mediaclient/service/ServiceAgent$1;
.super Ljava/lang/Object;
.source "ServiceAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/ServiceAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent$1;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    const-string/jumbo v0, "nf_service_ServiceAgent"

    const-string/jumbo v1, "Initing %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/ServiceAgent$1;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent$1;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->doInit()V

    .line 138
    return-void
.end method
