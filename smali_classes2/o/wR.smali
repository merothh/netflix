.class Lo/wR;
.super Lo/wo;
.source ""


# instance fields
.field protected moffold:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moffold"
    .end annotation
.end field

.field protected moffoldms:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moffoldms"
    .end annotation
.end field

.field protected navt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "navt"
    .end annotation
.end field

.field protected segmentOffsetOld:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "segmentoffsetold"
    .end annotation
.end field

.field protected segmentOld:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "segmentold"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "repos"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 39
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)Lo/wR;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lo/wR;->b(J)V

    return-object p0
.end method

.method public a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wR;
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lo/wo;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method

.method public b(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wR;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 48
    div-long v0, p1, v0

    iput-wide v0, p0, Lo/wR;->moffold:J

    .line 49
    iput-wide p1, p0, Lo/wR;->moffoldms:J

    if-eqz p3, :cond_0

    .line 51
    iget-object p1, p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    iput-object p1, p0, Lo/wR;->segmentOld:Ljava/lang/String;

    .line 52
    iget-wide p1, p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wR;->segmentOffsetOld:Ljava/lang/Long;

    :cond_0
    return-object p0
.end method

.method public d(J)Lo/wR;
    .locals 0

    .line 58
    iput-wide p1, p0, Lo/wR;->navt:J

    return-object p0
.end method

.method public e(J)Lo/wR;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 68
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wR;->totalTimeInSec:Ljava/lang/Long;

    return-object p0
.end method
