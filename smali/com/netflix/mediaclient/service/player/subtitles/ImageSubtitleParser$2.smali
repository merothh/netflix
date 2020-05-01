.class Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageSubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;I)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->val$size:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 285
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to download segment indexes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Segment indexes received, parse it..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->val$size:I

    invoke-virtual {v0, p2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseSegmentIndexes([BI)V

    .line 293
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Ready to serve subtitles..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->mReady:Z

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    const-string/jumbo v1, "segment.idx"

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->saveFileSafelyToCache(Ljava/lang/String;[B)V

    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->getCurrentSegmentIndex()I

    move-result v0

    .line 298
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Download segment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$2;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->downloadNextRange(I)V

    goto :goto_0
.end method
