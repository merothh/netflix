.class Lo/LP$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/LP;


# direct methods
.method constructor <init>(Lo/LP;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lo/LP$4;->e:Lo/LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 711
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v0}, Lo/LP;->a(Lo/LP;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v2}, Lo/LP;->b(Lo/LP;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 717
    iget-object v2, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v2}, Lo/LP;->b(Lo/LP;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 718
    iget-object v2, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v2}, Lo/LP;->e(Lo/LP;)J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lo/LP;->b(Lo/LP;J)J

    .line 719
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v0}, Lo/LP;->e(Lo/LP;)J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    .line 720
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSeekBarRunnable, timelinePosInSeconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v0}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/LV;->b(I)V

    .line 727
    :cond_1
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/LP;->e(Lo/LP;J)J

    .line 728
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v0}, Lo/LP;->j(Lo/LP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/LP$4;->e:Lo/LP;

    invoke-static {v1}, Lo/LP;->g(Lo/LP;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 712
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/LP$4;->e:Lo/LP;

    const-string v1, "skipping seekbar update"

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    return-void
.end method
