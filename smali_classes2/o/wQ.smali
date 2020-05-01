.class Lo/wQ;
.super Lo/wo;
.source ""


# instance fields
.field protected manifestswitch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manifestswitch"
    .end annotation
.end field

.field protected vbitrate:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbitrate"
    .end annotation
.end field

.field protected vbitrateold:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbitrateold"
    .end annotation
.end field

.field protected vdlid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vdlid"
    .end annotation
.end field

.field protected vdlidold:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vdlidold"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "renderstrmswitch"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wQ;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lo/wQ;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;J)Lo/wQ;
    .locals 0

    .line 58
    iput-object p1, p0, Lo/wQ;->vdlid:Ljava/lang/String;

    .line 59
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wQ;->vbitrate:Ljava/lang/Long;

    return-object p0
.end method

.method public e(J)Lo/wQ;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lo/wQ;->b(J)V

    return-object p0
.end method

.method public e(Ljava/lang/String;J)Lo/wQ;
    .locals 0

    .line 52
    iput-object p1, p0, Lo/wQ;->vdlidold:Ljava/lang/String;

    .line 53
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wQ;->vbitrateold:Ljava/lang/Long;

    return-object p0
.end method
