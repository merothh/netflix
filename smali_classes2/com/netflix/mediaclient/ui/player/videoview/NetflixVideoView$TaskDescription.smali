.class public final Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/XX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Ya;)V
    .locals 1

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/Ya;II)V
    .locals 0

    const-string p2, "wrapper"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 418
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 419
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Y()V

    .line 420
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Lo/Ya;)V
    .locals 7

    .line 382
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 387
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    if-eqz p1, :cond_7

    .line 388
    invoke-interface {p1}, Lo/Ya;->a()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-interface {p1, v1}, Lo/Ya;->b(Z)V

    .line 393
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object p1

    instance-of p1, p1, Lo/XH;

    const-string v0, "Required value was null."

    if-eqz p1, :cond_5

    .line 394
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object p1

    .line 395
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_3

    .line 398
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lo/XH;

    .line 396
    invoke-static {v1, p1, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/zJ;Lo/XH;)V

    goto :goto_0

    .line 398
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.player.videoview.AV1SurfaceViewWrapper"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 401
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 402
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;)V

    .line 406
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 407
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerBackgroundedStatus(Z)V

    .line 409
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object p1

    if-eqz p1, :cond_6

    const/16 v0, -0x1f4

    invoke-interface {p1, v0}, Lo/zJ;->c(I)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 412
    :cond_7
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    :cond_8
    :goto_1
    return-void
.end method

.method public c(Lo/Ya;)V
    .locals 2

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    invoke-interface {p1, v1}, Lo/Ya;->b(Z)V

    .line 426
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 427
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->s(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ya;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 428
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->af()V

    :cond_0
    return-void
.end method
