.class public Lo/rc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rf;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

.field private final e:Ljava/lang/Long;

.field private f:Ljava/lang/String;

.field private g:Lo/sx;

.field private h:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

.field private m:[B

.field private n:[B

.field private o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/rc;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lo/rc;->b:[B

    .line 58
    iput-object p3, p0, Lo/rc;->f:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lo/rc;->j:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lo/rc;->e:Ljava/lang/Long;

    .line 61
    iput-object p6, p0, Lo/rc;->k:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    .line 62
    sget-object p1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {p0, p1}, Lo/rc;->e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/rc;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    return-object v0
.end method

.method public a([B)V
    .locals 0

    .line 184
    iput-object p1, p0, Lo/rc;->n:[B

    return-void
.end method

.method public b()Lo/sx;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/rc;->g:Lo/sx;

    return-object v0
.end method

.method public b([B)V
    .locals 2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/rc;->o:J

    const/4 v0, 0x2

    .line 97
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/rc;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/rc;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/rc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lo/rc;->a:Ljava/lang/String;

    return-void
.end method

.method public d([B)V
    .locals 0

    .line 141
    iput-object p1, p0, Lo/rc;->m:[B

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/rc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "releaseLicense"

    const-string v1, "NfPlayerDrmManager"

    const-string v2, "parsing license response start."

    .line 117
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "links"

    .line 120
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lo/sx;->e(Lorg/json/JSONObject;)Lo/sx;

    move-result-object v0

    iput-object v0, p0, Lo/rc;->g:Lo/sx;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "error parsing license"

    .line 129
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const-string v0, "providerSessionToken"

    .line 132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rc;->i:Ljava/lang/String;

    const-string v0, "licenseResponseBase64"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 134
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lo/rc;->m:[B

    const-string v0, "parsing license response end."

    .line 135
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public e(Lcom/netflix/mediaclient/service/player/drm/LicenseType;)V
    .locals 1

    .line 82
    iput-object p1, p0, Lo/rc;->h:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-ne p1, v0, :cond_0

    .line 84
    sget-object p1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->e:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    iput-object p1, p0, Lo/rc;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-ne p1, v0, :cond_1

    .line 86
    sget-object p1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    iput-object p1, p0, Lo/rc;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    if-ne p1, v0, :cond_2

    .line 88
    sget-object p1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    iput-object p1, p0, Lo/rc;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    goto :goto_0

    .line 90
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    iput-object p1, p0, Lo/rc;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 152
    instance-of v0, p1, Lo/rc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    check-cast p1, Lo/rc;

    .line 154
    invoke-virtual {p0}, Lo/rc;->h()[B

    move-result-object v0

    invoke-virtual {p1}, Lo/rc;->h()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/rc;->f:Ljava/lang/String;

    iget-object p1, p1, Lo/rc;->f:Ljava/lang/String;

    .line 155
    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lo/rc;->f:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lo/rc;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v0, p0, Lo/rc;->j:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public g()Lcom/netflix/mediaclient/service/player/drm/LicenseType;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/rc;->h:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    return-object v0
.end method

.method public h()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lo/rc;->b:[B

    return-object v0
.end method

.method public i()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lo/rc;->m:[B

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lo/rc;->o:J

    return-wide v0
.end method

.method public k()[B
    .locals 1

    .line 189
    iget-object v0, p0, Lo/rc;->n:[B

    return-object v0
.end method

.method public l()Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;
    .locals 1

    .line 174
    iget-object v0, p0, Lo/rc;->k:Lcom/netflix/mediaclient/media/manifest/ManifestLimitedLicense;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lo/rc;->m:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
