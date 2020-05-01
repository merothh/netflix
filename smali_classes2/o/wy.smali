.class Lo/wy;
.super Lo/wo;
.source ""


# instance fields
.field protected fallbackType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fallbacktype"
    .end annotation
.end field

.field protected inAppWInstallationState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inststate"
    .end annotation
.end field

.field protected movieId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mid"
    .end annotation
.end field

.field protected playbackRestarted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playbackrestarted"
    .end annotation
.end field

.field protected recoveryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rid"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "fallback"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lo/wy;
    .locals 0

    .line 38
    iput-object p1, p0, Lo/wy;->movieId:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/wy;
    .locals 0

    .line 43
    iput-object p1, p0, Lo/wy;->fallbackType:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;)Lo/wy;
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/wy;->inAppWInstallationState:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lo/wy;
    .locals 0

    .line 58
    iput-object p1, p0, Lo/wy;->recoveryId:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lo/wy;
    .locals 0

    .line 53
    iput-boolean p1, p0, Lo/wy;->playbackRestarted:Z

    return-object p0
.end method
