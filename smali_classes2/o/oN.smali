.class public Lo/oN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/oN$StateListAnimator;
    }
.end annotation


# instance fields
.field final a:Lo/oN$StateListAnimator;

.field protected final b:Lo/pM;

.field final c:Lo/oP;

.field final d:Lo/or;

.field private e:Z

.field protected f:[B

.field protected g:[B

.field protected final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Landroid/os/Handler;

.field protected j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

.field protected k:[B

.field protected m:Lo/sx;


# direct methods
.method public constructor <init>(Lo/or;[BLo/sx;Lo/oP;Lo/oN$StateListAnimator;Lo/pM;Landroid/os/Handler;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/oN;->h:Ljava/util/HashMap;

    .line 63
    iput-object p1, p0, Lo/oN;->d:Lo/or;

    .line 64
    iput-object p4, p0, Lo/oN;->c:Lo/oP;

    .line 65
    iput-object p5, p0, Lo/oN;->a:Lo/oN$StateListAnimator;

    .line 66
    iput-object p2, p0, Lo/oN;->f:[B

    .line 67
    iput-object p3, p0, Lo/oN;->m:Lo/sx;

    .line 68
    iput-object p6, p0, Lo/oN;->b:Lo/pM;

    .line 69
    iput-object p7, p0, Lo/oN;->i:Landroid/os/Handler;

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 246
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->s:Lo/sx;

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    instance-of p2, p0, Lo/oO;

    if-nez p2, :cond_1

    instance-of p2, p0, Lo/oN;

    if-eqz p2, :cond_2

    .line 253
    :cond_1
    iget-object p2, p0, Lo/oN;->b:Lo/pM;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->s:Lo/sx;

    invoke-virtual {p2, p1}, Lo/pM;->e(Lo/sx;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "nf_offlineLicenseMgr"

    const-string v0, "skip sending activate on error %s"

    .line 247
    invoke-static {p2, v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private c()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lo/oN;->e:Z

    return v0
.end method

.method private f()V
    .locals 5

    const-string v0, "nf_offlineLicenseMgr"

    .line 230
    iget-object v1, p0, Lo/oN;->g:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closing mediaDrm session for mPlayableId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v3, p0, Lo/oN;->g:[B

    invoke-interface {v1, v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error closing mediaDrm Session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    iput-object v2, p0, Lo/oN;->g:[B

    .line 239
    :cond_0
    iget-object v0, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V

    .line 241
    iput-object v2, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    :cond_1
    return-void
.end method

.method private i()Z
    .locals 6

    const-string v0, "createDrmSession failed "

    const-string v1, "nf_offlineLicenseMgr"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 206
    :try_start_0
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    iget-object v5, p0, Lo/oN;->b:Lo/pM;

    invoke-virtual {v5}, Lo/pM;->a()Lo/ds;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lo/adU;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v4

    iput-object v4, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    .line 207
    iget-object v4, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v5, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v4

    iput-object v4, p0, Lo/oN;->g:[B
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/ResourceBusyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget-object v0, p0, Lo/oN;->g:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_1
    :goto_0
    sget-object v0, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v3, v3, v0}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    const-string v0, "tryCreateDrmSession DrmSession invalid"

    .line 223
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 217
    :catch_0
    sget-object v0, Lo/LegacyErrorStrings;->w:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v3, v3, v0}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return v2

    :catch_1
    move-exception v4

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lo/LegacyErrorStrings;->z:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v3, v3, v0}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return v2

    :catch_2
    move-exception v4

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v3, v3, v0}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return v2
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lo/oN;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lo/oN;->b()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 8

    const-string v0, "nf_offlineLicenseMgr"

    .line 90
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 92
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLicenseRequest playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v3, p0, Lo/oN;->g:[B

    iget-object v4, p0, Lo/oN;->f:[B

    const-string v5, ""

    const/4 v6, 0x2

    iget-object v7, p0, Lo/oN;->h:Ljava/util/HashMap;

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v1

    .line 96
    invoke-interface {v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lo/aik;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lo/oN;->b:Lo/pM;

    invoke-virtual {p0}, Lo/oN;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/oN;->m:Lo/sx;

    new-instance v5, Lo/oN$4;

    invoke-direct {v5, p0}, Lo/oN$4;-><init>(Lo/oN;)V

    invoke-virtual {v2, v3, v4, v1, v5}, Lo/pM;->a(Ljava/lang/String;Lo/sx;Ljava/lang/String;Lo/pS;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 115
    sget-object v2, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendLicenseRequest Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :catch_1
    sget-object v2, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "deactivate getKeyRequest NotProvisionedException"

    .line 113
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0, v0, v2}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/oN;->d:Lo/or;

    invoke-interface {v0}, Lo/or;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lo/oN;->d:Lo/or;

    invoke-static {v0}, Lo/ph;->d(Lo/or;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 125
    invoke-direct {p0}, Lo/oN;->c()Z

    move-result v0

    const-string v1, "nf_offlineLicenseMgr"

    if-eqz v0, :cond_0

    const-string p1, "handleLicenseResponse request was aborted."

    .line 126
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->e()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->e()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    .line 134
    iget-object v0, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v2, p0, Lo/oN;->g:[B

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->e()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    .line 137
    iget-object v2, p0, Lo/oN;->k:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/oN;->k:[B

    array-length v2, v2

    if-nez v2, :cond_2

    .line 138
    :cond_1
    iput-object v0, p0, Lo/oN;->k:[B

    .line 141
    :cond_2
    iget-object v0, p0, Lo/oN;->k:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/oN;->k:[B

    array-length v0, v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v2, p0, Lo/oN;->g:[B

    invoke-static {v1, v0, v2}, Lo/adU;->a(Ljava/lang/String;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[B)V

    const-string v0, "handleLicenseResponse keySetId"

    .line 146
    iget-object v2, p0, Lo/oN;->k:[B

    invoke-static {v1, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    .line 142
    :cond_4
    :goto_0
    sget-object p2, Lo/LegacyErrorStrings;->A:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "handleLicenseResponse provideKeyResponse returned null"

    .line 143
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :cond_5
    sget-object p2, Lo/LegacyErrorStrings;->C:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "handleLicenseResponse license is empty"

    .line 150
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 159
    sget-object v0, Lo/LegacyErrorStrings;->w:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLicenseResponse provideKeyResponse Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object p2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->c:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-static {v0, p2}, Lo/adU;->a(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;)V

    move-object p2, v0

    goto :goto_1

    .line 156
    :catch_1
    sget-object p2, Lo/LegacyErrorStrings;->x:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "handleLicenseResponse provideKeyResponse DeniedByServerException"

    .line 157
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :catch_2
    sget-object p2, Lo/LegacyErrorStrings;->u:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "handleLicenseResponse provideKeyResponse NotProvisionedException"

    .line 154
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_6
    :goto_1
    iget-object v0, p0, Lo/oN;->k:[B

    invoke-virtual {p0, p1, v0, p2}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doLicenseResponseCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_offlineLicenseMgr"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lo/oN;->f()V

    .line 172
    invoke-direct {p0}, Lo/oN;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;->d([B)V

    .line 175
    invoke-direct {p0, p1, p3}, Lo/oN;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 177
    :cond_0
    iget-object p2, p0, Lo/oN;->c:Lo/oP;

    invoke-virtual {p0}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1, p3}, Lo/oP;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 178
    iget-object p1, p0, Lo/oN;->a:Lo/oN$StateListAnimator;

    invoke-interface {p1, p0, p3}, Lo/oN$StateListAnimator;->c(Lo/oN;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method protected e([B)Z
    .locals 4

    const-string v0, "nf_offlineLicenseMgr"

    const-string v1, "tryCreateDrmSession using keySetId"

    .line 187
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 188
    invoke-direct {p0}, Lo/oN;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    iget-object v1, p0, Lo/oN;->k:[B

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v3, p0, Lo/oN;->g:[B

    invoke-interface {v1, v3, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->restoreKeys([B[B)V

    .line 193
    :cond_0
    iget-object p1, p0, Lo/oN;->j:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v1, p0, Lo/oN;->g:[B

    invoke-static {v0, p1, v1}, Lo/adU;->a(Ljava/lang/String;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorekeys failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object p1, Lo/LegacyErrorStrings;->y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lo/oN;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;[BLcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return v2
.end method
