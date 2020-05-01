.class Lo/xb;
.super Lo/wo;
.source ""


# instance fields
.field protected audioSinkType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioSinkType"
    .end annotation
.end field

.field protected newVolume:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "volume"
    .end annotation
.end field

.field protected oldVolume:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "volumeOld"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "volumechange"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lo/xb;
    .locals 0

    .line 60
    iput p1, p0, Lo/xb;->newVolume:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/xb;
    .locals 0

    .line 65
    iput-object p1, p0, Lo/xb;->audioSinkType:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lo/xb;
    .locals 0

    .line 55
    iput p1, p0, Lo/xb;->oldVolume:I

    return-object p0
.end method

.method public d(J)Lo/xb;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lo/xb;->b(J)V

    return-object p0
.end method

.method public d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/xb;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lo/xb;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method
