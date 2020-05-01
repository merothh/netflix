.class public final Lo/MI;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final b:Lo/MI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lo/MI;

    invoke-direct {v0}, Lo/MI;-><init>()V

    sput-object v0, Lo/MI;->b:Lo/MI;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "MdxAudioSubtitleReader"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 60
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    move-object v4, p0

    check-cast v4, Lo/MessagePdu;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_1
    check-cast v1, Ljava/util/Collection;

    new-array p1, v0, [Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    .line 111
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_3
    :goto_1
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    new-array p1, v0, [Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    return-object p1
.end method

.method private final d([Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;)I
    .locals 4

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 79
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return v1
.end method

.method private final d([Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;)I
    .locals 4

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 69
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_1
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    return v1
.end method

.method private final e(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 43
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    move-object v4, p0

    check-cast v4, Lo/MessagePdu;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_1
    check-cast v1, Ljava/util/Collection;

    new-array p1, v0, [Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    .line 99
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    :goto_1
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    new-array p1, v0, [Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    return-object p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;Z)Lcom/netflix/mediaclient/media/Language;
    .locals 8

    const-string v0, "json"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "timed_text_tracks"

    .line 24
    invoke-static {v0, p1}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "timed_text_track"

    invoke-static {v0, p1}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    const-string v1, "audio_tracks"

    .line 25
    invoke-static {v0, v1}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "audio_track"

    invoke-static {v0, v1}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 26
    :goto_1
    invoke-direct {p0, p1}, Lo/MI;->e(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    move-result-object p1

    .line 27
    invoke-direct {p0, v1}, Lo/MI;->c(Lorg/json/JSONArray;)[Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Lo/MI;->d([Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;)I

    move-result v3

    .line 29
    invoke-direct {p0, p1}, Lo/MI;->d([Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;)I

    move-result v5

    .line 30
    new-instance v7, Lcom/netflix/mediaclient/media/Language;

    move-object v2, v0

    check-cast v2, [Lcom/netflix/mediaclient/media/AudioSource;

    move-object v4, p1

    check-cast v4, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-object v1, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/subtitles/Subtitle;IZ)V

    return-object v7
.end method
