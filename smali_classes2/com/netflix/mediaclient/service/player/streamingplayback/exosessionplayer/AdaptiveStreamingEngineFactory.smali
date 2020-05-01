.class public final Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;
    }
.end annotation


# static fields
.field private static b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->a:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory;->b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lo/tJ;Lo/tG;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tL;Lo/tK;Ljava/lang/String;Lo/vX;)Lo/tB;
    .locals 2

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$4;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory;->b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory$AseOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, "StreamingPlayback_AdaptiveStreamingEngineFactory"

    const-string p1, "Error in choosing ASE option"

    .line 56
    invoke-static {p0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/AdaptiveStreamingEngineFactory;->d(Lo/tJ;Lo/tG;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tL;Lo/tK;Ljava/lang/String;Lo/vX;)Lo/tB;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static d(Lo/tJ;Lo/tG;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;Lo/tL;Lo/tK;Ljava/lang/String;Lo/vX;)Lo/tB;
    .locals 4

    const/4 v0, 0x7

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 p6, 0x5

    aput-object p5, v1, p6

    const/4 p5, 0x4

    aput-object p4, v1, p5

    const/4 p4, 0x3

    aput-object p3, v1, p4

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const/16 p0, 0x4330

    const/16 v3, 0xa0

    .line 79
    invoke-static {p0, v3, p5}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lo/tJ;

    aput-object v3, v0, p1

    const-class p1, Lo/tG;

    aput-object p1, v0, p2

    const-class p1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;

    aput-object p1, v0, p3

    const-class p1, Lo/tL;

    aput-object p1, v0, p4

    const-class p1, Lo/tK;

    aput-object p1, v0, p5

    const-class p1, Ljava/lang/String;

    aput-object p1, v0, p6

    const-class p1, Lo/vX;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/tB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0
.end method
