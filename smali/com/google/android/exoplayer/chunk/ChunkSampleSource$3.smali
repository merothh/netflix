.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$bytesLoaded:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->val$bytesLoaded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->val$bytesLoaded:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;->onLoadCanceled(IJ)V

    return-void
.end method
