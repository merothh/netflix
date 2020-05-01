.class Lo/Ut$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final a:I

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field final synthetic d:Lo/Ut;

.field private e:Lo/Ut$Activity;


# direct methods
.method private constructor <init>(Lo/Ut;Lo/Ut$Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/Ut$Application;->d:Lo/Ut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    .line 138
    iput p1, p0, Lo/Ut$Application;->a:I

    if-eqz p2, :cond_0

    .line 148
    iput-object p2, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    .line 149
    iput-object p3, p0, Lo/Ut$Application;->c:Ljava/lang/Runnable;

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lo/Ut;Lo/Ut$Activity;Ljava/lang/Runnable;Lo/Ut$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lo/Ut$Application;-><init>(Lo/Ut;Lo/Ut$Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(FFF)F
    .locals 0

    mul-float p1, p1, p2

    mul-float p1, p1, p3

    return p1
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v0, -0x1

    .line 155
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 159
    iget-object v3, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v3}, Lo/Ut$Activity;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x14

    .line 160
    iget-object v4, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v4}, Lo/Ut$Activity;->e()I

    move-result v4

    iget-object v5, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v5}, Lo/Ut$Activity;->h()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 161
    iget-object v5, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v5}, Lo/Ut$Activity;->a()I

    move-result v5

    iget-object v6, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v6}, Lo/Ut$Activity;->b()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 162
    iget-object v6, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v6}, Lo/Ut$Activity;->d()F

    move-result v6

    iget-object v7, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v7}, Lo/Ut$Activity;->g()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v3

    .line 165
    iget-object v3, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v3}, Lo/Ut$Activity;->e()I

    move-result v3

    iget-object v7, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v7}, Lo/Ut$Activity;->h()I

    move-result v7

    const/4 v8, 0x1

    if-le v3, v7, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 170
    :goto_0
    iget-object v7, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v7}, Lo/Ut$Activity;->a()I

    move-result v7

    iget-object v9, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v9}, Lo/Ut$Activity;->b()I

    move-result v9

    if-le v7, v9, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    .line 175
    :goto_1
    iget-object v9, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v9}, Lo/Ut$Activity;->d()F

    move-result v9

    iget-object v10, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v10}, Lo/Ut$Activity;->g()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 189
    :goto_2
    iput-boolean v8, p0, Lo/Ut$Application;->b:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 190
    :goto_3
    iget-boolean v10, p0, Lo/Ut$Application;->b:Z

    if-eqz v10, :cond_4

    .line 192
    sget-object v10, Lo/UB;->d:Ljava/lang/String;

    const-string v11, "in loop"

    invoke-static {v10, v11}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    iget-object v12, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v12}, Lo/Ut$Activity;->c()I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_3

    .line 195
    sget-object v10, Lo/UB;->d:Ljava/lang/String;

    const-string v11, "Exit!"

    invoke-static {v10, v11}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v8, p0, Lo/Ut$Application;->b:Z

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 199
    iget-object v10, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v10}, Lo/Ut$Activity;->a()I

    move-result v10

    int-to-float v11, v9

    int-to-float v12, v7

    invoke-direct {p0, v5, v11, v12}, Lo/Ut$Application;->d(FFF)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v10, v12

    .line 200
    iget-object v12, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v12}, Lo/Ut$Activity;->e()I

    move-result v12

    int-to-float v13, v3

    invoke-direct {p0, v4, v11, v13}, Lo/Ut$Application;->d(FFF)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v12, v13

    .line 201
    iget-object v13, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v13}, Lo/Ut$Activity;->d()F

    move-result v13

    mul-float v11, v11, v6

    int-to-float v14, v0

    mul-float v11, v11, v14

    sub-float/2addr v13, v11

    .line 210
    iget-object v11, p0, Lo/Ut$Application;->d:Lo/Ut;

    invoke-virtual {v11, v10, v12, v13}, Lo/Ut;->d(IIF)V

    .line 213
    :try_start_0
    sget-object v10, Lo/UB;->d:Ljava/lang/String;

    const-string v11, "Sleep"

    invoke-static {v10, v11}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x14

    .line 214
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 216
    :catch_0
    sget-object v10, Lo/UB;->d:Ljava/lang/String;

    const-string v11, "Interupped"

    invoke-static {v10, v11}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v8, p0, Lo/Ut$Application;->b:Z

    goto :goto_3

    .line 222
    :cond_4
    iget-object v0, p0, Lo/Ut$Application;->d:Lo/Ut;

    iget-object v1, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v1}, Lo/Ut$Activity;->b()I

    move-result v1

    iget-object v2, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v2}, Lo/Ut$Activity;->h()I

    move-result v2

    iget-object v3, p0, Lo/Ut$Application;->e:Lo/Ut$Activity;

    invoke-virtual {v3}, Lo/Ut$Activity;->g()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lo/Ut;->d(IIF)V

    .line 223
    iget-object v0, p0, Lo/Ut$Application;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lo/Ut$Application;->d:Lo/Ut;

    iget-object v0, v0, Lo/Ut;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v1, p0, Lo/Ut$Application;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->b(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
