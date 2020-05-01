.class Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;
.super Ljava/lang/Object;
.source "ImageBasedSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

.field final synthetic val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$show:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delayed show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$show:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed from pending queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$show:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> showSubtitleBlock was called from pending queue!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->access$100(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> removeSubtitleBlock was called from pending queue!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->access$200(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
