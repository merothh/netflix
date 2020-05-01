.class Lo/wr;
.super Lo/wo;
.source ""


# instance fields
.field protected cachehit:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cachehit"
    .end annotation
.end field

.field protected error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field protected updated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "manifestupdated"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/wr;
    .locals 1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-virtual {p0, v0}, Lo/wr;->e(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 58
    iput-object p1, p0, Lo/wr;->error:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a(Z)Lo/wr;
    .locals 0

    .line 46
    iput-boolean p1, p0, Lo/wr;->cachehit:Z

    return-object p0
.end method

.method public b(Z)Lo/wr;
    .locals 0

    .line 51
    iput-boolean p1, p0, Lo/wr;->updated:Z

    return-object p0
.end method

.method public d(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wr;
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lo/wo;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method

.method public e(J)Lo/wr;
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lo/wo;->b(J)V

    return-object p0
.end method
