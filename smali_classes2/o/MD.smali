.class public Lo/MD;
.super Lo/Mx;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_AUDIOSUB"

    .line 44
    invoke-direct {p0, v0}, Lo/Mx;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    .line 132
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const-string p1, "mdxui"

    const-string v1, "Empty subtitle list"

    .line 127
    invoke-static {p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    return-object p1
.end method

.method private b([Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 105
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "mdxui"

    const-string v1, "None is selected, default to 0"

    .line 109
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private b(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    .line 150
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 151
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const-string p1, "mdxui"

    const-string v1, "Empty audio list"

    .line 145
    invoke-static {p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    return-object p1
.end method

.method private e([Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 116
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "mdxui"

    const-string v1, "None is selected, default to 0"

    .line 120
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public e(Lo/Mp;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "mdxui"

    const-string v1, "Update audio/subtitles..."

    .line 50
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "stringBlob"

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "timed_text_tracks"

    .line 60
    invoke-static {v1, p2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "timed_text_track"

    .line 63
    invoke-static {v1, p2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    :cond_0
    const-string v2, "audio_tracks"

    .line 65
    invoke-static {v1, v2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "audio_track"

    .line 68
    invoke-static {v1, v2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 84
    :cond_1
    invoke-direct {p0, p2}, Lo/MD;->a(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    move-result-object v6

    .line 85
    invoke-direct {p0, v2}, Lo/MD;->b(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    move-result-object v4

    .line 87
    invoke-direct {p0, v4}, Lo/MD;->e([Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;)I

    move-result v5

    .line 88
    invoke-direct {p0, v6}, Lo/MD;->b([Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;)I

    move-result v7

    .line 90
    new-instance p2, Lcom/netflix/mediaclient/media/Language;

    const/4 v8, 0x1

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/subtitles/Subtitle;IZ)V

    .line 92
    invoke-interface {p1, p2}, Lo/Mp;->b(Lcom/netflix/mediaclient/media/Language;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to extract capability data "

    .line 98
    invoke-static {v0, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
