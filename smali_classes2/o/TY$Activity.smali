.class final Lo/TY$Activity;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

.field private final d:Landroid/content/Context;

.field private e:Lo/Bc;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .line 262
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lo/TY$Activity;->a:Landroid/content/BroadcastReceiver;

    .line 263
    iput-object p2, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 264
    iput-object p3, p0, Lo/TY$Activity;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 265
    iput-object p1, p0, Lo/TY$Activity;->d:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Landroid/support/v4/media/session/MediaSessionCompat;Lo/TY$5;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lo/TY$Activity;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Landroid/support/v4/media/session/MediaSessionCompat;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/TY$Activity;->b:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Lo/IllegalStateException$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lo/IllegalStateException$StateListAnimator;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private e(Lo/Bc;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lo/TY$Activity;->e:Lo/Bc;

    return-void
.end method

.method static synthetic e(Lo/TY$Activity;Lo/Bc;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lo/TY$Activity;->e(Lo/Bc;)V

    return-void
.end method


# virtual methods
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "customActionSeek"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "offset"

    .line 251
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "nf_mde"

    const-string v2, "onCustomAction action action=%s offset=%d"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    iget-object v1, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->d(I)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-static {}, Lo/TY;->e()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "onCustomAction unsupported action=%s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .locals 4

    .line 291
    iget-object v0, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->W_()V

    .line 292
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lo/jP;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v1

    sget v2, Lo/TC;->b:I

    div-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo/jP;-><init>(Ljava/lang/String;IZ)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 282
    iget-object v0, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a()V

    .line 283
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lo/jL;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "pause"

    invoke-direct {v0, v1, v3, v2}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 4

    .line 342
    iget-object v0, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->j()V

    .line 343
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Lo/jL;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "resume"

    invoke-direct {v0, v1, v3, v2}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 4

    .line 300
    iget-object v0, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->V_()V

    .line 301
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Lo/jP;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v1

    sget v2, Lo/TC;->b:I

    neg-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo/jP;-><init>(Ljava/lang/String;IZ)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 2

    .line 333
    iget-object v0, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->c(I)V

    .line 334
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    new-instance p1, Lo/jL;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "seek"

    invoke-direct {p1, p2, v1, v0}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 4

    .line 309
    iget-object v0, p0, Lo/TY$Activity;->e:Lo/Bc;

    if-eqz v0, :cond_1

    .line 310
    invoke-static {v0}, Lo/ia;->b(Lo/Bc;)Lo/agg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-interface {v0}, Lo/agg;->bb()Lo/AK;

    move-result-object v3

    invoke-interface {v3}, Lo/AK;->P()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;I)V

    :cond_0
    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lo/TY$Activity;->e:Lo/Bc;

    .line 316
    :cond_1
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    new-instance v0, Lo/jL;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "next"

    invoke-direct {v0, v1, v3, v2}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 324
    iget-object v0, p0, Lo/TY$Activity;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a()V

    .line 325
    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/TY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lo/jL;

    invoke-direct {p0}, Lo/TY$Activity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "pause"

    invoke-direct {v0, v1, v3, v2}, Lo/jL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lo/aek;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_0
    return-void
.end method
