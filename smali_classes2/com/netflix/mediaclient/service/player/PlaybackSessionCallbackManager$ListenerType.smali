.class final enum Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ListenerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field public static final enum b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field public static final enum f:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field public static final enum h:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v1, 0x0

    const-string v2, "PREPARED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v3, 0x2

    const-string v4, "STALLED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->c:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 93
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v4, 0x3

    const-string v5, "CLOSED"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v5, 0x4

    const-string v6, "COMPLETION"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->e:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->h:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v7, 0x6

    const-string v8, "DETACHED"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->f:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    .line 89
    sget-object v8, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->c:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->e:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->h:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->f:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->j:[Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;
    .locals 1

    .line 89
    const-class v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;
    .locals 1

    .line 89
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->j:[Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    return-object v0
.end method
