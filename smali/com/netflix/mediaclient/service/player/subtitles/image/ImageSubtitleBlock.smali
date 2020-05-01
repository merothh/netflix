.class public Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;
.source "ImageSubtitleBlock.java"


# instance fields
.field private mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getStartTime()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mStart:J

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getEndTime()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mEnd:J

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayed()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->displayed()V

    return-void
.end method

.method public getImage()Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    return-object v0
.end method

.method public getNumberOfDisplays()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->getNumberOfDisplays()I

    move-result v0

    return v0
.end method

.method public seeked(J)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->seeked(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageSubtitleBlock{mImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasDisplayed()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;->mImage:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/ImageDescriptor;->wasDisplayed()Z

    move-result v0

    return v0
.end method
