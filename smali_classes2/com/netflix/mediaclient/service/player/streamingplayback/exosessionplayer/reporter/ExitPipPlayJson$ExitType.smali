.class public final enum Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTINUEPLAY:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "continueplay"
    .end annotation
.end field

.field public static final enum ENDSESSION:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endsession"
    .end annotation
.end field

.field private static final synthetic b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    const/4 v1, 0x0

    const-string v2, "CONTINUEPLAY"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->CONTINUEPLAY:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    const/4 v2, 0x1

    const-string v3, "ENDSESSION"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->ENDSESSION:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    .line 43
    sget-object v3, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->CONTINUEPLAY:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->ENDSESSION:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;
    .locals 1

    .line 43
    const-class v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;
    .locals 1

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->b:[Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/ExitPipPlayJson$ExitType;

    return-object v0
.end method