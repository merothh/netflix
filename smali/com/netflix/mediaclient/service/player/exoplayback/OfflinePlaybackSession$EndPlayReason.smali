.class final enum Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;
.super Ljava/lang/Enum;
.source "OfflinePlaybackSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

.field public static final enum ended:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

.field public static final enum error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

.field public static final enum stopped:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 644
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    const-string/jumbo v1, "ended"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->ended:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    .line 645
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    const-string/jumbo v1, "stopped"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->stopped:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    .line 646
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    .line 643
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->ended:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->stopped:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->error:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;
    .locals 1

    .prologue
    .line 643
    const-class v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;
    .locals 1

    .prologue
    .line 643
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackSession$EndPlayReason;

    return-object v0
.end method
