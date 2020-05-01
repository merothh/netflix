.class Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;
.super Ljava/lang/Object;
.source "EnhancedSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

.field final synthetic val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$show:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 440
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-string/jumbo v1, "nf_subtitles_render"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delayed show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$show:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
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

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$show:Z

    if-eqz v0, :cond_1

    .line 448
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> showSubtitleBlock was called from pending queue!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->access$000(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V

    .line 453
    :goto_0
    monitor-exit v1

    .line 454
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->access$100(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
