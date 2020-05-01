.class public final enum Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    const/4 v2, 0x1

    const-string v3, "SEEK"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    const/4 v3, 0x2

    const-string v4, "SKIP"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    .line 8
    sget-object v4, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;
    .locals 1

    .line 8
    const-class v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;
    .locals 1

    .line 8
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/StopReason;

    return-object v0
.end method
