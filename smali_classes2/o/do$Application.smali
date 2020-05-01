.class Lo/do$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private c:[B

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lo/adU;->b:Ljava/util/UUID;

    invoke-static {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createPlatformMediaDrm(Ljava/util/UUID;)Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne p1, v1, :cond_0

    const-string p1, "ESN"

    const-string v1, "Setting security level to L3"

    .line 153
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v0}, Lo/adU;->a(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)V

    .line 157
    :cond_0
    invoke-static {v0}, Lo/adU;->e(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)[B

    move-result-object p1

    iput-object p1, p0, Lo/do$Application;->c:[B

    .line 158
    invoke-static {v0}, Lo/adU;->b(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/do$Application;->e:Ljava/lang/String;

    .line 159
    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    .line 168
    iget-object v0, p0, Lo/do$Application;->c:[B

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lo/do$Application;->e:Ljava/lang/String;

    return-object v0
.end method
