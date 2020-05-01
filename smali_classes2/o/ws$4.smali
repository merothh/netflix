.class Lo/ws$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ws;


# direct methods
.method constructor <init>(Lo/ws;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lo/ws$4;->b:Lo/ws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1288
    iget-object v0, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v0}, Lo/ws;->d(Lo/ws;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v0}, Lo/ws;->a(Lo/ws;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v1}, Lo/ws;->c(Lo/ws;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1291
    :cond_0
    iget-object v0, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v0}, Lo/ws;->b(Lo/ws;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1292
    iget-object v0, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v0}, Lo/ws;->b(Lo/ws;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    move-result-object v0

    monitor-enter v0

    .line 1293
    :try_start_0
    iget-object v1, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v1}, Lo/ws;->b(Lo/ws;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1294
    iget-object v1, p0, Lo/ws$4;->b:Lo/ws;

    iget-object v2, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v2}, Lo/ws;->b(Lo/ws;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ws;->e(Lo/wo;)V

    .line 1295
    iget-object v1, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v1}, Lo/ws;->b(Lo/ws;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/DlReportJson;->c()V

    .line 1297
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1299
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v0}, Lo/ws;->a(Lo/ws;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/ws$4;->b:Lo/ws;

    invoke-static {v1}, Lo/ws;->c(Lo/ws;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lo/ws;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
