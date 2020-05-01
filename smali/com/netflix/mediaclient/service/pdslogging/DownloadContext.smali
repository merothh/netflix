.class public Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloadInitTimeMs:J

.field private listPos:I

.field private oxid:Ljava/lang/String;

.field private profileGuid:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private trackId:I

.field private videoPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->oxid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->profileGuid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->downloadInitTimeMs:J

    iput-object p5, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->requestId:Ljava/lang/String;

    iput p6, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->trackId:I

    iput p7, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->videoPos:I

    iput p8, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->listPos:I

    return-void
.end method

.method public static createDownloadContext(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;
    .locals 10

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mOxId:Ljava/lang/String;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getProfileGuidFromOpd(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextInitTimeMs:J

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextRequestId:Ljava/lang/String;

    iget v7, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextTrackId:I

    iget v8, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextVideoPos:I

    iget v9, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->mDownloadContextListPos:I

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V

    return-object v1
.end method

.method public static createDownloadContext(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;
    .locals 10

    new-instance v1, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getOxId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getProfileGuidOfDownloadRequester()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadContextInitTimeMs()J

    move-result-wide v4

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadContextRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadContextTrackId()I

    move-result v7

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadContextVideoPos()I

    move-result v8

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadContextListPos()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;III)V

    return-object v1
.end method

.method private static getProfileGuidFromOpd(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;->getProfileGuidList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDownloadInitTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->downloadInitTimeMs:J

    return-wide v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "track_id"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getTrackId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "rank"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getVideoPos()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "row"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getListPos()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "profile_guid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "request_id"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "oxid"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getOxid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "download_utc_sec"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->getDownloadInitTimeMs()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "downloadContext jsonObject"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getListPos()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->listPos:I

    return v0
.end method

.method public getOxid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->oxid:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->profileGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->trackId:I

    return v0
.end method

.method public getVideoPos()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->videoPos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DownloadContext{oxid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->oxid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", profileGuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->profileGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadInitTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->downloadInitTimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->videoPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;->listPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
