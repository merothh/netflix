.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$100(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->this$0:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v1}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->access$000(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    return-void
.end method
