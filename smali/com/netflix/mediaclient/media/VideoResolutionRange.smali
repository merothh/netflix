.class public final Lcom/netflix/mediaclient/media/VideoResolutionRange;
.super Ljava/lang/Object;
.source "VideoResolutionRange.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinHeight:I

    iput p1, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxWidth:I

    iput p2, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxHeight:I

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinHeight:I

    iput p1, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinWidth:I

    iput p3, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinHeight:I

    iput p2, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxWidth:I

    iput p4, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxHeight:I

    return-void
.end method

.method public static getVideoResolutionRangeFromMaxHieght(I)Lcom/netflix/mediaclient/media/VideoResolutionRange;
    .locals 6

    const/16 v5, 0x870

    const/16 v4, 0x5a0

    const/16 v3, 0x438

    const/16 v1, 0x1e0

    const/16 v2, 0x2d0

    if-ge p0, v1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/media/VideoResolutionRange;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/media/VideoResolutionRange;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    if-ge p0, v2, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/media/VideoResolutionRange;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;-><init>(II)V

    goto :goto_0

    :cond_1
    if-ge p0, v3, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/media/VideoResolutionRange;

    const/16 v1, 0x500

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/media/VideoResolutionRange;-><init>(II)V

    goto :goto_0

    :cond_2
    if-ge p0, v4, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/media/VideoResolutionRange;

    const/16 v1, 0x780

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/media/VideoResolutionRange;-><init>(II)V

    goto :goto_0

    :cond_3
    if-ge p0, v5, :cond_4

    new-instance v0, Lcom/netflix/mediaclient/media/VideoResolutionRange;

    const/16 v1, 0xa00

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/media/VideoResolutionRange;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/media/VideoResolutionRange;

    const/16 v1, 0xf00

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/media/VideoResolutionRange;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoResolutionRange {width = [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ], height = [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/VideoResolutionRange;->mMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
