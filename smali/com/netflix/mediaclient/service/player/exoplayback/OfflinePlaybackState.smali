.class public final enum Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;
.super Ljava/lang/Enum;
.source "OfflinePlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

.field public static final enum MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

.field public static final enum MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

.field public static final enum PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

.field public static final enum PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;


# instance fields
.field mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    const-string/jumbo v1, "MANIFEST_FETCH"

    const-string/jumbo v2, "100.1"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    const-string/jumbo v1, "MANIFEST_PROCESSING"

    const-string/jumbo v2, "101.1"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    const-string/jumbo v1, "PLAYBACK_INIT"

    const-string/jumbo v2, "102.1"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    const-string/jumbo v1, "PLAYBACK_PLAY"

    const-string/jumbo v2, "102.2"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_FETCH:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->MANIFEST_PROCESSING:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_INIT:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->PLAYBACK_PLAY:Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->mState:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/OfflinePlaybackState;->mState:Ljava/lang/String;

    return-object v0
.end method
