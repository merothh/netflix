.class public final Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/XX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1532
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

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

    .line 1579
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->A()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1580
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->Y()V

    .line 1581
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ai()V

    return-void
.end method

.method public b(Lo/Ya;)V
    .locals 8

    .line 1534
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    if-eqz p1, :cond_7

    .line 1536
    invoke-interface {p1}, Lo/Ya;->a()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V

    .line 1538
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lo/Ya;)V

    .line 1539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->B()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    invoke-interface {p1, v1}, Lo/Ya;->b(Z)V

    .line 1546
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 1549
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;I)V

    .line 1550
    invoke-interface {p1}, Lo/Ya;->b()Landroid/view/View;

    move-result-object p1

    const-string v0, "wrapper.view"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1555
    sget-object p1, Lo/dI;->e:Lo/dI$StateListAnimator;

    invoke-virtual {p1}, Lo/dI$StateListAnimator;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->O()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->C()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    .line 1556
    invoke-static/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1558
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;)V

    .line 1560
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1561
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1563
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1565
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->a(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;I)V

    .line 1566
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScreenBrightnessIfNeeded()V

    .line 1567
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->n(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1568
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object p1

    const-string v0, "Required value was null."

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->q()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->ordinal()I

    move-result v2

    invoke-interface {p1, v2}, Lo/zJ;->a(I)V

    .line 1569
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setPlayerBackgroundedStatus(Z)V

    .line 1570
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->v()Lo/zJ;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 v0, -0x1f4

    invoke-interface {p1, v0}, Lo/zJ;->c(I)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1568
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1574
    :cond_7
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    :cond_8
    :goto_0
    return-void
.end method

.method public c(Lo/Ya;)V
    .locals 2

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->b(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Z)V

    .line 1586
    invoke-interface {p1, v1}, Lo/Ya;->b(Z)V

    .line 1587
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 1588
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->u()Lo/Ya;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->q(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)Lo/Ya;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$ActionBar;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->af()V

    :cond_0
    return-void
.end method
