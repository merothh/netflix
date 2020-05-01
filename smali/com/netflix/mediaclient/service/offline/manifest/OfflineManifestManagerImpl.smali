.class public Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;
.super Ljava/lang/Object;
.source "OfflineManifestManagerImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManager;


# static fields
.field private static final MAX_MANIFEST_TO_CACHE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "nf_offlineManifestMgr"


# instance fields
.field private final mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

.field private final mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private final mOfflineManifestCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final mOfflineManifestRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    .line 68
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;

    .line 69
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mWorkHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->handleManifestResponse(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    return-object v0
.end method

.method private addManifestToCache(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->removeOldestManifest()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private getManifestFromMemoryOrPersistentStore(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 239
    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->readManifestFromPersistentStore(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->addManifestToCache(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 245
    :cond_0
    return-object v0
.end method

.method private handleManifestResponse(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V
    .locals 11

    .prologue
    .line 168
    .line 170
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;

    .line 171
    if-nez v8, :cond_0

    .line 172
    const-string/jumbo v2, "nf_offlineManifestMgr"

    const-string/jumbo v3, "onManifestsFetched but no callback"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 177
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->parseManifest(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;

    move-result-object v3

    .line 179
    iget-object v2, v3, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 180
    iget-object v10, v3, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 181
    invoke-interface {v2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    move-object/from16 v0, p5

    invoke-direct {p0, p2, p3, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->persistManifest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    move-object v9, v2

    .line 184
    :goto_1
    invoke-interface {v9}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, v3, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-direct {p0, p2, v2}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->addManifestToCache(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    .line 186
    if-eqz p4, :cond_1

    .line 187
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mPdsAgent:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v7

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadInterface;->onDownloadOfFirstTimeOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Lorg/json/JSONObject;)V

    :cond_1
    move-object v2, v10

    .line 191
    :goto_2
    invoke-interface {v9}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mLoggingAgent:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v3

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {v3, p2, v0, v1, v9}, Lcom/netflix/mediaclient/service/offline/log/OfflineErrorLogblob;->sendBladerunnerError(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 194
    :cond_2
    invoke-interface {v8, v2, v9}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;->onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_3
    move-object v9, v2

    goto :goto_1

    :cond_4
    move-object v9, p1

    goto :goto_2
.end method

.method private parseManifest(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;
    .locals 3

    .prologue
    .line 216
    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)V

    .line 217
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 219
    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v2, v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 220
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    .line 225
    :goto_0
    return-object v1

    .line 222
    :cond_0
    const-string/jumbo v0, "nf_offlineManifestMgr"

    const-string/jumbo v2, "manifest parse error"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    iput-object v0, v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    goto :goto_0
.end method

.method private persistManifest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 5

    .prologue
    .line 198
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 199
    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathOfflineManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string/jumbo v2, "nf_offlineManifestMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "filepath for manifest= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z

    move-result v1

    .line 204
    if-nez v1, :cond_0

    .line 205
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_CANT_PERSIST_MANIFEST:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 207
    :cond_0
    return-object v0
.end method

.method private readManifestFromPersistentStore(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 266
    .line 267
    new-instance v0, Ljava/io/File;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflinePathUtils;->getFilePathOfflineManifest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const-string/jumbo v2, "nf_offlineManifestMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readManifestFromPersistentStore file not found="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-object v1

    .line 274
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 275
    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->byteArrayToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 279
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 284
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    const-string/jumbo v2, "nf_offlineManifestMgr"

    const-string/jumbo v3, "readManifestFromPersistentStore read error"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private removeOldestManifest()V
    .locals 10

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 298
    const-wide/32 v6, 0x7fffffff

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    if-nez v2, :cond_0

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 303
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getManifestExpiryInEndPointTime()J

    move-result-wide v4

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getManifestExpiryInEndPointTime()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-gez v0, :cond_5

    .line 305
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeOldestManifest manifestExpiryTime="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-wide v0, v4

    :goto_1
    move-wide v6, v0

    .line 311
    goto :goto_0

    .line 312
    :cond_2
    if-eqz v2, :cond_4

    .line 313
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeOldestManifest removing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_4
    return-void

    :cond_5
    move-wide v0, v6

    goto :goto_1
.end method


# virtual methods
.method public abortAllRequestsForPlayable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public notifyDeletingPlayable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .prologue
    .line 255
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$3;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_0
    return-void
.end method

.method public requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifestFromCache playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->getManifestFromMemoryOrPersistentStore(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    move-result-object v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_MANIFEST_NOT_FOUND_IN_CACHE:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 84
    :cond_0
    if-eqz p3, :cond_1

    .line 85
    invoke-interface {p3, v1, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;->onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 87
    :cond_1
    return-void
.end method

.method public requestOfflineManifestFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
    .locals 8

    .prologue
    .line 96
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifestFromServer playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mOfflineManifestRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v7, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->mBladeRunnerClient:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    new-instance v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$1;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/pdslogging/DownloadContext;)V

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 115
    return-void
.end method

.method public requestOfflineManifestRefreshFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V
    .locals 8

    .prologue
    .line 125
    const-string/jumbo v0, "nf_offlineManifestMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOfflineManifestRefreshFromServer playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$2;-><init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4, v0}, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;->requestOfflineManifestFromCache(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;)V

    .line 163
    return-void
.end method
