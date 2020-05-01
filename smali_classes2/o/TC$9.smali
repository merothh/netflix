.class Lo/TC$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lo/TC$9;->a:Lo/TC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2575
    iget-object v0, p0, Lo/TC$9;->a:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v0, v0, Lo/TC;->j:Lo/Uc;

    iget-boolean v0, v0, Lo/Uc;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v0, v0, Lo/TC;->j:Lo/Uc;

    iget-boolean v0, v0, Lo/Uc;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2580
    :cond_0
    monitor-enter p0

    .line 2582
    :try_start_0
    iget-object v0, p0, Lo/TC$9;->a:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->Y()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v0

    .line 2583
    iget-object v1, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v1, v1, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1}, Lo/Uc;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 2584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v5, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v5, v5, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v5}, Lo/Uc;->b()J

    move-result-wide v5

    sub-long/2addr v1, v5

    iget-object v5, p0, Lo/TC$9;->a:Lo/TC;

    invoke-static {v5}, Lo/TC;->n(Lo/TC;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    iget-object v1, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v1, v1, Lo/TC;->j:Lo/Uc;

    .line 2585
    invoke-virtual {v1}, Lo/Uc;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Q()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2586
    :cond_1
    iget-object v1, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v1, v1, Lo/TC;->o:Lo/UpdateEngine;

    const-class v2, Lo/UP;

    sget-object v5, Lo/UP$Context;->c:Lo/UP$Context;

    invoke-virtual {v1, v2, v5}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 2587
    iget-object v1, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v1, v1, Lo/TC;->j:Lo/Uc;

    invoke-virtual {v1, v3, v4}, Lo/Uc;->d(J)V

    :cond_2
    if-eqz v0, :cond_3

    .line 2590
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2594
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->x()J

    move-result-wide v1

    long-to-int v2, v1

    .line 2596
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->P()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2597
    iget-object v0, p0, Lo/TC$9;->a:Lo/TC;

    iget-object v0, v0, Lo/TC;->o:Lo/UpdateEngine;

    const-class v1, Lo/UP;

    new-instance v3, Lo/UP$Configuration;

    invoke-direct {v3, v2}, Lo/UP$Configuration;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 2600
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2601
    iget-object v0, p0, Lo/TC$9;->a:Lo/TC;

    invoke-static {}, Lo/TC;->aH()I

    move-result v1

    invoke-static {v0, v1}, Lo/TC;->a(Lo/TC;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 2600
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_0
    const-string v0, "PlayerFragment"

    const-string v1, "METADATA exit"

    .line 2576
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
