.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field private static final synthetic g:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field public static final enum h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

.field public static final enum i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v1, 0x0

    const-string v2, "START"

    const-string v3, "start"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v2, 0x1

    const-string v3, "STOP"

    const-string v4, "stop"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v3, 0x2

    const-string v4, "SPLICE"

    const-string v5, "splice"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v4, 0x3

    const-string v5, "PAUSE"

    const-string v6, "pause"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v5, 0x4

    const-string v6, "RESUME"

    const-string v7, "resume"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v6, 0x5

    const-string v7, "KEEP_ALIVE"

    const-string v8, "keepAlive"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN"

    const-string v9, ""

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    .line 3
    sget-object v8, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->d:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->a:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->b:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->i:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->h:Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->g:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;
    .locals 1

    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;
    .locals 1

    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->g:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/PdsEventType;->j:Ljava/lang/String;

    return-object v0
.end method
