.class public final enum Lcom/netflix/mediaclient/service/player/drm/LicenseType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/drm/LicenseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

.field private static final synthetic i:[Lcom/netflix/mediaclient/service/player/drm/LicenseType;


# instance fields
.field private e:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "LICENSE_TYPE_LDL"

    const-string v4, "LDL"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    const/4 v3, 0x2

    const-string v4, "LICENSE_TYPE_STANDARD"

    const-string v5, "STANDARD"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    const/4 v4, 0x3

    const-string v5, "LICENSE_TYPE_OFFLINE"

    const-string v6, "OFFLINE"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    const/4 v5, 0x4

    const-string v6, "LICENSE_TYPE_MANIFEST_LDL"

    const-string v7, "MANIFEST_LDL"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/netflix/mediaclient/service/player/drm/LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    new-array v0, v5, [Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    .line 3
    sget-object v5, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->b:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->i:[Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->e:I

    .line 13
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/drm/LicenseType;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/drm/LicenseType;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseType;->i:[Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/drm/LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/drm/LicenseType;

    return-object v0
.end method
