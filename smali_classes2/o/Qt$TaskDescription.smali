.class public final Lo/Qt$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DownloadedEpisodeModel"

    .line 45
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lo/Qt$TaskDescription;-><init>()V

    return-void
.end method

.method private final c(Lo/Tf;Lo/BC;)Ljava/lang/Integer;
    .locals 3

    .line 90
    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    sget-object v0, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    .line 93
    iget p2, p2, Lo/Aa;->mBookmarkInSecond:I

    .line 94
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    const-string v2, "video.playable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->S()I

    move-result v1

    .line 95
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->ao()Ljava/lang/Integer;

    move-result-object p1

    .line 92
    invoke-virtual {v0, p2, v1, p1}, Lcom/netflix/model/leafs/Bookmark$Companion;->calculateProgress(IILjava/lang/Integer;)I

    move-result p1

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final c()F
    .locals 1

    .line 46
    invoke-static {}, Lo/Qt;->u()F

    move-result v0

    return v0
.end method

.method public final d(Lo/Tf;Lo/Tf;Lo/BC;Lo/LongStream;Lo/Stream;Lo/LongStream;IZ)Lo/Qt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Tf;",
            "Lo/Tf;",
            "Lo/BC;",
            "Lo/LongStream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;",
            "Lo/Stream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;",
            "Lo/LongStream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;IZ)",
            "Lo/Qt;"
        }
    .end annotation

    const-string v0, "parentVideo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProfile"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "longClickListener"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showAllListener"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lo/Qv;

    invoke-direct {v0}, Lo/Qv;-><init>()V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/Tf;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Qv;->b(Ljava/lang/CharSequence;)Lo/Qv;

    .line 60
    invoke-virtual {v0, p2}, Lo/Qv;->c(Lo/Tf;)Lo/Qv;

    .line 61
    invoke-virtual {p2}, Lo/Tf;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Qv;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/Qv;

    .line 62
    sget-object v1, Lo/Qt;->f:Lo/Qt$TaskDescription;

    invoke-direct {v1, p2, p3}, Lo/Qt$TaskDescription;->c(Lo/Tf;Lo/BC;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo/Qv;->b(Ljava/lang/Integer;)Lo/Qv;

    .line 63
    invoke-virtual {p2}, Lo/Tf;->z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Qv;->e(J)Lo/Qv;

    .line 64
    invoke-virtual {p2}, Lo/Tf;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo/Qv;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Lo/Qv;

    .line 65
    invoke-virtual {p2}, Lo/Tf;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo/Qv;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Lo/Qv;

    .line 66
    invoke-virtual {p2}, Lo/Tf;->p()I

    move-result p3

    invoke-virtual {v0, p3}, Lo/Qv;->c(I)Lo/Qv;

    .line 67
    invoke-virtual {v0, p8}, Lo/Qv;->e(Z)Lo/Qv;

    .line 70
    move-object p3, p2

    check-cast p3, Lo/Bi;

    .line 71
    invoke-virtual {p1}, Lo/Tf;->bb()Lo/AK;

    move-result-object p8

    check-cast p8, Lo/As;

    .line 69
    invoke-static {p3, p8}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Lo/Bi;Lo/As;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p8

    .line 68
    invoke-virtual {v0, p8}, Lo/Qv;->c(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;)Lo/Qv;

    .line 74
    invoke-virtual {p2}, Lo/Tf;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Qv;->d(J)Lo/Qv;

    .line 76
    invoke-virtual {v0}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p2

    .line 79
    invoke-static {p3}, Lo/RL;->b(Lo/Bi;)I

    move-result p8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    .line 76
    invoke-virtual {p2, p3, p1, p8}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lo/Bi;Lo/Tf;Ljava/lang/Integer;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Lo/Qv;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/Qv;

    .line 82
    new-instance p1, Lo/ExemptionMechanismException;

    invoke-direct {p1, p4}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lo/Qv;->b(Landroid/view/View$OnClickListener;)Lo/Qv;

    .line 83
    new-instance p1, Lo/ExemptionMechanismException;

    invoke-direct {p1, p5}, Lo/ExemptionMechanismException;-><init>(Lo/Stream;)V

    check-cast p1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1}, Lo/Qv;->e(Landroid/view/View$OnLongClickListener;)Lo/Qv;

    .line 84
    invoke-virtual {v0, p7}, Lo/Qv;->b(I)Lo/Qv;

    .line 85
    new-instance p1, Lo/ExemptionMechanismException;

    invoke-direct {p1, p6}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lo/Qv;->a(Landroid/view/View$OnClickListener;)Lo/Qv;

    .line 58
    check-cast v0, Lo/Qt;

    return-object v0
.end method
