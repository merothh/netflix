.class Lo/cG$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG;->aM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/cG;


# direct methods
.method constructor <init>(Lo/cG;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lo/cG$2;->c:Lo/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 628
    iget-object v0, p0, Lo/cG$2;->c:Lo/cG;

    monitor-enter v0

    :try_start_0
    const-string v1, "nf_configurationagent"

    const-string v2, "Invoking ConfigAgentListeners."

    .line 629
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lo/cG$2;->c:Lo/cG;

    invoke-static {v1}, Lo/cG;->d(Lo/cG;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cG$StateListAnimator;

    .line 631
    iget-object v3, p0, Lo/cG$2;->c:Lo/cG;

    invoke-static {v3}, Lo/cG;->h(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/cG$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lo/cG$2;->c:Lo/cG;

    invoke-static {v1}, Lo/cG;->d(Lo/cG;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 634
    iget-object v1, p0, Lo/cG$2;->c:Lo/cG;

    invoke-static {v1}, Lo/cG;->i(Lo/cG;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cG$StateListAnimator;

    .line 635
    iget-object v3, p0, Lo/cG$2;->c:Lo/cG;

    invoke-static {v3}, Lo/cG;->h(Lo/cG;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/cG$StateListAnimator;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 637
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
