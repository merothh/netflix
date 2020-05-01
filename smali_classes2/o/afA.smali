.class public final Lo/afA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afA$Activity;
    }
.end annotation


# direct methods
.method private static a([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 4

    .line 321
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Ljava/lang/String;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 4

    .line 297
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 299
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lo/afA$Activity;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/LanguageChoice;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    .line 112
    iget-wide v3, p0, Lo/afA$Activity;->a:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "nf_loc"

    if-eqz p3, :cond_2

    .line 114
    array-length v8, p3

    if-ge v8, v6, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    aget-object v1, p3, v5

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getCreationTimeInMs()J

    move-result-wide v1

    new-array v8, v6, [Ljava/lang/Object;

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "Manifest creation date %d"

    invoke-static {v7, v9, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string v8, "No defaults! User override"

    .line 115
    invoke-static {v7, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    const-string v5, "Last user override %d"

    invoke-static {v7, v5, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    const-string p0, "Manifest defaults are newer than last user selection, use them..."

    .line 123
    invoke-static {v7, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 127
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;-><init>(Lo/afA$Activity;)V

    const-string v1, "Manifest defaults are older than last user selection, use user overrides..."

    .line 128
    invoke-static {v7, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0, p2, p3, v0}, Lo/afA;->e(Lo/afA$Activity;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p2

    .line 130
    invoke-static {p0, p1, p2, p3, v0}, Lo/afA;->e(Lo/afA$Activity;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p0

    .line 131
    new-instance p1, Lcom/netflix/mediaclient/media/LanguageChoice;

    invoke-direct {p1, p0, p2, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Lo/afA$Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "prefs_user_selected_language"

    .line 70
    invoke-static {p0, v1, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 73
    :cond_2
    :goto_0
    new-instance p0, Lo/afA$Activity;

    invoke-direct {p0, p1, p2, p3, p4}, Lo/afA$Activity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-object p0

    .line 80
    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance p0, Lo/afA$Activity;

    invoke-direct {p0, v1}, Lo/afA$Activity;-><init>(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p0, p1, p2}, Lo/afA$Activity;->c(Ljava/lang/String;I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 86
    invoke-virtual {p0, p3, p4}, Lo/afA$Activity;->b(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "nf_loc"

    const-string p3, "Unable to load used selection!"

    .line 90
    invoke-static {p2, p0, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private static d([Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 2

    if-eqz p1, :cond_1

    .line 287
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 291
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/afA;->a([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Ljava/lang/String;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "nf_loc"

    const-string p1, "Default order info in manifest does not found, this should not happen!"

    .line 288
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lo/afA$Activity;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 7

    .line 237
    iget-object v0, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nf_loc"

    if-eqz v0, :cond_0

    const-string p0, "Audio was not selected, use manifest override..."

    .line 238
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p3, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 240
    invoke-static {p1, p2}, Lo/afA;->e([Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 244
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 246
    iget-object v5, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v5

    iget v6, p0, Lo/afA$Activity;->e:I

    if-ne v5, v6, :cond_1

    .line 256
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p3, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    return-object v4

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "No default audio before, save this one."

    .line 260
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "Default audio track found, save this one."

    .line 263
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const-string p0, "Same audio as one for user override is not found, use one supplied by manifest."

    .line 272
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p3, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 274
    invoke-static {p1, p2}, Lo/afA;->e([Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p0

    return-object p0

    .line 280
    :cond_5
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p3, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    return-object v0
.end method

.method private static e([Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    if-eqz p1, :cond_1

    .line 311
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/afA;->a([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "nf_loc"

    const-string p1, "Default order info in manifest does not found, this should not happen!"

    .line 312
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lo/afA$Activity;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 7

    .line 155
    iget-object v0, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_loc"

    if-eqz v0, :cond_1

    const-string p0, "Subtitle is off..."

    .line 156
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "findSubtitleForUserOverride:: off subtitle is allowed, use it."

    .line 158
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p4, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    return-object v1

    :cond_0
    const-string p0, "findSubtitleForUserOverride:: off subtitle is NOT allowed, use manifest default"

    .line 162
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p4, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 164
    invoke-static {p1, p3}, Lo/afA;->d([Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p0

    return-object p0

    .line 169
    :cond_1
    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    .line 171
    iget-object v5, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    invoke-interface {v4}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    invoke-interface {v4}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getTrackType()I

    move-result v5

    iget v6, p0, Lo/afA$Activity;->b:I

    if-ne v5, v6, :cond_3

    const-string v5, "findSubtitleForUserOverride:: exact match, use it if it is allowed!"

    .line 178
    invoke-static {v2, v5}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p2, v4}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "findSubtitleForUserOverride:: exact match, it is allowed, use it!"

    .line 181
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p4, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    return-object v4

    :cond_2
    const-string v4, "findSubtitleForUserOverride:: exact match, it is NOT allowed, skip it!"

    .line 185
    invoke-static {v2, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "No default subtitle before, save this one."

    .line 190
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    :cond_4
    invoke-interface {v4}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getTrackType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const-string v1, "Default subtitle track found, save this one."

    .line 193
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v4

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_8

    .line 205
    invoke-virtual {p2, v1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "findSubtitleForUserOverride:: default subtitle match, it is allowed, use it!"

    .line 206
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p4, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    return-object v1

    :cond_7
    const-string p0, "findSubtitleForUserOverride:: default subtitle match, it is NOT allowed, skip it!"

    .line 210
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string p0, "Same subtitle as one for user override is not found, use one supplied by manifest."

    .line 214
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object p0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {p4, p0}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 216
    invoke-static {p1, p3}, Lo/afA;->d([Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lo/afA$Activity;

    invoke-direct {v0, p1}, Lo/afA$Activity;-><init>(Lcom/netflix/mediaclient/media/Language;)V

    :try_start_0
    const-string p1, "prefs_user_selected_language"

    .line 51
    invoke-virtual {v0}, Lo/afA$Activity;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "nf_loc"

    const-string v1, "Unable to save use selection!"

    .line 53
    invoke-static {v0, p0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method
