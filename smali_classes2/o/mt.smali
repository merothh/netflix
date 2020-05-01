.class public Lo/mt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mt$StateListAnimator;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private final d:Lo/kO;

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private final k:Ljava/lang/String;

.field private final l:Lo/kH;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Lo/mt$StateListAnimator;

.field private r:J

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/kH;Ljava/lang/String;Lo/kO;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lo/mt;->a:I

    .line 29
    iput v0, p0, Lo/mt;->e:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lo/mt;->c:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lo/mt;->h:Z

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lo/mt;->o:J

    .line 43
    iput-wide v0, p0, Lo/mt;->r:J

    .line 44
    new-instance v0, Lo/mt$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/mt$StateListAnimator;-><init>(Lo/mt$2;)V

    iput-object v0, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    const-string v0, "MdxTargetPlayerState"

    const-string v1, "PlayerStateManager"

    .line 47
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lo/mt;->l:Lo/kH;

    .line 49
    iput-object p2, p0, Lo/mt;->k:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lo/mt;->d:Lo/kO;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MdxTargetPlayerState"

    const-string v1, "TargetContext: playbackStart"

    .line 253
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lo/mt;->f()V

    .line 255
    iget-object v0, p0, Lo/mt;->l:Lo/kH;

    invoke-interface {v0, p1}, Lo/kH;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lo/mt;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/mt;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lo/mt;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/mt;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "MdxTargetPlayerState"

    const-string v2, "TargetContext: PlayerStateManager notify state %s, volume = %d, , time = %d, skipIntroWindow = %b."

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    iget-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v1, "END_PLAYBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v1, "FATAL_ERROR"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lo/mt;->l:Lo/kH;

    iget-object v1, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v1}, Lo/mt$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v2}, Lo/mt$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v3}, Lo/mt$StateListAnimator;->d()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lo/kH;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    :cond_0
    iget-object v4, p0, Lo/mt;->l:Lo/kH;

    iget-object v6, p0, Lo/mt;->b:Ljava/lang/String;

    iget v7, p0, Lo/mt;->a:I

    iget v8, p0, Lo/mt;->e:I

    iget-boolean v9, p0, Lo/mt;->c:Z

    iget-object v10, p0, Lo/mt;->g:Ljava/lang/String;

    iget-object v11, p0, Lo/mt;->i:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v4 .. v11}, Lo/kH;->c(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lo/mb;)V
    .locals 6

    .line 210
    invoke-virtual {p2}, Lo/mb;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/mt;->m:Ljava/lang/String;

    .line 211
    invoke-virtual {p2}, Lo/mb;->f()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lo/mt;->l:Lo/kH;

    invoke-interface {v1, p1, v0}, Lo/kH;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    iput-object v0, p0, Lo/mt;->n:Ljava/lang/String;

    .line 219
    invoke-virtual {p2}, Lo/mb;->g()Z

    move-result p1

    iput-boolean p1, p0, Lo/mt;->c:Z

    .line 220
    invoke-virtual {p2}, Lo/mb;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/mt;->g:Ljava/lang/String;

    .line 221
    invoke-virtual {p2}, Lo/mb;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/mt;->i:Ljava/lang/String;

    .line 223
    invoke-virtual {p2}, Lo/mb;->b()I

    move-result p1

    iput p1, p0, Lo/mt;->a:I

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/mt;->f:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    const-string p1, "MdxTargetPlayerState"

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 225
    invoke-virtual {p2}, Lo/mb;->i()I

    move-result v0

    iput v0, p0, Lo/mt;->e:I

    goto :goto_0

    .line 227
    :cond_1
    iget v0, p0, Lo/mt;->j:I

    iput v0, p0, Lo/mt;->e:I

    const-string v0, "TargetContext: PlayerStateManager overide volume"

    .line 228
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "TargetContext: processStateAndNotifyPostPlayIfNeeded %s"

    .line 230
    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    invoke-virtual {p2}, Lo/mb;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "END_PLAYBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2}, Lo/mt$StateListAnimator;->c(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 234
    :cond_2
    iget-object p1, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {p1}, Lo/mt$StateListAnimator;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lo/mb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    .line 235
    invoke-virtual {p1}, Lo/mt$StateListAnimator;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lo/mb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    .line 236
    invoke-virtual {p1}, Lo/mt$StateListAnimator;->d()I

    move-result p1

    invoke-virtual {p2}, Lo/mb;->j()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 237
    :cond_3
    iget-object p1, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {p2}, Lo/mb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo/mb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lo/mb;->j()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lo/mt$StateListAnimator;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MdxTargetPlayerState"

    const-string v1, "TargetContext: playbackEnd"

    .line 258
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v1, v2}, Lo/mt$StateListAnimator;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    iget-object v0, p0, Lo/mt;->l:Lo/kH;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lo/kH;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lo/mt;->t:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 285
    iput-wide v0, p0, Lo/mt;->r:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 268
    iput-object p1, p0, Lo/mt;->t:Ljava/lang/String;

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/mt;->r:J

    .line 270
    iget-object p1, p0, Lo/mt;->l:Lo/kH;

    iget-object v0, p0, Lo/mt;->k:Ljava/lang/String;

    iget-object v1, p0, Lo/mt;->t:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lo/kH;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 5

    .line 273
    iget-object v0, p0, Lo/mt;->t:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lo/mt;->l:Lo/kH;

    iget-object v1, p0, Lo/mt;->k:Ljava/lang/String;

    iget-object v2, p0, Lo/mt;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/kH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 276
    iget-wide v2, p0, Lo/mt;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 280
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/mt;->r:J

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lo/mt;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lo/mb;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lo/mb;->a()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 128
    :cond_1
    iget-boolean v1, p0, Lo/mt;->c:Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Lo/mb;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "MdxTargetPlayerState"

    const-string v6, "TargetContext: updateState %s"

    invoke-static {v4, v6, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iget-object v3, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lo/mt;->c(Ljava/lang/String;Lo/mb;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lo/mt;->o:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7530

    cmp-long p1, v6, v8

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v3, "PLAYING"

    const-string v6, "PAUSE"

    if-nez p1, :cond_6

    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lo/mt;->h:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 137
    :goto_1
    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v5, "preplay"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v2, :cond_4

    const-string p1, "TargetContext: updateState, still in preplay"

    .line 139
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_4
    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v5, "prepause"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "TargetContext: updateState, still in prepause"

    .line 143
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_5
    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v5, "preseek"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    const-string p1, "TargetContext: updateState, still in preseek"

    .line 147
    invoke-static {v4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 152
    iget-object p1, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/mt;->b(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lo/mt;->l:Lo/kH;

    iget-object v2, p0, Lo/mt;->k:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lo/mt;->c:Z

    iget-object v6, p0, Lo/mt;->i:Ljava/lang/String;

    iget-object v7, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :cond_7
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 155
    iget-object p1, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/mt;->b(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lo/mt;->l:Lo/kH;

    iget-object v2, p0, Lo/mt;->k:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lo/mt;->c:Z

    iget-object v6, p0, Lo/mt;->i:Ljava/lang/String;

    iget-object v7, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_8
    iget-boolean p1, p0, Lo/mt;->c:Z

    if-eq v1, p1, :cond_9

    .line 158
    iget-object v7, p0, Lo/mt;->l:Lo/kH;

    iget-object v8, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    iget-boolean v11, p0, Lo/mt;->c:Z

    iget-object v12, p0, Lo/mt;->i:Ljava/lang/String;

    iget-object v13, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-interface/range {v7 .. v13}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_9
    :goto_2
    iput-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/mt;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 288
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STOP"

    iget-object v1, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FATAL_ERROR"

    iget-object v1, p0, Lo/mt;->b:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "END_PLAYBACK"

    iget-object v1, p0, Lo/mt;->b:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Lo/aeM$Application;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v0}, Lo/mt$StateListAnimator;->c()Lo/aeM$Application;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/mb;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lo/mb;->a()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 79
    :cond_1
    iget-boolean v1, p0, Lo/mt;->c:Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Lo/mb;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "MdxTargetPlayerState"

    const-string v6, "TargetContext: changeState %s"

    invoke-static {v4, v6, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    iget-object v3, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lo/mt;->c(Ljava/lang/String;Lo/mb;)V

    const-string p1, "PLAYING"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "PAUSE"

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v7, "prepause"

    .line 84
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lo/mt;->b:Ljava/lang/String;

    const-string v7, "preseek"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lo/mt;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    iget-object v3, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/mt;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "STOP"

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "END_PLAYBACK"

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "FATAL_ERROR"

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    :cond_3
    iget-object v3, p0, Lo/mt;->k:Ljava/lang/String;

    iget-object v7, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-direct {p0, v3, v7}, Lo/mt;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 93
    iget-object v7, p0, Lo/mt;->l:Lo/kH;

    iget-object v8, p0, Lo/mt;->k:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, p0, Lo/mt;->c:Z

    iget-object v12, p0, Lo/mt;->i:Ljava/lang/String;

    iget-object v13, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-interface/range {v7 .. v13}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/mt;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 95
    iget-object v7, p0, Lo/mt;->l:Lo/kH;

    iget-object v8, p0, Lo/mt;->k:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-boolean v11, p0, Lo/mt;->c:Z

    iget-object v12, p0, Lo/mt;->i:Ljava/lang/String;

    iget-object v13, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-interface/range {v7 .. v13}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_6
    iget-boolean p1, p0, Lo/mt;->c:Z

    if-eq v1, p1, :cond_7

    .line 97
    iget-object v7, p0, Lo/mt;->l:Lo/kH;

    iget-object v8, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    iget-boolean v11, p0, Lo/mt;->c:Z

    iget-object v12, p0, Lo/mt;->i:Ljava/lang/String;

    iget-object v13, p0, Lo/mt;->n:Ljava/lang/String;

    invoke-interface/range {v7 .. v13}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    const-string p1, "PLAY"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    iget-object v6, p0, Lo/mt;->l:Lo/kH;

    iget-object v7, p0, Lo/mt;->k:Ljava/lang/String;

    iget v9, p0, Lo/mt;->a:I

    iget v10, p0, Lo/mt;->e:I

    iget-boolean v11, p0, Lo/mt;->c:Z

    iget-object v12, p0, Lo/mt;->g:Ljava/lang/String;

    iget-object v13, p0, Lo/mt;->i:Ljava/lang/String;

    const-string v8, "preplay"

    invoke-interface/range {v6 .. v13}, Lo/kH;->c(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "PROGRESS"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 107
    :cond_9
    iget-boolean p1, p0, Lo/mt;->h:Z

    if-eqz p1, :cond_b

    .line 108
    iput-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lo/mt;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/mt;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 105
    :cond_a
    :goto_2
    iput-boolean v2, p0, Lo/mt;->h:Z

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/mt;->o:J

    :cond_b
    :goto_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    aput-object v0, p1, v5

    const-string v0, "TargetContext: PlayerStateManager state changed to %s"

    invoke-static {v4, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lo/mt;->b:Ljava/lang/String;

    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lo/mt;->a:I

    .line 55
    iput v1, p0, Lo/mt;->e:I

    const/4 v2, 0x0

    .line 56
    iput-boolean v2, p0, Lo/mt;->c:Z

    .line 57
    iput-object v0, p0, Lo/mt;->g:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lo/mt;->i:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v2, v0, v0, v1}, Lo/mt$StateListAnimator;->c(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lo/mt;->h:Z

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lo/mt;->o:J

    .line 62
    iput-object v0, p0, Lo/mt;->n:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lo/mt;->t:Ljava/lang/String;

    .line 64
    iput-wide v1, p0, Lo/mt;->r:J

    return-void
.end method

.method public e(Lo/ly;)V
    .locals 17

    move-object/from16 v0, p0

    .line 165
    invoke-virtual/range {p1 .. p1}, Lo/ly;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLAYER_PLAY"

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "preplay"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 167
    iput-boolean v4, v0, Lo/mt;->h:Z

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/mt;->o:J

    .line 169
    iput-object v3, v0, Lo/mt;->b:Ljava/lang/String;

    const/4 v1, -0x1

    .line 170
    iput v1, v0, Lo/mt;->a:I

    .line 171
    iput v1, v0, Lo/mt;->e:I

    .line 172
    iget-object v2, v0, Lo/mt;->p:Lo/mt$StateListAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1}, Lo/mt$StateListAnimator;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    iget-object v4, v0, Lo/mt;->l:Lo/kH;

    iget-object v5, v0, Lo/mt;->k:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-boolean v8, v0, Lo/mt;->c:Z

    iget-object v9, v0, Lo/mt;->i:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "PLAYER_RESUME"

    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/mt;->o:J

    .line 177
    iput-boolean v4, v0, Lo/mt;->h:Z

    .line 178
    iput-object v3, v0, Lo/mt;->b:Ljava/lang/String;

    .line 179
    iget-object v5, v0, Lo/mt;->l:Lo/kH;

    iget-object v6, v0, Lo/mt;->k:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-boolean v9, v0, Lo/mt;->c:Z

    iget-object v10, v0, Lo/mt;->i:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "PLAYER_PAUSE"

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/mt;->o:J

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, v0, Lo/mt;->h:Z

    const-string v1, "prepause"

    .line 183
    iput-object v1, v0, Lo/mt;->b:Ljava/lang/String;

    .line 184
    iget-object v2, v0, Lo/mt;->l:Lo/kH;

    iget-object v3, v0, Lo/mt;->k:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-boolean v6, v0, Lo/mt;->c:Z

    iget-object v7, v0, Lo/mt;->i:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "PLAYER_SKIP"

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "PLAYER_SET_CURRENT_TIME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "PLAYER_GET_CURRENT_STATE"

    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    iget-object v3, v0, Lo/mt;->l:Lo/kH;

    iget-object v4, v0, Lo/mt;->k:Ljava/lang/String;

    iget-object v5, v0, Lo/mt;->b:Ljava/lang/String;

    iget v6, v0, Lo/mt;->a:I

    iget v7, v0, Lo/mt;->e:I

    iget-boolean v8, v0, Lo/mt;->c:Z

    iget-object v9, v0, Lo/mt;->g:Ljava/lang/String;

    iget-object v10, v0, Lo/mt;->i:Ljava/lang/String;

    invoke-interface/range {v3 .. v10}, Lo/kH;->c(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, v0, Lo/mt;->l:Lo/kH;

    iget-object v2, v0, Lo/mt;->k:Ljava/lang/String;

    iget-object v3, v0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v3}, Lo/mt$StateListAnimator;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v4}, Lo/mt$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lo/mt;->p:Lo/mt$StateListAnimator;

    invoke-virtual {v5}, Lo/mt$StateListAnimator;->d()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lo/kH;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v2, "PLAYER_SET_VOLUME"

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    move-object/from16 v1, p1

    check-cast v1, Lo/lQ;

    .line 196
    invoke-virtual {v1}, Lo/lQ;->a()I

    move-result v1

    iput v1, v0, Lo/mt;->j:I

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/mt;->f:J

    :cond_5
    return-void

    .line 186
    :cond_6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lo/mt;->o:J

    .line 187
    iput-boolean v4, v0, Lo/mt;->h:Z

    const-string v1, "preseek"

    .line 188
    iput-object v1, v0, Lo/mt;->b:Ljava/lang/String;

    .line 189
    iget-object v2, v0, Lo/mt;->l:Lo/kH;

    iget-object v3, v0, Lo/mt;->k:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v6, v0, Lo/mt;->c:Z

    iget-object v7, v0, Lo/mt;->i:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lo/kH;->c(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_1
    iget-object v9, v0, Lo/mt;->l:Lo/kH;

    iget-object v10, v0, Lo/mt;->k:Ljava/lang/String;

    iget-object v11, v0, Lo/mt;->b:Ljava/lang/String;

    iget v12, v0, Lo/mt;->a:I

    iget v13, v0, Lo/mt;->e:I

    iget-boolean v14, v0, Lo/mt;->c:Z

    iget-object v15, v0, Lo/mt;->g:Ljava/lang/String;

    iget-object v1, v0, Lo/mt;->i:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-interface/range {v9 .. v16}, Lo/kH;->c(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
