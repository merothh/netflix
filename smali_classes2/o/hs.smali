.class public final Lo/hs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:I

.field private playEventRepoEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enabled"
    .end annotation
.end field

.field private samplePlayEventRepoStats:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "samplePlayEventRepoStats"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lo/hs;->samplePlayEventRepoStats:I

    .line 15
    iput-boolean v0, p0, Lo/hs;->playEventRepoEnabled:Z

    .line 17
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lo/hs;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/hs;->playEventRepoEnabled:Z

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 24
    iget v0, p0, Lo/hs;->d:I

    iget v1, p0, Lo/hs;->samplePlayEventRepoStats:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
