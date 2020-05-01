.class public Lo/rm;
.super Lo/rl;
.source ""


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p5}, Lo/rl;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V

    const-string p1, "NfPlayerDrmManager"

    const-string p2, "NfEmbeddedDrmSession..."

    .line 18
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected j()V
    .locals 2

    .line 23
    iget-object v0, p0, Lo/rm;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v0

    iput-object v0, p0, Lo/rm;->a:[B

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lo/rm;->g:I

    .line 25
    invoke-virtual {p0}, Lo/rm;->f()V

    return-void
.end method

.method public synthetic p()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lo/rm;->x()Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    move-result-object v0

    return-object v0
.end method

.method public q()Landroid/media/MediaCrypto;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x()Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/rm;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    check-cast v0, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    return-object v0
.end method
