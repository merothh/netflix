.class Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field protected final abuflbytes:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abuflbytes"
    .end annotation
.end field

.field protected final abuflmsec:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abuflmsec"
    .end annotation
.end field

.field protected final vbuflbytes:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbuflbytes"
    .end annotation
.end field

.field protected final vbuflmsec:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vbuflmsec"
    .end annotation
.end field

.field protected final weight:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/xJ;)V
    .locals 2

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget-wide v0, p1, Lo/xJ;->e:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson$TaskDescription;->weight:J

    .line 275
    iget-wide v0, p1, Lo/xJ;->b:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson$TaskDescription;->vbuflmsec:J

    .line 276
    iget-wide v0, p1, Lo/xJ;->d:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson$TaskDescription;->abuflbytes:J

    .line 277
    iget-wide v0, p1, Lo/xJ;->h:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson$TaskDescription;->vbuflbytes:J

    .line 278
    iget-wide v0, p1, Lo/xJ;->c:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/TransitionJson$TaskDescription;->abuflmsec:J

    return-void
.end method
