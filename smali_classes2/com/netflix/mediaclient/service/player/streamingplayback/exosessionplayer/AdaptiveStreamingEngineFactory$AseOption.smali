.class final enum Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AseOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

.field private static final synthetic b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

.field public static final enum c:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    const/4 v1, 0x0

    const-string v2, "NETFLIX_EXAMPLE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    const/4 v2, 0x1

    const-string v3, "NETFLIX_OPTIMIZED"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    .line 26
    sget-object v3, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->c:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;
    .locals 1

    .line 26
    const-class v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;
    .locals 1

    .line 26
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    return-object v0
.end method
