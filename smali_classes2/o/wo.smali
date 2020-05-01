.class public abstract Lo/wo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final transient c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;


# instance fields
.field private transient a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

.field protected abuflbytes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abuflbytes"
    .end annotation
.end field

.field protected abuflmsec:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abuflmsec"
    .end annotation
.end field

.field protected dxid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dxid"
    .end annotation
.end field

.field protected moff:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moff"
    .end annotation
.end field

.field protected moffms:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moffms"
    .end annotation
.end field

.field protected oxid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oxid"
    .end annotation
.end field

.field protected playbackoffline:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playbackoffline"
    .end annotation
.end field

.field protected player:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playertype"
    .end annotation
.end field

.field protected pxid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pxid"
    .end annotation
.end field

.field protected segment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "segment"
    .end annotation
.end field

.field protected segmentOffset:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "segmentoffset"
    .end annotation
.end field

.field protected soff:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soff"
    .end annotation
.end field

.field protected soffms:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "soffms"
    .end annotation
.end field

.field protected tbuflbytes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tbuflbytes"
    .end annotation
.end field

.field protected tbuflmsec:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tbuflmsec"
    .end annotation
.end field

.field protected totalTimeInSec:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totaltime"
    .end annotation
.end field

.field protected type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field protected vbuflbytes:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbuflbytes"
    .end annotation
.end field

.field protected vbuflmsec:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbuflmsec"
    .end annotation
.end field

.field protected xid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    sput-object v0, Lo/wo;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lo/wo;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object v0, p0, Lo/wo;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lo/wo;->c:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    iput-object v0, p0, Lo/wo;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 107
    iput-object p1, p0, Lo/wo;->type:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lo/wo;->pxid:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lo/wo;->xid:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p4, p5}, Lo/wo;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/wo;->xid:Ljava/lang/String;

    return-object v0
.end method

.method public b(JLcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;)Lo/wo;
    .locals 7

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    .line 151
    invoke-interface {p3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lo/wo;->abuflmsec:Ljava/lang/Long;

    const/4 v1, 0x2

    .line 152
    invoke-interface {p3, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lo/wo;->vbuflmsec:Ljava/lang/Long;

    .line 156
    iget-object v2, p0, Lo/wo;->abuflmsec:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lo/wo;->vbuflmsec:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 157
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lo/wo;->vbuflmsec:Ljava/lang/Long;

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lo/wo;->abuflmsec:Ljava/lang/Long;

    .line 161
    :goto_0
    invoke-interface {p3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->d(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/wo;->abuflbytes:Ljava/lang/Long;

    .line 162
    invoke-interface {p3, v1}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/wo;->vbuflbytes:Ljava/lang/Long;

    const/4 v0, 0x3

    .line 163
    invoke-interface {p3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->b(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 165
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wo;->tbuflmsec:Ljava/lang/Long;

    .line 166
    invoke-interface {p3, v0}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;->d(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wo;->tbuflbytes:Ljava/lang/Long;

    :cond_1
    return-object p0
.end method

.method public b(J)V
    .locals 2

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/wo;->soffms:Ljava/lang/Long;

    const-wide/16 v0, 0x3e8

    .line 115
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wo;->soff:Ljava/lang/Long;

    return-void
.end method

.method public c(JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 2

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/wo;->moffms:Ljava/lang/Long;

    const-wide/16 v0, 0x3e8

    .line 120
    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wo;->moff:Ljava/lang/Long;

    if-eqz p3, :cond_0

    .line 122
    iget-object p1, p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->b:Ljava/lang/String;

    iput-object p1, p0, Lo/wo;->segment:Ljava/lang/String;

    .line 123
    iget-wide p1, p3, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;->e:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wo;->segmentOffset:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lo/wo;->oxid:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lo/wo;->dxid:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "exoplayer_offline"

    .line 176
    iput-object p1, p0, Lo/wo;->player:Ljava/lang/String;

    const/4 p1, 0x1

    .line 177
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/wo;->playbackoffline:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string p1, "exoplayer"

    .line 179
    iput-object p1, p0, Lo/wo;->player:Ljava/lang/String;

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lo/wo;->playbackoffline:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lo/wo;->playbackoffline:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/wo;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected e(Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lo/wo;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-void
.end method

.method public f()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/wo;->a:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
