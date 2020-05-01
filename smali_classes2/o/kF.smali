.class public Lo/kF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/kF$Application;,
        Lo/kF$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Lo/kF$Application;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;

.field private i:Lo/kF$TaskDescription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/kF$TaskDescription;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lo/kF;->d:Z

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lo/kF;->e:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lo/kF;->b:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lo/kF;->c:Ljava/lang/String;

    .line 44
    new-instance v0, Lo/kF$Application;

    invoke-direct {v0, p0}, Lo/kF$Application;-><init>(Lo/kF;)V

    iput-object v0, p0, Lo/kF;->a:Lo/kF$Application;

    .line 46
    iput-object p1, p0, Lo/kF;->f:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lo/kF;->i:Lo/kF$TaskDescription;

    return-void
.end method

.method static synthetic a(Lo/kF;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/kF;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lo/kF;)Lo/kF$Application;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/kF;->a:Lo/kF$Application;

    return-object p0
.end method

.method static synthetic c(Lo/kF;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/kF;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lo/kF;)Lo/kF$TaskDescription;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/kF;->i:Lo/kF$TaskDescription;

    return-object p0
.end method

.method private d(J)V
    .locals 2

    .line 163
    iget-boolean v0, p0, Lo/kF;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetSelector: startCountDown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_mdxTargetSelector"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic e(Lo/kF;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/kF;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lo/kF;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/kF;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/kF;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lo/mo;)Z
    .locals 3

    .line 115
    iget-boolean v0, p0, Lo/kF;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/kF;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lo/mo;->n()Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v2, p0, Lo/kF;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/kF;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public b()V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lo/kF;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-wide/32 v0, 0xc042c0

    .line 160
    invoke-direct {p0, v0, v1}, Lo/kF;->d(J)V

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/kF;->a:Lo/kF$Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/kF$Application;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 5

    .line 51
    iget-boolean v0, p0, Lo/kF;->d:Z

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 53
    :cond_0
    iput-boolean v1, p0, Lo/kF;->d:Z

    .line 54
    new-instance v0, Lo/kF$5;

    invoke-direct {v0, p0}, Lo/kF$5;-><init>(Lo/kF;)V

    iput-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    .line 92
    iget-object v0, p0, Lo/kF;->f:Landroid/content/Context;

    const-wide/16 v1, 0x0

    const-string v3, "mdx_target_lastactive"

    invoke-static {v0, v3, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xc042c0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 97
    iget-object v0, p0, Lo/kF;->f:Landroid/content/Context;

    iget-object v1, p0, Lo/kF;->b:Ljava/lang/String;

    const-string v2, "mdx_target_uuid"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/kF;->b:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lo/kF;->f:Landroid/content/Context;

    iget-object v1, p0, Lo/kF;->e:Ljava/lang/String;

    const-string v2, "mdx_target_location"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/kF;->e:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lo/kF;->a:Lo/kF$Application;

    iget-object v1, p0, Lo/kF;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/kF$Application;->c(Landroid/content/Context;)Lo/kF$Application;

    move-result-object v0

    iput-object v0, p0, Lo/kF;->a:Lo/kF$Application;

    :cond_1
    return-void
.end method

.method public d(Lo/mo;)V
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p1}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v2

    .line 129
    :goto_1
    iget-boolean v3, p0, Lo/kF;->d:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lo/kF;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_5

    .line 133
    :cond_2
    iget-object v3, p0, Lo/kF;->b:Ljava/lang/String;

    iput-object v3, p0, Lo/kF;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v3, v1

    .line 134
    :goto_2
    iput-object v3, p0, Lo/kF;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 135
    :goto_3
    iput-object v0, p0, Lo/kF;->e:Ljava/lang/String;

    .line 136
    new-instance v0, Lo/kF$Application;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/mo;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v2, p1}, Lo/kF$Application;-><init>(Lo/kF;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-direct {v0, p0}, Lo/kF$Application;-><init>(Lo/kF;)V

    :goto_4
    iput-object v0, p0, Lo/kF;->a:Lo/kF$Application;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 137
    iget-object v3, p0, Lo/kF;->a:Lo/kF$Application;

    invoke-virtual {v3}, Lo/kF$Application;->d()Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "nf_mdxTargetSelector"

    const-string v3, "selectNewTarget %s"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5

    :cond_6
    const-wide/32 v0, 0xc042c0

    .line 145
    invoke-direct {p0, v0, v1}, Lo/kF;->d(J)V

    :cond_7
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    .line 150
    iget-boolean v0, p0, Lo/kF;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    iget-object v0, p0, Lo/kF;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
