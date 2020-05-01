.class public final Lo/oI;
.super Lo/oN;
.source ""


# static fields
.field static final e:Z


# instance fields
.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    sput-boolean v0, Lo/oI;->e:Z

    return-void
.end method

.method public constructor <init>(Lo/or;[BZLo/oP;Lo/oN$StateListAnimator;Lo/pM;Lo/sx;Landroid/os/Handler;)V
    .locals 9

    move-object v8, p0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    .line 44
    invoke-direct/range {v0 .. v7}, Lo/oN;-><init>(Lo/or;[BLo/sx;Lo/oP;Lo/oN$StateListAnimator;Lo/pM;Landroid/os/Handler;)V

    move-object v0, p2

    .line 46
    iput-object v0, v8, Lo/oI;->k:[B

    move v0, p3

    .line 47
    iput-boolean v0, v8, Lo/oI;->l:Z

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 2

    const-string v0, "nf_offlineLicenseMgr"

    .line 93
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 96
    :try_start_0
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 97
    iget-object p3, p0, Lo/oI;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v1, p0, Lo/oI;->k:[B

    invoke-static {p1}, Lo/aik;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->provideKeyResponse([B[B)[B

    const-string p1, "handleDeactivateResponse license released successfully."

    .line 98
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_0
    sget-object p1, Lo/LegacyErrorStrings;->am:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string p2, "handleDeactivateResponse licenseRelease is empty"

    .line 101
    invoke-static {v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    sget-object p2, Lo/LegacyErrorStrings;->w:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeactivateResponse provideKeyResponse Exception"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :catch_1
    sget-object p2, Lo/LegacyErrorStrings;->x:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string p1, "handleDeactivateResponse provideKeyResponse DeniedByServerException"

    .line 108
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :catch_2
    sget-object p2, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string p1, "handleDeactivateResponse provideKeyResponse NotProvisionedException"

    .line 105
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1, p1, p2}, Lo/oI;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/oI;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lo/oI;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivate playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/oI;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_offlineLicenseMgr"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lo/oI;->k:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/oI;->k:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lo/oI;->k:[B

    const-string v3, "handleLicenseRequest keySetId"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[B)V

    const-string v0, ""

    .line 61
    :try_start_0
    sget-boolean v1, Lo/oI;->e:Z

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    iget-object v3, p0, Lo/oI;->b:Lo/pM;

    invoke-virtual {v3}, Lo/pM;->a()Lo/ds;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v1

    iput-object v1, p0, Lo/oI;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    .line 63
    iget-object v2, p0, Lo/oI;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v3, p0, Lo/oI;->k:[B

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x3

    iget-object v7, p0, Lo/oI;->h:Ljava/util/HashMap;

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    :cond_1
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    .line 74
    iget-object v2, p0, Lo/oI;->b:Lo/pM;

    iget-object v3, p0, Lo/oI;->m:Lo/sx;

    iget-boolean v4, p0, Lo/oI;->l:Z

    new-instance v5, Lo/oI$2;

    invoke-direct {v5, p0, v1}, Lo/oI$2;-><init>(Lo/oI;Z)V

    invoke-virtual {v2, v3, v0, v4, v5}, Lo/pM;->e(Lo/sx;Ljava/lang/String;ZLo/pS;)V

    return-void

    .line 54
    :cond_2
    :goto_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v2, v2, v0}, Lo/oI;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
