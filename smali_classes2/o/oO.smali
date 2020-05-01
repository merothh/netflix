.class Lo/oO;
.super Lo/oN;
.source ""


# instance fields
.field e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

.field n:Lo/sx;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/or;[BLo/sx;Lo/sx;Lo/oP;Lo/oN$StateListAnimator;Lo/pM;Landroid/os/Handler;[B)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 40
    invoke-direct/range {v0 .. v7}, Lo/oN;-><init>(Lo/or;[BLo/sx;Lo/oP;Lo/oN$StateListAnimator;Lo/pM;Landroid/os/Handler;)V

    move-object/from16 v0, p10

    .line 42
    iput-object v0, v8, Lo/oO;->k:[B

    move-object v0, p1

    .line 43
    iput-object v0, v8, Lo/oO;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    move-object v0, p4

    .line 44
    iput-object v0, v8, Lo/oO;->n:Lo/sx;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/oO;->k:[B

    invoke-virtual {p0, v0}, Lo/oO;->e([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lo/oO;->b()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 9

    const-string v0, "nf_offlineLicenseMgr"

    .line 58
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefreshOfflineLicenseRequest sendLicenseRequest playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/oO;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lo/oO;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v3, p0, Lo/oO;->g:[B

    iget-object v4, p0, Lo/oO;->f:[B

    const-string v5, ""

    const/4 v6, 0x2

    iget-object v7, p0, Lo/oO;->h:Ljava/util/HashMap;

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 64
    iget-object v2, p0, Lo/oO;->b:Lo/pM;

    invoke-virtual {p0}, Lo/oO;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/oO;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    iget-object v5, p0, Lo/oO;->n:Lo/sx;

    iget-object v6, p0, Lo/oO;->m:Lo/sx;

    new-instance v8, Lo/oO$4;

    invoke-direct {v8, p0}, Lo/oO$4;-><init>(Lo/oO;)V

    invoke-virtual/range {v2 .. v8}, Lo/pM;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sx;Lo/sx;Ljava/lang/String;Lo/pS;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 83
    sget-object v2, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RefreshOfflineLicenseRequest Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :catch_1
    sget-object v2, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "RefreshOfflineLicenseRequest getKeyRequest NotProvisionedException"

    .line 81
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, v0, v2}, Lo/oO;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
