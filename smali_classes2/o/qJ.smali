.class public Lo/qJ;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source ""


# instance fields
.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "CMISC"

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lo/qJ;->d:J

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/qJ;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2

    .line 30
    new-instance p3, Lo/qC;

    iget-wide v0, p0, Lo/qJ;->d:J

    invoke-direct {p3, v0, v1, p1, p2}, Lo/qC;-><init>(J[BI)V

    .line 31
    iget-boolean p1, p3, Lo/qC;->b:Z

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lo/qJ;->e:Ljava/util/List;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, v0, v1}, Lo/qC;->getCues(J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p3, Lo/qC;->e:Ljava/util/List;

    iget-object p2, p0, Lo/qJ;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object p1, p0, Lo/qJ;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    return-object p3
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;->setPositionUs(J)V

    .line 25
    iput-wide p1, p0, Lo/qJ;->d:J

    return-void
.end method
