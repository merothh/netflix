.class Lcom/google/android/exoplayer/dash/DashChunkSource$1;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

.field final synthetic val$seekRange:Lcom/google/android/exoplayer/TimeRange;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/TimeRange;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->val$seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->access$400(Lcom/google/android/exoplayer/dash/DashChunkSource;)Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

    invoke-static {v1}, Lcom/google/android/exoplayer/dash/DashChunkSource;->access$300(Lcom/google/android/exoplayer/dash/DashChunkSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$1;->val$seekRange:Lcom/google/android/exoplayer/TimeRange;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;->onAvailableRangeChanged(ILcom/google/android/exoplayer/TimeRange;)V

    return-void
.end method
