.class Lo/uM$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lo/uM;

.field private final e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>(Lo/uM;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/uM$ActionBar;->b:Lo/uM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lo/uM$ActionBar;->e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 104
    iget-object v0, p0, Lo/uM$ActionBar;->e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/uM$ActionBar;->b:Lo/uM;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/uM;->c:Z

    .line 110
    iget-object v0, p0, Lo/uM$ActionBar;->e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/uM$ActionBar;->e:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    return-object p1
.end method
