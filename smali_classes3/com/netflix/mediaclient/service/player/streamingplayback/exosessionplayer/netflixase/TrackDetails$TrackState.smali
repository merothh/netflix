.class public final enum Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

.field private static final synthetic b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

.field public static final enum d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

.field public static final enum e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    const/4 v1, 0x0

    const-string v2, "HEADERS_NOT_REQUESTED"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    const/4 v2, 0x1

    const-string v3, "HEADERS_REQUESTED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    const/4 v3, 0x2

    const-string v4, "HEADERS_ANALYZED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    .line 11
    sget-object v4, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->e:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;
    .locals 1

    .line 11
    const-class v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;
    .locals 1

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/netflixase/TrackDetails$TrackState;

    return-object v0
.end method
