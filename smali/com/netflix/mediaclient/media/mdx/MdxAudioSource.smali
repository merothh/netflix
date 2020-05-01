.class public final Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;
.super Lcom/netflix/mediaclient/media/AudioSource;
.source ""


# static fields
.field protected static final ATTR_LABEL:Ljava/lang/String; = "label"

.field public static final IMPL_VALUE:I = 0x2


# instance fields
.field private mAvailable:Z

.field private final mSelected:Z

.field private mSupported:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;I)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/AudioSource;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x0

    .line 65
    invoke-static {p1, v0, v1}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->id:Ljava/lang/String;

    const-string v0, "label"

    const-string v1, "English"

    .line 66
    invoke-static {p1, v0, v1}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->languageDescription:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "selected"

    .line 67
    invoke-static {p1, v1, v0}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mSelected:Z

    .line 68
    iput p2, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->nccpOrderNumber:I

    const/4 p2, 0x1

    .line 69
    iput-boolean p2, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->isNative:Z

    .line 70
    iput v0, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->trackType:I

    const-string p2, "disallowedSubtitleTracks"

    .line 72
    invoke-static {p1, p2}, Lo/adN;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    .line 78
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 79
    iget-object p2, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "nf_audio_source"

    const-string p2, "No disallowedSubtitleTracks!"

    .line 82
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;
    .locals 1

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;-><init>(Lorg/json/JSONObject;I)V

    return-object v0
.end method


# virtual methods
.method public isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mAvailable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mSelected:Z

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mSupported:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "impl"

    const/4 v2, 0x2

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->languageDescription:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    iget v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->nccpOrderNumber:I

    const-string v2, "order"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mSelected:Z

    const-string v2, "selected"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 172
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "disallowedSubtitleTracks"

    .line 173
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MdxAudioSource [mSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->mAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageCodeBcp47="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->languageCodeBcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->codecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->isNative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", numChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->numChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disallowedSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->disallowedSubtitles:[Ljava/lang/String;

    .line 154
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
