.class Lcom/netflix/mediaclient/service/msl/MSLAgent$2;
.super Ljava/lang/Object;
.source "MSLAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$2;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$2;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$400(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_msl"

    const-string/jumbo v2, "Failed to execute AppBoot asynchronously"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
