.class public Lcom/netflix/mediaclient/ui/player/NccpAudioSource;
.super Lcom/netflix/mediaclient/media/AudioSource;
.source "NccpAudioSource.java"


# static fields
.field public static final IMPL_VALUE:I = 0x1

.field private static final TRACK_TYPE_ASSISTIVE:Ljava/lang/String; = "ASSISTIVE"

.field private static final TRACK_TYPE_COMMENTARY:Ljava/lang/String; = "COMMENTARY"

.field private static final TRACK_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/AudioSource;-><init>()V

    const-string/jumbo v0, "id"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->id:Ljava/lang/String;

    const-string/jumbo v0, "downloadable_id"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->dlid:Ljava/lang/String;

    const-string/jumbo v0, "bitrate"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->bitrate:I

    const-string/jumbo v0, "channels"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->numChannels:I

    const-string/jumbo v0, "language"

    const-string/jumbo v2, "en"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->languageCodeIso639_1:Ljava/lang/String;

    const-string/jumbo v0, "languageDescription"

    const-string/jumbo v2, "English"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->languageDescription:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->nccpOrderNumber:I

    const-string/jumbo v0, "trackType"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "isNative"

    invoke-static {p1, v2, v4}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->isNative:Z

    const-string/jumbo v2, "ASSISTIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    :goto_0
    const-string/jumbo v0, "disallowedSubtitleTracks"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "nf_audio_source"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DisallowedSubtitleTracks found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "COMMENTARY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v4, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "PRIMARY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "nf_audio_source"

    const-string/jumbo v2, "No disallowedSubtitleTracks!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    :cond_4
    const-string/jumbo v0, "streams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseStream(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Stream;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->streams:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;-><init>(Lorg/json/JSONObject;I)V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "impl"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "languageDescription"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "order"

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->nccpOrderNumber:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "channels"

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->numChannels:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "language"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->languageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "languageDescription"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "isNative"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->isNative:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v0, 0x0

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v0, "ASSISTIVE"

    :cond_0
    :goto_0
    const-string/jumbo v2, "trackType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v0, "disallowedSubtitleTracks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    if-ne v2, v4, :cond_2

    const-string/jumbo v0, "COMMENTARY"

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->trackType:I

    if-nez v2, :cond_0

    const-string/jumbo v0, "PRIMARY"

    goto :goto_0

    :cond_3
    return-object v1
.end method
