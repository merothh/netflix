.class public Lcom/netflix/mediaclient/media/NccpAudioSource;
.super Lcom/netflix/mediaclient/media/AudioSource;
.source ""


# static fields
.field public static final IMPL_VALUE:I = 0x1

.field private static final TRACK_TYPE_ASSISTIVE:Ljava/lang/String; = "ASSISTIVE"

.field private static final TRACK_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"


# direct methods
.method protected constructor <init>(Lo/sb;I)V
    .locals 4

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/AudioSource;-><init>()V

    .line 89
    invoke-virtual {p1}, Lo/sb;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->id:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lo/sb;->m()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->numChannels:I

    .line 91
    invoke-virtual {p1}, Lo/sb;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageCodeBcp47:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lo/sb;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageDescription:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->nccpOrderNumber:I

    .line 94
    invoke-virtual {p1}, Lo/sb;->j()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p1}, Lo/sb;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->isNative:Z

    const-string v0, "ASSISTIVE"

    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    .line 98
    iput p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_0
    const-string v0, "PRIMARY"

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    iput v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 102
    iput p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    .line 105
    :goto_0
    invoke-virtual {p1}, Lo/sb;->e()Ljava/util/List;

    move-result-object p2

    const-string v0, "nf_audio_source"

    if-eqz p2, :cond_2

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisallowedSubtitleTracks found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "No disallowedSubtitleTracks!"

    .line 113
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v1, [Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    .line 116
    :cond_3
    invoke-virtual {p1}, Lo/sb;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->streams:Ljava/util/List;

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->streams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->streams:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadableId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->dlid:Ljava/lang/String;

    .line 119
    iget-object p1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->streams:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/manifest/Stream;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->bitrate:I

    :cond_4
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;I)V
    .locals 4

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/AudioSource;-><init>()V

    const/4 v0, 0x0

    const-string v1, "id"

    .line 47
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->id:Ljava/lang/String;

    const-string v1, "downloadable_id"

    .line 48
    invoke-static {p1, v1, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->dlid:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bitrate"

    .line 49
    invoke-static {p1, v2, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->bitrate:I

    const-string v2, "channels"

    .line 50
    invoke-static {p1, v2, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->numChannels:I

    const-string v2, "language"

    const-string v3, "en"

    .line 51
    invoke-static {p1, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageCodeBcp47:Ljava/lang/String;

    const-string v2, "languageDescription"

    const-string v3, "English"

    .line 52
    invoke-static {p1, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageDescription:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->nccpOrderNumber:I

    const-string p2, "trackType"

    .line 54
    invoke-static {p1, p2, v0}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v2, "isNative"

    .line 55
    invoke-static {p1, v2, v0}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->isNative:Z

    const-string v0, "ASSISTIVE"

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    .line 58
    iput p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_0
    const-string v0, "PRIMARY"

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    iput v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 62
    iput p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    :goto_0
    const-string p2, "disallowedSubtitleTracks"

    .line 65
    invoke-static {p1, p2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const-string v0, "nf_audio_source"

    if-eqz p2, :cond_2

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisallowedSubtitleTracks found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "No disallowedSubtitleTracks!"

    .line 73
    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, v1, [Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    :cond_3
    const-string p2, "streams"

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 78
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 79
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/netflix/mediaclient/media/manifest/Stream;->fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Stream;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->streams:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static newInstance(Lo/sb;I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/media/NccpAudioSource;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/NccpAudioSource;-><init>(Lo/sb;I)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 131
    new-instance v0, Lcom/netflix/mediaclient/media/NccpAudioSource;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/NccpAudioSource;-><init>(Lorg/json/JSONObject;I)V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const-string v2, "impl"

    .line 141
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    iget-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageDescription:Ljava/lang/String;

    const-string v2, "languageDescription"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    iget v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->nccpOrderNumber:I

    const-string v3, "order"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    iget v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->numChannels:I

    const-string v3, "channels"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    iget-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageCodeBcp47:Ljava/lang/String;

    const-string v3, "language"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->isNative:Z

    const-string v2, "isNative"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    iget v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "ASSISTIVE"

    goto :goto_0

    .line 155
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->trackType:I

    if-nez v1, :cond_1

    const-string v1, "PRIMARY"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "trackType"

    .line 158
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 161
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "disallowedSubtitleTracks"

    .line 162
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 163
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/netflix/mediaclient/media/NccpAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
