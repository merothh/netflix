.class Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;
.super Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;
.source "AsyncTaskCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;->this$0:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$WorkerRunnable;-><init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;->this$0:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->access$200(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;->this$0:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;->this$0:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->access$300(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
