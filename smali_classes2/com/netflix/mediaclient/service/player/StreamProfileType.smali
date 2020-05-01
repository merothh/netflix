.class public final enum Lcom/netflix/mediaclient/service/player/StreamProfileType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/StreamProfileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/player/StreamProfileType;


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/StreamProfileType;

    new-instance v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v2, "CE3"

    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/mediaclient/service/player/StreamProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->d:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v2, "AL0"

    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/mediaclient/service/player/StreamProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->a:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v2, "AL1"

    const/4 v3, 0x2

    .line 15
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/mediaclient/service/player/StreamProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->c:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v2, "AV1"

    const/4 v3, 0x3

    .line 16
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/mediaclient/service/player/StreamProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x4

    .line 17
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/mediaclient/service/player/StreamProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->j:[Lcom/netflix/mediaclient/service/player/StreamProfileType;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->j:[Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/StreamProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/StreamProfileType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->i:Ljava/lang/String;

    return-object v0
.end method
