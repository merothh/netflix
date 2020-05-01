.class Lo/kF$5;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/kF;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/kF;


# direct methods
.method constructor <init>(Lo/kF;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 56
    new-instance v0, Lo/aea;

    invoke-direct {v0}, Lo/aea;-><init>()V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "mdx_target_location"

    const-string v3, "mdx_target_uuid"

    const-string v4, "mdx_target_lastactive"

    const-string v5, "nf_mdxTargetSelector"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const-string p1, "TargetSelector: unknown message"

    .line 87
    invoke-static {v5, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 82
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Lo/aea;->c(Ljava/lang/String;J)Z

    .line 83
    invoke-virtual {v0}, Lo/aea;->b()V

    goto/16 :goto_0

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetSelector: new target is selected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {v1}, Lo/kF;->c(Lo/kF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Lo/aea;->c(Ljava/lang/String;J)Z

    .line 71
    invoke-virtual {v0}, Lo/aea;->b()V

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetSelector: update selected target "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {v1}, Lo/kF;->c(Lo/kF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " targetInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {v1}, Lo/kF;->b(Lo/kF;)Lo/kF$Application;

    move-result-object v1

    invoke-virtual {v1}, Lo/kF$Application;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {p1}, Lo/kF;->c(Lo/kF;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lo/aea;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    iget-object p1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {p1}, Lo/kF;->a(Lo/kF;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lo/aea;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    iget-object p1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {p1}, Lo/kF;->b(Lo/kF;)Lo/kF$Application;

    move-result-object p1

    iget-object v1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {v1}, Lo/kF;->e(Lo/kF;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/kF$Application;->e(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0}, Lo/aea;->b()V

    .line 78
    iget-object p1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {p1}, Lo/kF;->d(Lo/kF;)Lo/kF$TaskDescription;

    move-result-object p1

    iget-object v0, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {v0}, Lo/kF;->c(Lo/kF;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {v1}, Lo/kF;->f(Lo/kF;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/kF$TaskDescription;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "TargetSelector: target stickiness expired"

    .line 60
    invoke-static {v5, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lo/aea;->c(Ljava/lang/String;J)Z

    const-string p1, ""

    .line 62
    invoke-virtual {v0, v3, p1}, Lo/aea;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    invoke-virtual {v0, v2, p1}, Lo/aea;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    invoke-virtual {v0}, Lo/aea;->b()V

    .line 65
    iget-object p1, p0, Lo/kF$5;->c:Lo/kF;

    invoke-static {p1}, Lo/kF;->d(Lo/kF;)Lo/kF$TaskDescription;

    move-result-object p1

    invoke-interface {p1}, Lo/kF$TaskDescription;->p()V

    :goto_0
    return-void
.end method
