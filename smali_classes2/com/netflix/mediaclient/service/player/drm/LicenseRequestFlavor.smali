.class public final enum Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    const-string v3, "standard"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->e:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    const/4 v2, 0x1

    const-string v3, "LIMITED"

    const-string v4, "limited"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    const/4 v3, 0x2

    const-string v4, "OFFLINE"

    const-string v5, "offline"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    const-string v6, ""

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    .line 3
    sget-object v5, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->e:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->j:[Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->j:[Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    return-object v0
.end method
