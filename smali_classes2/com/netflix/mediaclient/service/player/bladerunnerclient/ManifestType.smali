.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    const-string v3, "standard"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    const/4 v2, 0x1

    const-string v3, "OFFLINE"

    const-string v4, "offline"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    const-string v5, ""

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    .line 3
    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->d:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->d:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestType;->e:Ljava/lang/String;

    return-object v0
.end method
