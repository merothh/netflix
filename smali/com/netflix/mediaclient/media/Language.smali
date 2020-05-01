.class public Lcom/netflix/mediaclient/media/Language;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final JSON_AUDIO_ARRAY:Ljava/lang/String; = "audio_array"

.field private static final JSON_CURRENT_NCCP_AUDIO_INDEX:Ljava/lang/String; = "CurrentNccpAudioIndex"

.field private static final JSON_CURRENT_NCCP_SUBTITLE_INDEX:Ljava/lang/String; = "CurrentNccpSubtitleIndex"

.field private static final JSON_PREVIOUS_NCCP_AUDIO_INDEX:Ljava/lang/String; = "PreviousNccpAudioIndex"

.field private static final JSON_PREVIOUS_NCCP_SUBTITLE_INDEX:Ljava/lang/String; = "PreviousNccpSubtitleIndex"

.field private static final JSON_SUBTITLE_ARRAY:Ljava/lang/String; = "subtitle_array"

.field private static final JSON_SUBTITLE_VISIBLE:Ljava/lang/String; = "subtitle_visible"

.field private static final OFF_SUBTITLE_TRACK_DESC:Ljava/lang/String; = "Off"

.field private static final TAG:Ljava/lang/String; = "nf_language"


# instance fields
.field private mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mCurrentNccpAudioIndex:I

.field private mCurrentNccpSubtitleIndex:I

.field private mPreviousNccpAudioIndex:I

.field private mPreviousNccpSubtitleIndex:I

.field private mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

.field private mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

.field private mSubtitleVisible:Z

.field private mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

.field private final mUsedSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/subtitles/Subtitle;IZ)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    .line 111
    iput p2, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/Language;->dedupAudioTrackOnLanguageDescription([Lcom/netflix/mediaclient/media/AudioSource;I)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    :goto_0
    if-eqz p3, :cond_1

    .line 119
    iput-object p3, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    goto :goto_1

    :cond_1
    new-array p1, v0, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 121
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 124
    :goto_1
    iput-boolean p5, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    .line 125
    iput p4, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    return-void
.end method

.method private static countAllowedSubtitles([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_4

    .line 508
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 513
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, p0, v0

    .line 514
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method private dedupAudioTrackOnLanguageDescription([Lcom/netflix/mediaclient/media/AudioSource;I)V
    .locals 9

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 171
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 173
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v5, v1

    const/4 v1, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v7, p1, v1

    .line 174
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 175
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v6

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1
    if-eq v6, v4, :cond_1

    .line 180
    iget v7, v7, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    if-ne v7, p2, :cond_1

    .line 181
    iput v6, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v3, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 184
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netflix/mediaclient/media/AudioSource;

    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    return-void
.end method

.method private static getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "nf_language"

    if-nez p0, :cond_0

    const-string p0, "Audios are null!"

    .line 269
    invoke-static {v1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 273
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 277
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v5

    if-ne v5, p1, :cond_1

    const-string p0, "Found!"

    .line 278
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getAudioSourceByPosition(I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    if-ltz p1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    .line 322
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioSourceByIndex: position invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_language"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getSubtitle([Lcom/netflix/mediaclient/media/subtitles/Subtitle;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "nf_language"

    if-nez p0, :cond_0

    const-string p0, "Subtitles are null!"

    .line 339
    invoke-static {v1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 343
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 347
    invoke-interface {v4}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getNccpOrderNumber()I

    move-result v5

    if-ne v5, p1, :cond_1

    const-string p0, "Found!"

    .line 348
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isOffSubtitleAvailable(Lcom/netflix/mediaclient/media/AudioSource;)Z
    .locals 6

    .line 651
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 652
    invoke-interface {v4}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static newSubtitleInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "impl"

    .line 140
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "order"

    .line 142
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 146
    invoke-static {p0}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/OfflineTextSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/subtitles/OfflineTextSubtitle;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/subtitles/OfflineImageSubtitle;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 155
    :cond_4
    new-instance p0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implementation does not support restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static restore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "impl"

    .line 672
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "order"

    if-ne v0, v1, :cond_1

    .line 674
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 675
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/mdx/MdxAudioSource;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 678
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 679
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/media/NccpAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p0

    return-object p0

    .line 682
    :cond_2
    new-instance p0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implementation does not support restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;
    .locals 11

    .line 617
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "CurrentNccpSubtitleIndex"

    .line 618
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "CurrentNccpAudioIndex"

    .line 619
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 620
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 621
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "subtitle_visible"

    .line 622
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v1, "audio_array"

    .line 623
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "subtitle_array"

    .line 624
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const/4 v9, 0x0

    .line 631
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_1

    .line 632
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/netflix/mediaclient/media/Language;->newSubtitleInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object v8, v4

    :cond_1
    if-eqz v1, :cond_3

    .line 637
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 638
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 639
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/media/Language;->restore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, v4

    .line 643
    :goto_2
    new-instance v0, Lcom/netflix/mediaclient/media/Language;

    move-object v1, v0

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/subtitles/Subtitle;IZ)V

    .line 644
    iput v7, v0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 645
    iput p0, v0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    return-object v0
.end method

.method private updateUsedSubtitles(Lcom/netflix/mediaclient/media/AudioSource;)V
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 392
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/Language;->isOffSubtitleAvailable(Lcom/netflix/mediaclient/media/AudioSource;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-eqz v1, :cond_1

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/media/Language;->countAllowedSubtitles([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 396
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-eqz v0, :cond_6

    .line 411
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    if-eqz p1, :cond_4

    .line 412
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 416
    :cond_4
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    .line 469
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 474
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 476
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getNccpOrderNumber()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 483
    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 484
    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    :goto_0
    return-void
.end method

.method public getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNccpAudioIndex()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    return v0
.end method

.method public getCurrentNccpSubtitleIndex()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    return v0
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getSubtitle([Lcom/netflix/mediaclient/media/subtitles/Subtitle;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object v0
.end method

.method public getSubtitles()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object v0
.end method

.method public getUsedSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-le v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSubtitleVisible()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    return v0
.end method

.method public restorePreviousAudio()V
    .locals 3

    .line 544
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    const-string v1, "nf_language"

    if-gez v0, :cond_0

    const-string v0, "This should not happen!"

    .line 545
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/Language;->getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 551
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Unable to restore to previous audio. Not allowed!"

    .line 552
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 554
    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    :goto_0
    return-void
.end method

.method public restorePreviousSubtitle()V
    .locals 3

    .line 528
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/media/Language;->getSubtitle([Lcom/netflix/mediaclient/media/subtitles/Subtitle;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 535
    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 536
    iput v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    return-void
.end method

.method public setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    .line 383
    iget-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/Language;->updateUsedSubtitles(Lcom/netflix/mediaclient/media/AudioSource;)V

    .line 384
    iget-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object p1
.end method

.method public setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    const/4 v0, 0x0

    .line 447
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 450
    iput-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object v2

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 455
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 456
    iget-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "nf_language"

    const-string v0, "We tried to select subtitle that is NOT in list of used subtitles!"

    .line 460
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 6

    .line 581
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 583
    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    const-string v2, "CurrentNccpAudioIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 584
    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    const-string v2, "CurrentNccpSubtitleIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 585
    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    const-string v2, "PreviousNccpAudioIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 586
    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    const-string v2, "PreviousNccpSubtitleIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    const-string v2, "subtitle_visible"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 589
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 590
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 591
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 592
    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "subtitle_array"

    .line 594
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    .line 598
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 599
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 600
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "audio_array"

    .line 602
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Language [mSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAltAudios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 562
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubtitleVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentNccpSubtitleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentNccpAudioIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousNccpSubtitleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousNccpAudioIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUsedSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
