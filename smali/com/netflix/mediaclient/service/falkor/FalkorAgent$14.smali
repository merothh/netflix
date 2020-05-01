.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->serializeFalcorCache()V

    .line 1106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$14;->val$jobSchedulerCountdown:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$1100(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V

    .line 1107
    return-void
.end method
