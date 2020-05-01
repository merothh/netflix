.class public Lcom/netflix/mediaclient/media/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field private static final JSON_AUDIO_ARRAY:Ljava/lang/String; = "audio_array"

.field private static final JSON_CURRENT_NCCP_AUDIO_INDEX:Ljava/lang/String; = "CurrentNccpAudioIndex"

.field private static final JSON_CURRENT_NCCP_SUBTITLE_INDEX:Ljava/lang/String; = "CurrentNccpSubtitleIndex"

.field private static final JSON_PREVIOUS_NCCP_AUDIO_INDEX:Ljava/lang/String; = "PreviousNccpAudioIndex"

.field private static final JSON_PREVIOUS_NCCP_SUBTITLE_INDEX:Ljava/lang/String; = "PreviousNccpSubtitleIndex"

.field private static final JSON_SUBTITLE_ARRAY:Ljava/lang/String; = "subtitle_array"

.field private static final JSON_SUBTITLE_VISIBLE:Ljava/lang/String; = "subtitle_visible"

.field private static final TAG:Ljava/lang/String; = "nf_language"


# instance fields
.field private mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mCurrentNccpAudioIndex:I

.field private mCurrentNccpSubtitleIndex:I

.field private mPreviousNccpAudioIndex:I

.field private mPreviousNccpSubtitleIndex:I

.field private mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

.field private mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

.field private mSubtitleVisible:Z

.field private mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

.field private final mUsedSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/Subtitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 74
    iput v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    .line 102
    iput p2, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/Language;->dedupAudioTrackOnLanguageDescription([Lcom/netflix/mediaclient/media/AudioSource;I)V

    .line 109
    :goto_0
    if-eqz p3, :cond_1

    .line 110
    iput-object p3, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    .line 115
    :goto_1
    iput-boolean p5, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    .line 116
    iput p4, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 117
    return-void

    .line 106
    :cond_0
    new-array v0, v1, [Lcom/netflix/mediaclient/media/AudioSource;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_0

    .line 112
    :cond_1
    new-array v0, v1, [Lcom/netflix/mediaclient/media/Subtitle;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1
.end method

.method private static countAllowedSubtitles([Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 474
    :cond_0
    return v0

    .line 463
    :cond_1
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 468
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 469
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 468
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dedupAudioTrackOnLanguageDescription([Lcom/netflix/mediaclient/media/AudioSource;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 129
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 133
    array-length v6, p1

    move v2, v3

    move v0, v4

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, p1, v2

    .line 134
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 135
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    .line 139
    :cond_0
    if-eq v0, v4, :cond_1

    iget v7, v7, Lcom/netflix/mediaclient/media/AudioSource;->nccpOrderNumber:I

    if-ne v7, p2, :cond_1

    .line 140
    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 133
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_2
    new-array v0, v3, [Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/AudioSource;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 144
    return-void
.end method

.method private static getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p0, :cond_1

    .line 228
    const-string/jumbo v1, "nf_language"

    const-string/jumbo v2, "Audios are null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    array-length v3, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, p0, v2

    .line 233
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    const-string/jumbo v4, "nf_language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Testing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for NCCP order number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 237
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v2, "Found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 238
    goto :goto_0

    .line 232
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 241
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string/jumbo v1, "nf_language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SHould NOT happen! Audio source NOT found for NCCP order number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAudioSourceByPosition(I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .prologue
    .line 280
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 281
    :cond_0
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAudioSourceByIndex: position invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private static getSubtitle([Lcom/netflix/mediaclient/media/Subtitle;I)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 297
    if-nez p0, :cond_1

    .line 298
    const-string/jumbo v1, "nf_language"

    const-string/jumbo v2, "Subtitles are null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :cond_1
    array-length v3, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, p0, v2

    .line 303
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    const-string/jumbo v4, "nf_language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Testing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for NCCP order number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 307
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v2, "Found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 308
    goto :goto_0

    .line 302
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 311
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const-string/jumbo v1, "nf_language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Should NOT happen! Subtitle NOT found for NCCP order number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static restoreLanguage(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Language;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 572
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 573
    const-string/jumbo v2, "CurrentNccpSubtitleIndex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 574
    const-string/jumbo v2, "CurrentNccpAudioIndex"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 575
    const-string/jumbo v3, "CurrentNccpSubtitleIndex"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 576
    const-string/jumbo v3, "CurrentNccpAudioIndex"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 577
    const-string/jumbo v3, "subtitle_visible"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 578
    const-string/jumbo v3, "audio_array"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 579
    const-string/jumbo v3, "subtitle_array"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 584
    if-eqz v10, :cond_0

    .line 585
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    move v0, v1

    .line 586
    :goto_0
    array-length v11, v3

    if-ge v0, v11, :cond_1

    .line 587
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/netflix/mediaclient/util/SubtitleUtils;->newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v11

    aput-object v11, v3, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 591
    :cond_1
    if-eqz v9, :cond_3

    .line 592
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 593
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 594
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/netflix/mediaclient/media/AudioSource;->restore(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v6

    aput-object v6, v0, v1

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 598
    :goto_2
    new-instance v0, Lcom/netflix/mediaclient/media/Language;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/media/Language;-><init>([Lcom/netflix/mediaclient/media/AudioSource;I[Lcom/netflix/mediaclient/media/Subtitle;IZ)V

    .line 599
    iput v8, v0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 600
    iput v7, v0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 602
    return-object v0

    :cond_3
    move-object v1, v6

    goto :goto_2
.end method

.method private updateUsedSubtitles(Lcom/netflix/mediaclient/media/AudioSource;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle off is allowed for audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Add to list of used subtitles."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_b

    .line 370
    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    .line 371
    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 372
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 373
    const-string/jumbo v4, "nf_language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is allowed for audio "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Add to subtitle spinner."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_4
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/media/Language;->countAllowedSubtitles([Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 358
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 359
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle off is NOT allowed for audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but there are no other ALLOWED subtitles. NCCP error. Add to subtitle spinner."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_9
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subtitle off is NOT allowed for audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    const-string/jumbo v4, "nf_language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " is not allowed for audio "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ". Skip."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 383
    :cond_b
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    .line 433
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    .line 441
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    goto :goto_0
.end method

.method public getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNccpAudioIndex()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    return v0
.end method

.method public getCurrentNccpSubtitleIndex()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    return v0
.end method

.method public getCurrentSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getSubtitle([Lcom/netflix/mediaclient/media/Subtitle;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .prologue
    .line 324
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get selected audio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public getUsedSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v2, "nf_language"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLanguageSwitchEnabled mSubtitles count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 215
    :goto_1
    return v0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const-string/jumbo v2, "nf_language"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLanguageSwitchEnabled mAltAudios count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-le v0, v1, :cond_5

    move v0, v1

    .line 213
    goto :goto_1

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 215
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isSubtitleVisible()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    return v0
.end method

.method public restorePreviousAudio()V
    .locals 4

    .prologue
    .line 499
    iget v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    if-gez v0, :cond_0

    .line 500
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v1, "This should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getAudioSource([Lcom/netflix/mediaclient/media/AudioSource;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 503
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    const-string/jumbo v1, "nf_language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restore to previous audio in UI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_2

    .line 507
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v1, "Unable to restore to previous audio. Not allowed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    goto :goto_0
.end method

.method public restorePreviousSubtitle()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 482
    const/4 v0, 0x0

    .line 483
    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    if-le v1, v4, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/Language;->getSubtitle([Lcom/netflix/mediaclient/media/Subtitle;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    .line 486
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    const-string/jumbo v1, "nf_language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restore to previous subtitle in UI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    .line 491
    iput v4, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    .line 492
    return-void
.end method

.method public setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .prologue
    .line 338
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "nf_language"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set selected audio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/Language;->updateUsedSubtitles(Lcom/netflix/mediaclient/media/AudioSource;)V

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string/jumbo v0, "nf_language"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets selected subtitle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    .line 409
    iput-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    move-object v0, v1

    .line 420
    :goto_1
    return-object v0

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 414
    iput-object p1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_1

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    const-string/jumbo v0, "nf_language"

    const-string/jumbo v2, "We tried to select subtitle that is NOT in list of used subtitles!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 420
    goto :goto_1
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 536
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 538
    const-string/jumbo v0, "CurrentNccpAudioIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    const-string/jumbo v0, "CurrentNccpSubtitleIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 540
    const-string/jumbo v0, "PreviousNccpAudioIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 541
    const-string/jumbo v0, "PreviousNccpSubtitleIndex"

    iget v3, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 542
    const-string/jumbo v0, "subtitle_visible"

    iget-boolean v3, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 545
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 546
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 547
    iget-object v4, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/Subtitle;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    const-string/jumbo v0, "subtitle_array"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 553
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 554
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/AudioSource;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    :cond_2
    const-string/jumbo v1, "audio_array"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Language [mSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAltAudios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mAltAudios:[Lcom/netflix/mediaclient/media/AudioSource;

    .line 517
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubtitleVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/Language;->mSubtitleVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentNccpSubtitleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpSubtitleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentNccpAudioIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mCurrentNccpAudioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousNccpSubtitleIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpSubtitleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousNccpAudioIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Language;->mPreviousNccpAudioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUsedSubtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mUsedSubtitles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSelectedAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSelectedSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/Language;->mSelectedSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    return-object v0
.end method
