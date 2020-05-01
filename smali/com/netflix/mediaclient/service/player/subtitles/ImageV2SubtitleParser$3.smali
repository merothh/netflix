.class Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageV2SubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 401
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to download segment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$si:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser$3;->val$key:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageV2SubtitleParser;->parseSegment([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentIndex;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
