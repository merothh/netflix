.class Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;
.super Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;
.source "ImageSubtitleParser.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

.field final synthetic val$nameServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/resfetcher/LoggingResourceFetcherCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    .line 215
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to download master index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->download:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->parseMasterIndex([B)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->access$000(Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->this$0:Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser$1;->val$nameServers:[Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/ImageSubtitleParser;->onError(Ljava/lang/String;[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;Lcom/netflix/mediaclient/android/app/Status;)Z

    goto :goto_0
.end method
