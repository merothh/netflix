.class Lcom/google/android/exoplayer2/ExoPlayerImpl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;->setRepeatMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$4;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$4;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$000(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 202
    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$4;->val$mode:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/Player$EventListener;->onRepeatModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
