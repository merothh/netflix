.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

.field private static final synthetic h:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    invoke-direct {v0, v2, v1, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    const/4 v2, 0x1

    const-string v3, "PREFETCH"

    const-string v4, "PRE_FETCH"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    const/4 v3, 0x2

    const-string v4, "OFFLINE"

    invoke-direct {v0, v4, v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    const-string v6, ""

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    .line 3
    sget-object v5, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->h:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

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
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->h:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestFlavor;->e:Ljava/lang/String;

    return-object v0
.end method
