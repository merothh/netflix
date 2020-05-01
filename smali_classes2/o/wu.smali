.class Lo/wu;
.super Lo/wo;
.source ""


# instance fields
.field protected cause:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cause"
    .end annotation
.end field

.field protected cdnid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnid"
    .end annotation
.end field

.field protected subtitleRebuffer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imagebasedsubtitle"
    .end annotation
.end field

.field protected vdlid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vdlid"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "intrplay"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 45
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wu;
    .locals 0

    .line 49
    invoke-super {p0, p1, p2, p3}, Lo/wo;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method

.method public b(Z)Lo/wu;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/wu;->subtitleRebuffer:Ljava/lang/Boolean;

    const-string p1, "timedtext"

    .line 68
    iput-object p1, p0, Lo/wu;->cause:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lo/wu;->subtitleRebuffer:Ljava/lang/Boolean;

    .line 71
    iput-object p1, p0, Lo/wu;->cause:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public d(J)Lo/wu;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/wu;->b(J)V

    return-object p0
.end method

.method public d(Lo/tH$StateListAnimator;)Lo/wu;
    .locals 0

    if-eqz p1, :cond_0

    .line 60
    iget p1, p1, Lo/tH$StateListAnimator;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/wu;->cdnid:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public e(J)Lo/wu;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 77
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wu;->totalTimeInSec:Ljava/lang/Long;

    return-object p0
.end method
