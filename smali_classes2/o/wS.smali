.class Lo/wS;
.super Lo/wo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/wS$Activity;
    }
.end annotation


# instance fields
.field protected speed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speed"
    .end annotation
.end field

.field protected speedold:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "speedold"
    .end annotation
.end field

.field protected videoPerfCounters:Lo/wS$Activity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videocounter"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "speedchanged"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)Lo/wS;
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Lo/wo;->b(J)V

    return-object p0
.end method

.method public c(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lo/wS;
    .locals 2

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lo/wS$Activity;

    invoke-direct {v0}, Lo/wS$Activity;-><init>()V

    iput-object v0, p0, Lo/wS;->videoPerfCounters:Lo/wS$Activity;

    .line 31
    iget-object v0, p0, Lo/wS;->videoPerfCounters:Lo/wS$Activity;

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wS$Activity;->numFramesSkippedAndNotDecoded:Ljava/lang/Integer;

    .line 32
    iget-object v0, p0, Lo/wS;->videoPerfCounters:Lo/wS$Activity;

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->droppedBufferCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wS$Activity;->numFramesDecodedButNotRendered:Ljava/lang/Integer;

    .line 33
    iget-object v0, p0, Lo/wS;->videoPerfCounters:Lo/wS$Activity;

    iget v1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wS$Activity;->numFramesRendered:Ljava/lang/Integer;

    .line 34
    iget-object v0, p0, Lo/wS;->videoPerfCounters:Lo/wS$Activity;

    iget p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lo/wS$Activity;->numFramesDecoded:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public e(II)Lo/wS;
    .locals 0

    .line 23
    iput p1, p0, Lo/wS;->speedold:I

    .line 24
    iput p2, p0, Lo/wS;->speed:I

    return-object p0
.end method

.method public e(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)Lo/wS;
    .locals 0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lo/wo;->c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V

    return-object p0
.end method
