.class public abstract Lo/rl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rp;


# instance fields
.field protected a:[B

.field protected b:Landroid/os/Handler;

.field protected c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field protected d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

.field protected e:Ljava/lang/Long;

.field protected f:Lo/rf;

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/Exception;

.field protected j:I

.field protected l:Z

.field protected n:Lo/rn$StateListAnimator;

.field protected o:J


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lo/rl;->g:I

    .line 43
    iput-object p1, p0, Lo/rl;->b:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lo/rl;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    .line 45
    iput-object p3, p0, Lo/rl;->e:Ljava/lang/Long;

    .line 46
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, -0x1

    and-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lo/rl;->j:I

    .line 47
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/16 p3, 0x20

    shr-long/2addr p1, p3

    and-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lo/rl;->h:I

    .line 48
    invoke-interface {p4}, Lo/rf;->g()Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    move-result-object p1

    iput-object p1, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 49
    iput-object p4, p0, Lo/rl;->f:Lo/rf;

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lo/rl;->g:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/rl;->o:J

    .line 52
    iput-object p5, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    .line 53
    invoke-direct {p0}, Lo/rl;->u()V

    return-void
.end method

.method public static b(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/NetflixMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rl;
    .locals 7

    .line 382
    instance-of v0, p1, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lo/rs;

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/rs;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V

    return-object v0

    .line 384
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Lo/rm;

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/rm;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm;Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)V

    return-object v0

    .line 387
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "We do NOT support "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Exception;)V
    .locals 3

    .line 223
    iput-object p2, p0, Lo/rl;->i:Ljava/lang/Exception;

    .line 224
    iget-object v0, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v0, v1, p1}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    :cond_0
    const/4 p1, 0x0

    .line 231
    iput p1, p0, Lo/rl;->g:I

    .line 232
    iget-object p2, p0, Lo/rl;->b:Landroid/os/Handler;

    iget v0, p0, Lo/rl;->h:I

    iget v1, p0, Lo/rl;->j:I

    iget-object v2, p0, Lo/rl;->i:Ljava/lang/Exception;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private d(Lo/rn$StateListAnimator;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    return-void
.end method

.method private d(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lo/rl;->l:Z

    return-void
.end method

.method private u()V
    .locals 3

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lo/rl;->j()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    iget v1, p0, Lo/rl;->g:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lo/rl;->b()V

    .line 66
    :cond_0
    throw v0

    .line 61
    :catch_1
    invoke-direct {p0}, Lo/rl;->w()V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 5

    const-string v0, "NfPlayerDrmManager"

    const-string v1, "postProvisionRequest ..."

    .line 160
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lo/rl;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getProvisionRequest()Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lo/rl;->b:Landroid/os/Handler;

    iget v2, p0, Lo/rl;->h:I

    iget v3, p0, Lo/rl;->j:I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/rl;->f:Lo/rf;

    invoke-interface {v0}, Lo/rf;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lo/rl;->f:Lo/rf;

    invoke-interface {v0}, Lo/rf;->i()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/rl;->b([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 76
    iget v0, p0, Lo/rl;->g:I

    return v0
.end method

.method public b(Lo/rp;)I
    .locals 8

    .line 357
    invoke-virtual {p0}, Lo/rl;->l()J

    move-result-wide v0

    .line 358
    invoke-interface {p1}, Lo/rp;->l()J

    move-result-wide v2

    .line 359
    iget-boolean v4, p0, Lo/rl;->l:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lo/rp;->d()Z

    move-result v4

    if-nez v4, :cond_0

    return v5

    .line 361
    :cond_0
    iget-boolean v4, p0, Lo/rl;->l:Z

    const/4 v6, -0x1

    if-nez v4, :cond_1

    invoke-interface {p1}, Lo/rp;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    return v6

    .line 363
    :cond_1
    invoke-virtual {p0}, Lo/rl;->n()I

    move-result v4

    invoke-interface {p1}, Lo/rp;->n()I

    move-result v7

    if-le v4, v7, :cond_2

    return v6

    .line 365
    :cond_2
    invoke-virtual {p0}, Lo/rl;->n()I

    move-result v4

    invoke-interface {p1}, Lo/rp;->n()I

    move-result p1

    if-ge v4, p1, :cond_3

    return v5

    :cond_3
    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    return v6

    :cond_4
    if-gez p1, :cond_5

    return v5

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lo/rl;->l:Z

    .line 137
    iget v0, p0, Lo/rl;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/rl;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v1, p0, Lo/rl;->a:[B

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    const/4 v0, 0x1

    .line 149
    iput v0, p0, Lo/rl;->g:I

    return-void
.end method

.method public b(Lo/rn$StateListAnimator;)V
    .locals 2

    const-string v0, "NfPlayerDrmManager"

    const-string v1, "set listener and use LDL."

    .line 85
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0, p1}, Lo/rl;->d(Lo/rn$StateListAnimator;)V

    .line 87
    invoke-direct {p0}, Lo/rl;->x()V

    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, p1}, Lo/rl;->d(Z)V

    return-void
.end method

.method public b([B)V
    .locals 4

    const-string v0, "NfPlayerDrmManager"

    const-string v1, "provideKeyResponse start."

    .line 263
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz v1, :cond_0

    .line 265
    iget-object v2, p0, Lo/rl;->e:Ljava/lang/Long;

    const-string v3, "provideLicenseStart"

    invoke-interface {v1, v2, v3}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    .line 268
    :cond_0
    :try_start_0
    iget-object v1, p0, Lo/rl;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v2, p0, Lo/rl;->a:[B

    invoke-interface {v1, v2, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->provideKeyResponse([B[B)[B

    const/4 p1, 0x4

    .line 269
    iput p1, p0, Lo/rl;->g:I

    const-string p1, "provideKeyResponse succeeds."

    .line 270
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz p1, :cond_1

    .line 272
    iget-object p1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    iget-object v0, p0, Lo/rl;->e:Ljava/lang/Long;

    const-string v1, "provideLicenseEnd"

    invoke-interface {p1, v0, v1}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    iget-object v0, p0, Lo/rl;->e:Ljava/lang/Long;

    iget-object v1, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {p1, v0, v1}, Lo/rn$StateListAnimator;->b(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->az:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, p1}, Lo/rl;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lo/rf;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/rl;->f:Lo/rf;

    return-object v0
.end method

.method public c(Lo/rf;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lo/rl;->f:Lo/rf;

    if-eq p1, v0, :cond_1

    const-string v0, "NfPlayerDrmManager"

    const-string v1, "updateLicenseContex"

    .line 117
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lo/rf;->l()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p1}, Lo/rf;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/rl;->e:Ljava/lang/Long;

    .line 123
    iget-object v0, p0, Lo/rl;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lo/rl;->j:I

    .line 124
    iget-object v0, p0, Lo/rl;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    and-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lo/rl;->h:I

    .line 125
    iput-object p1, p0, Lo/rl;->f:Lo/rf;

    .line 126
    iget-object v0, p0, Lo/rl;->f:Lo/rf;

    invoke-interface {p1}, Lo/rf;->l()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;->bytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/rf;->d([B)V

    .line 128
    :cond_0
    iget-object v0, p0, Lo/rl;->f:Lo/rf;

    invoke-interface {p1}, Lo/rf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/rf;->d(Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lo/rf;->g()Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    move-result-object p1

    iput-object p1, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 130
    iget-object p1, p0, Lo/rl;->f:Lo/rf;

    iget-object v0, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {p1, v0}, Lo/rf;->e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    :cond_1
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lo/rp;

    invoke-virtual {p0, p1}, Lo/rl;->b(Lo/rp;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lo/rl;->l:Z

    return v0
.end method

.method public e()Ljava/lang/Exception;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/rl;->i:Ljava/lang/Exception;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 2

    const-string v0, "NfPlayerDrmManager"

    if-eqz p2, :cond_0

    .line 291
    :try_start_0
    iget-object p2, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 292
    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "LicenseRequestFailed, retry with standard license."

    .line 293
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lo/rl;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p2, "LicenseRequestFailed NotProvisionedException."

    .line 298
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p2, 0x0

    .line 300
    iput p2, p0, Lo/rl;->g:I

    .line 301
    iget-object p2, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz p2, :cond_1

    .line 302
    iget-object v0, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {p2, p1, v0}, Lo/rn$StateListAnimator;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 10

    .line 168
    iget-object v0, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lo/rl;->e:Ljava/lang/Long;

    const-string v2, "generateChallengeStart"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    const-string v0, "NfPlayerDrmManager"

    const-string v1, "postKeyRequest start."

    .line 171
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 175
    iget-object v2, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v3, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    const/4 v8, 0x2

    goto :goto_1

    .line 178
    :cond_1
    iget v2, p0, Lo/rl;->g:I

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v5, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 180
    iget-object v2, p0, Lo/rl;->f:Lo/rf;

    sget-object v4, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v2, v4}, Lo/rf;->e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    const-string v2, "request LDL."

    .line 181
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_2
    iget v2, p0, Lo/rl;->g:I

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lo/rl;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    sget-object v4, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, -0x1

    const-string v2, "request manifest LDL"

    .line 184
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_3
    iget-object v2, p0, Lo/rl;->f:Lo/rf;

    sget-object v4, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-interface {v2, v4}, Lo/rf;->e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    const-string v2, "request STANDARD."

    .line 187
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v8, 0x1

    .line 191
    :goto_1
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 192
    iget-object v4, p0, Lo/rl;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v5, p0, Lo/rl;->a:[B

    iget-object v1, p0, Lo/rl;->f:Lo/rf;

    invoke-interface {v1}, Lo/rf;->h()[B

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    invoke-interface/range {v4 .. v9}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lo/rl;->f:Lo/rf;

    invoke-interface {v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lo/rf;->b([B)V

    if-lez v3, :cond_4

    .line 196
    iget-object v1, p0, Lo/rl;->b:Landroid/os/Handler;

    iget v2, p0, Lo/rl;->h:I

    iget v4, p0, Lo/rl;->j:I

    iget-object v5, p0, Lo/rl;->f:Lo/rf;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 198
    :cond_4
    iget-object v1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz v1, :cond_5

    .line 199
    iget-object v1, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    iget-object v2, p0, Lo/rl;->e:Ljava/lang/Long;

    const-string v3, "generateChallengeEnd"

    invoke-interface {v1, v2, v3}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_5
    const-string v1, "postKeyRequest succeeds."

    .line 201
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "keyRequest has NotProvisionedException."

    .line 204
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    throw v1
.end method

.method public g()V
    .locals 3

    .line 308
    iget-object v0, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lo/rl;->e:Ljava/lang/Long;

    const-string v2, "acquireLicenseStart"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()[B
    .locals 1

    .line 237
    iget-object v0, p0, Lo/rl;->a:[B

    return-object v0
.end method

.method public i()V
    .locals 3

    .line 315
    iget-object v0, p0, Lo/rl;->n:Lo/rn$StateListAnimator;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lo/rl;->e:Ljava/lang/Long;

    const-string v2, "acquireLicenseEnd"

    invoke-interface {v0, v1, v2}, Lo/rn$StateListAnimator;->e(Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract j()V
.end method

.method public k()Z
    .locals 2

    .line 332
    iget v0, p0, Lo/rl;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public l()J
    .locals 4

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/rl;->o:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public m()Z
    .locals 1

    .line 327
    iget v0, p0, Lo/rl;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 2

    .line 322
    iget v0, p0, Lo/rl;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public p()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 1

    .line 411
    iget-object v0, p0, Lo/rl;->d:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    return-object v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 4

    const-string v0, "NfPlayerDrmManager"

    const-string v1, "Re-init after provisioning"

    .line 393
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v1, p0, Lo/rl;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "Session is still opening, move it to opened."

    .line 397
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :try_start_0
    invoke-direct {p0}, Lo/rl;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 401
    sget-object v2, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v3, "Failed to re-initialize NfDrmSession, playback fails"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/cl/ExtLogger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to re initialize, leave playback agent to report an error!"

    .line 402
    invoke-static {v0, v1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string v1, "Session was already opened!"

    .line 405
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public t()Ljava/lang/Long;
    .locals 1

    .line 347
    iget-object v0, p0, Lo/rl;->e:Ljava/lang/Long;

    return-object v0
.end method
