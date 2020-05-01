.class public final Lcom/netflix/mediaclient/util/NflxProtocolUtils;
.super Ljava/lang/Object;
.source "NflxProtocolUtils.java"


# static fields
.field public static final INTENT_RESULT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

.field public static final PARAM_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "NflxHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;"
        }
    .end annotation

    .prologue
    .line 567
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getSource(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v0

    return-object v0
.end method

.method public static extractId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 267
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 268
    if-gtz v1, :cond_2

    .line 269
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "Check if this is simple ID"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractJustUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    .line 292
    :cond_0
    const-string/jumbo v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :goto_1
    const-string/jumbo v1, "::urn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "::urn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 294
    :goto_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2
.end method

.method public static getAction(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "action"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v0, "a"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isVideoInfoAvailable(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Action is empty, but video info is available, default action is video detail!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v0, "view_details"

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Action is empty and video info is NOT available, default action is home "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v0, "home"

    goto :goto_0
.end method

.method public static getEpisodeId(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 245
    const-string/jumbo v0, "episodeid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "episode id uri doesn\'t exist in params map"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 252
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_1
    const-string/jumbo v1, "programs/"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    const-string/jumbo v2, "NflxHandler"

    const-string/jumbo v3, "Failed to decode URL"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getExpandUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Gets expanded tiny URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tiny URL can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    const-string/jumbo v0, "source=android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "source=android"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 219
    :cond_2
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Movie ID not found in tiny URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    const-string/jumbo v1, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Encoded ID in tiny URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5
    return-object v0
.end method

.method public static getParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    const/4 v0, 0x1

    .line 341
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    if-eqz v2, :cond_1

    .line 345
    const/4 v2, 0x0

    .line 349
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v2

    move v2, v0

    .line 351
    goto :goto_0

    .line 347
    :cond_1
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 234
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Error parsing trackId %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    goto :goto_0
.end method

.method public static getSource(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v0, "source"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v0, "s"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Source is empty!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string/jumbo v0, "uknown"

    .line 64
    :cond_0
    return-object v0
.end method

.method public static getTargetUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 113
    const-string/jumbo v0, "target_url"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string/jumbo v0, "u"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getTrackId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v0, "trkid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 178
    if-lez v0, :cond_3

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string/jumbo v2, "NflxHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found video id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for path key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "empty video id"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 196
    :cond_1
    :goto_0
    return-object v0

    .line 190
    :cond_2
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 191
    if-lez v1, :cond_1

    .line 192
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method public static getVideoInfoFromVideoIdUrl(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;"
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 141
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "movie id uri exist in params map"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string/jumbo v0, "NflxHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Gets video info from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const-string/jumbo v0, "series/"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromShow(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    .line 169
    :goto_1
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "Failed to decode URL"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    :cond_1
    const-string/jumbo v0, "movies/"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_2

    .line 154
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromMovie(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    goto :goto_1

    .line 158
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NumberUtils;->isPositiveWholeNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const-string/jumbo v0, "episodeid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromShow(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromMovie(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_4
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Unable to get video id! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isGenreAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "genre"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "play"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoInfoAvailable(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 98
    const-string/jumbo v0, "movieid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTargetUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isViewDetailsAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "view_details"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "v"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportApplicationLaunchedFromDeepLinking(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_2

    .line 324
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string/jumbo v1, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reporting that application is started from deep link. Deeplink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 329
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCustomerEventLogging()Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->getDeeplinkParams()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerEventLogging;->reportApplicationLaunchedFromDeepLinking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Client logging is null. Unable to report deep linking start!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reportDelayedResponseHandled(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 363
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "LocalIntentNflxUi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportOnProfileGate(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v6

    .line 300
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    const-string/jumbo v0, "profileGate"

    invoke-static {p0, v0, v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportApplicationLaunchedFromDeepLinking(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    .line 303
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    .line 305
    :cond_0
    return-void
.end method

.method public static reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V
    .locals 8

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v7

    .line 310
    if-eqz v7, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne p1, v0, :cond_1

    .line 311
    :cond_0
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->externalControlProtocol:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 312
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    move-object v2, p3

    move-object v5, p6

    .line 311
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 313
    if-eqz p2, :cond_1

    .line 314
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-interface {v0, p4, p5}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 317
    :cond_1
    return-void
.end method

.method public static reportUserOpenedNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Netflix service is null, enable to report that user opened notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 408
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "reportIfSourceIsNotification"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 410
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCmpEventLogging()Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

    move-result-object v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "CL or CMP is null, enable to report that user opened notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->isIntentFromPushNotification(Landroid/content/Intent;)Z

    move-result v0

    .line 416
    if-eqz v0, :cond_2

    .line 417
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "From push notification, report."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 424
    if-nez v0, :cond_3

    .line 425
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Unable to report since message data are missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_2
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Not from push notification, do not report."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 429
    const-string/jumbo v1, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User opened notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_4
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getCmpEventLogging()Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->opened:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/CmpEventLogging;->reportUserFeedbackOnReceivedPushNotification(Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V

    goto :goto_0
.end method

.method public static reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 391
    if-nez p0, :cond_0

    .line 392
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Service manager is null, enable to report that user opened notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Landroid/content/Intent;)V

    goto :goto_0
.end method
