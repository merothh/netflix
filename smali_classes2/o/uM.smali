.class public Lo/uM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/uM$Activity;,
        Lo/uM$ActionBar;
    }
.end annotation


# instance fields
.field c:Z

.field private final d:Lcom/google/android/exoplayer2/extractor/Extractor;

.field private e:Lo/uM$Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/Extractor;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/uM;->d:Lcom/google/android/exoplayer2/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lo/uM;->d:Lcom/google/android/exoplayer2/extractor/Extractor;

    new-instance v1, Lo/uM$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/uM$ActionBar;-><init>(Lo/uM;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/Extractor;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 1

    .line 73
    iget-object v0, p0, Lo/uM;->e:Lo/uM$Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/uM$Activity;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lo/uM;->c:Z

    .line 75
    new-instance v0, Lo/uM$Activity;

    invoke-direct {v0, p0, p1}, Lo/uM$Activity;-><init>(Lo/uM;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    iput-object v0, p0, Lo/uM;->e:Lo/uM$Activity;

    .line 77
    :cond_1
    iget-object p1, p0, Lo/uM;->d:Lcom/google/android/exoplayer2/extractor/Extractor;

    iget-object v0, p0, Lo/uM;->e:Lo/uM$Activity;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/Extractor;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/uM;->d:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/Extractor;->release()V

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/uM;->d:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/Extractor;->seek(JJ)V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lo/uM;->d:Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
