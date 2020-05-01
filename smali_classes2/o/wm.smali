.class Lo/wm;
.super Lo/wo;
.source ""


# instance fields
.field protected bw:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bw"
    .end annotation
.end field

.field protected lbw:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lbw"
    .end annotation
.end field

.field protected vbitrate:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbitrate"
    .end annotation
.end field

.field protected vbitrateold:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbitrateold"
    .end annotation
.end field

.field protected vdlId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vdlid"
    .end annotation
.end field

.field protected vdlidold:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vdlidold"
    .end annotation
.end field

.field protected vmaf:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vmaf"
    .end annotation
.end field

.field protected vmafold:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vmafold"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "chgstrm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 75
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)Lo/wm;
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2}, Lo/wm;->b(J)V

    return-object p0
.end method

.method public a(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wm;
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lo/wm;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)Lo/wm;
    .locals 1

    .line 79
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lo/wm;->vdlidold:Ljava/lang/String;

    .line 80
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wm;->vbitrateold:Ljava/lang/Integer;

    .line 81
    invoke-static {p1}, Lo/tp;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/wm;->vmafold:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)Lo/wm;
    .locals 1

    .line 86
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lo/wm;->vdlId:Ljava/lang/String;

    .line 87
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wm;->vbitrate:Ljava/lang/Integer;

    .line 88
    invoke-static {p1}, Lo/tp;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/wm;->vmaf:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(I)Lo/wm;
    .locals 1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wm;->bw:Ljava/lang/Integer;

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/wm;->lbw:Ljava/lang/Integer;

    return-object p0
.end method
