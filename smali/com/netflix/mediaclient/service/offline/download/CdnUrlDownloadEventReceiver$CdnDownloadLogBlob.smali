.class Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "CdnUrlDownloadEventReceiver.java"


# static fields
.field private static final BYTES_DOWNLOAD_IN_SESSION:Ljava/lang/String; = "bytes"

.field private static final CDN_ID:Ljava/lang/String; = "cdnid"

.field private static final DL_START_TIME:Ljava/lang/String; = "downloadstarttime"

.field private static final DOWNLOADABLE_ID:Ljava/lang/String; = "dlid"

.field private static final DOWNLOAD_DURATION:Ljava/lang/String; = "duration"

.field private static final DXID:Ljava/lang/String; = "dxid"

.field private static final OXID:Ljava/lang/String; = "oxid"

.field private static final PLAYBACK_CONTEXT_ID:Ljava/lang/String; = "playbackcontextid"

.field private static final START_BYTE_OFFSET:Ljava/lang/String; = "startbyteoffset"

.field private static final TYPE:Ljava/lang/String; = "offlinedlreport"


# instance fields
.field private final mShouldSendNow:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mShouldSendNow:Z

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method populateJson(Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/service/offline/download/CdnUrl;JJJJ)V
    .locals 5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "offlinedlreport"

    sget-object v2, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "oxid"

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mOxId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "dxid"

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDxId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "downloadstarttime"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "startbyteoffset"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "playbackcontextid"

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mManifestPlaybackContextId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "cdnid"

    iget-wide v2, p2, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mCdnId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "dlid"

    iget-object v2, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "bytes"

    invoke-virtual {v0, v1, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public shouldSendNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mShouldSendNow:Z

    return v0
.end method
