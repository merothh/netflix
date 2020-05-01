.class Lo/kz$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kz;-><init>(Lo/kz$Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/kz;


# direct methods
.method constructor <init>(Lo/kz;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/kz$5;->c:Lo/kz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 26
    iget-object v0, p0, Lo/kz$5;->c:Lo/kz;

    invoke-static {v0}, Lo/kz;->b(Lo/kz;)Lo/kz$Activity;

    move-result-object v0

    invoke-interface {v0}, Lo/kz$Activity;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v0, "nf_mdxSessionWatchDog"

    const-wide/32 v3, 0x493e0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, "MdxSessionWatchDog:  expired"

    .line 28
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lo/kz$5;->c:Lo/kz;

    invoke-static {v0}, Lo/kz;->b(Lo/kz;)Lo/kz$Activity;

    move-result-object v0

    invoke-interface {v0}, Lo/kz$Activity;->u()V

    goto :goto_0

    :cond_0
    const-string v1, "MdxSessionWatchDog: check if session still alive"

    .line 31
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lo/kz$5;->c:Lo/kz;

    invoke-static {v0}, Lo/kz;->c(Lo/kz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/kz$5;->c:Lo/kz;

    invoke-static {v1}, Lo/kz;->d(Lo/kz;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
