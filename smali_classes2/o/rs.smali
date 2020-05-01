.class public Lo/rs;
.super Lo/rl;
.source ""


# instance fields
.field private m:Landroid/media/MediaCrypto;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lo/rl;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V

    const-string p1, "NfPlayerDrmManager"

    const-string p2, "NfPlatformDrmSession..."

    .line 25
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected j()V
    .locals 3

    .line 34
    iget-object v0, p0, Lo/rs;->n:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lo/rs;->n:Lo/rn$StateListAnimator;

    iget-object v1, p0, Lo/rs;->e:Ljava/lang/Long;

    const-string v2, "openDrmSessionStart"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lo/rs;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v0

    iput-object v0, p0, Lo/rs;->a:[B

    const/4 v0, 0x3

    .line 38
    iput v0, p0, Lo/rs;->g:I

    .line 39
    new-instance v0, Landroid/media/MediaCrypto;

    sget-object v1, Lo/adU;->b:Ljava/util/UUID;

    iget-object v2, p0, Lo/rs;->a:[B

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lo/rs;->m:Landroid/media/MediaCrypto;

    .line 40
    iget-object v0, p0, Lo/rs;->n:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lo/rs;->n:Lo/rn$StateListAnimator;

    iget-object v1, p0, Lo/rs;->e:Ljava/lang/Long;

    const-string v2, "openDrmSessionEnd"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    .line 43
    :cond_1
    invoke-virtual {p0}, Lo/rs;->f()V

    return-void
.end method

.method public q()Landroid/media/MediaCrypto;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/rs;->m:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public v()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
