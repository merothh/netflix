.class Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;
.super Ljava/lang/Object;
.source "BaseInteractiveMomentsManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

.field final synthetic val$playbackCompleteListener:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;Ljava/lang/String;Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$playbackCompleteListener:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackError(II)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->isActivityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media player completed (or failed) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 229
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    const-string/jumbo v0, "BaseInteractiveMomentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media player size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$playbackCompleteListener:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$playbackCompleteListener:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;->onComplete(Ljava/lang/String;)V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->urlToMediaPlayerMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onPlaybackStarted()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onPlaybackSuccessfullyCompleted()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method
