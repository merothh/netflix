.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;
.super Ljava/lang/Object;
.source "BaseImageDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;


# static fields
.field public static final SIZE:I = 0x1c

.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field protected mDisplayed:Z

.field protected mDuration:I

.field protected mEndTime:I

.field protected mHeight:S

.field protected mImageStartPosition:J

.field protected mLocalImagePath:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mNumberOfDisplays:I

.field protected mOriginX:S

.field protected mOriginY:S

.field protected mSize:I

.field protected mStartTime:I

.field protected mTotalIndex:I

.field protected mWidth:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayed()V
    .locals 3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already visible, do not count it again as displayed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not visible, count it as displayed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mNumberOfDisplays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mNumberOfDisplays:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDuration:I

    return v0
.end method

.method public getEndTime()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    return v0
.end method

.method public getHeight()S
    .locals 1

    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mHeight:S

    return v0
.end method

.method public getImageStartPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mImageStartPosition:J

    return-wide v0
.end method

.method public declared-synchronized getLocalImagePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mLocalImagePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfDisplays()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mNumberOfDisplays:I

    return v0
.end method

.method public getOriginX()S
    .locals 1

    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mOriginX:S

    return v0
.end method

.method public getOriginY()S
    .locals 1

    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mOriginY:S

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mSize:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    return v0
.end method

.method public getTotalIndex()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mTotalIndex:I

    return v0
.end method

.method public getWidth()S
    .locals 1

    iget-short v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mWidth:S

    return v0
.end method

.method public inRange(J)Z
    .locals 3

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mLocalImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleInGivenTimeRange(JJ)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Is block will visible for range ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") when its start time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and its end time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    cmp-long v1, p1, p3

    if-lez v1, :cond_2

    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "From can not be later than to!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mStartTime:I

    int-to-long v2, v1

    cmp-long v1, p3, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Block is visible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seeked(J)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mEndTime:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setLocalImagePath(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mLocalImagePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTotalIndex(I)V
    .locals 2

    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mTotalIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mName:Ljava/lang/String;

    return-void
.end method

.method public wasDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/BaseImageDescriptor;->mDisplayed:Z

    return v0
.end method
