.class public Lo/afx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Lcom/netflix/mediaclient/media/AudioSource;

.field private e:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

.field private h:Lcom/netflix/mediaclient/media/AudioSource;

.field private i:Ljava/lang/Boolean;

.field private j:Lo/afA$Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;ZLcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p6, :cond_0

    .line 65
    invoke-virtual {p6}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getAudioCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/afx;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {p6}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->getSubtitleCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/afx;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {p6}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/afx;->f:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p6}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption()Ljava/lang/Boolean;

    move-result-object p6

    iput-object p6, p0, Lo/afx;->i:Ljava/lang/Boolean;

    :cond_0
    const/4 p6, 0x0

    if-eqz p5, :cond_3

    const/4 p5, 0x3

    .line 73
    iget-object p6, p0, Lo/afx;->c:Ljava/lang/String;

    if-eqz p6, :cond_1

    .line 74
    iget-object v0, p0, Lo/afx;->f:Ljava/lang/Boolean;

    invoke-static {p6, v0, p3}, Lo/afx;->b(Ljava/lang/String;Ljava/lang/Boolean;[Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p6

    if-eqz p6, :cond_1

    .line 76
    invoke-virtual {p6}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result p5

    :cond_1
    const/4 p6, 0x0

    .line 80
    iget-object v0, p0, Lo/afx;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 81
    iget-object v1, p0, Lo/afx;->i:Ljava/lang/Boolean;

    invoke-static {v0, v1, p2}, Lo/afx;->d(Ljava/lang/String;Ljava/lang/Boolean;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    invoke-interface {v0}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getTrackType()I

    move-result p6

    .line 86
    :cond_2
    iget-object v0, p0, Lo/afx;->c:Ljava/lang/String;

    iget-object v1, p0, Lo/afx;->b:Ljava/lang/String;

    invoke-static {p1, v0, p5, v1, p6}, Lo/afA;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Lo/afA$Activity;

    move-result-object p1

    iput-object p1, p0, Lo/afx;->j:Lo/afA$Activity;

    .line 87
    iget-object p1, p0, Lo/afx;->j:Lo/afA$Activity;

    invoke-static {p1, p2, p3, p4}, Lo/afA;->b(Lo/afA$Activity;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/media/LanguageChoice;

    move-result-object p6

    .line 90
    :cond_3
    invoke-virtual {p0, p2, p3, p4, p6}, Lo/afx;->b([Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/media/LanguageChoice;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Boolean;[Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    const/4 v0, 0x0

    .line 348
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 349
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 353
    :cond_1
    aget-object p0, p2, v0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private b()Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 5

    .line 251
    iget-object v0, p0, Lo/afx;->a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 255
    :cond_0
    iget-object v0, p0, Lo/afx;->e:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v3, v0

    const-string v4, "nf-l10n"

    if-ge v3, v1, :cond_1

    const-string v0, "No defaults found. No subtitles."

    .line 256
    invoke-static {v4, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 260
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "none"

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    invoke-direct {p0, v0}, Lo/afx;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    if-nez v1, :cond_3

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but soubtitle with it not found!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lo/afx;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isCC()Z

    move-result v0

    iget-object v2, p0, Lo/afx;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "Initial subtitle chosed with defaults but a different CC type"

    .line 277
    invoke-static {v4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/afx;->i:Ljava/lang/Boolean;

    iget-object v2, p0, Lo/afx;->a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-static {v0, v1, v2}, Lo/afx;->d(Ljava/lang/String;Ljava/lang/Boolean;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    :goto_1
    return-object v2
.end method

.method private d()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 5

    .line 292
    iget-object v0, p0, Lo/afx;->d:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "nf-l10n"

    if-ge v0, v1, :cond_0

    const-string v0, "No audio source found!"

    .line 293
    invoke-static {v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 297
    :cond_0
    iget-object v0, p0, Lo/afx;->e:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v4, v0

    if-ge v4, v1, :cond_1

    const-string v0, "No defaults found. Return null to keep initial audio source."

    .line 298
    invoke-static {v3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 302
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio source track id is NULL for default: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/afx;->e:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 308
    :cond_2
    invoke-direct {p0, v0}, Lo/afx;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    if-nez v1, :cond_3

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default exist: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but source with it not found!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method private d(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 332
    :goto_0
    iget-object v1, p0, Lo/afx;->d:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 333
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object p1, p0, Lo/afx;->d:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 329
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio track id can NOT be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/Boolean;[Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    const/4 v0, 0x0

    .line 386
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 387
    aget-object v1, p2, v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object v2, p2, v0

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isCC()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 389
    :cond_0
    aget-object p0, p2, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 370
    :goto_0
    iget-object v1, p0, Lo/afx;->a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 371
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object p1, p0, Lo/afx;->a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 367
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subtitle id can NOT be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/media/LanguageChoice;
    .locals 6

    .line 175
    iget-object v0, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const-string v1, "nf-l10n"

    if-eqz v0, :cond_0

    const-string v0, "We found user preference for subtitle!"

    .line 176
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    iget-object v2, p0, Lo/afx;->j:Lo/afA$Activity;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;-><init>(Lo/afA$Activity;)V

    .line 180
    iget-object v2, p0, Lo/afx;->h:Lcom/netflix/mediaclient/media/AudioSource;

    const-string v3, "Using user preference for language"

    const-string v4, "Using user preference is not allowed, go for NCCP default"

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "No user preferences for subtitle."

    .line 191
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    iget-object v2, p0, Lo/afx;->h:Lcom/netflix/mediaclient/media/AudioSource;

    iget-object v5, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 197
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 198
    new-instance v1, Lcom/netflix/mediaclient/media/LanguageChoice;

    iget-object v2, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    iget-object v3, p0, Lo/afx;->h:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object v1

    .line 200
    :cond_2
    invoke-static {v1, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 202
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 203
    new-instance v1, Lcom/netflix/mediaclient/media/LanguageChoice;

    invoke-direct {p0}, Lo/afx;->b()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    invoke-direct {p0}, Lo/afx;->d()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object v1

    :cond_3
    const-string v2, "No user preference for audio!"

    .line 208
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v2, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 210
    invoke-direct {p0}, Lo/afx;->d()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Initial audio not found!"

    .line 212
    invoke-static {v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 214
    new-instance v1, Lcom/netflix/mediaclient/media/LanguageChoice;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object v1

    .line 217
    :cond_4
    iget-object v5, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-eqz v5, :cond_6

    .line 223
    invoke-virtual {v2, v5}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 226
    new-instance v1, Lcom/netflix/mediaclient/media/LanguageChoice;

    iget-object v3, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object v1

    .line 228
    :cond_5
    invoke-static {v1, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 230
    new-instance v1, Lcom/netflix/mediaclient/media/LanguageChoice;

    invoke-direct {p0}, Lo/afx;->b()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object v1

    :cond_6
    const-string v3, "No user preferences for audio and subtitle. Use NCCP defaults."

    .line 234
    invoke-static {v1, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 236
    sget-object v1, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->MANIFEST_DEFAULT:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V

    .line 237
    new-instance v1, Lcom/netflix/mediaclient/media/LanguageChoice;

    invoke-direct {p0}, Lo/afx;->b()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/netflix/mediaclient/media/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V

    return-object v1
.end method

.method public b([Lcom/netflix/mediaclient/media/subtitles/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/media/LanguageChoice;)V
    .locals 2

    const-string v0, "nf-l10n"

    .line 116
    invoke-static {p2, v0}, Lcom/netflix/mediaclient/media/AudioSource;->dumpLog([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)V

    .line 117
    invoke-static {p1, v0}, Lo/xL;->b([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Ljava/lang/String;)V

    .line 118
    invoke-static {p3, v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->dumpLog([Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 121
    iput-object p1, p0, Lo/afx;->a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p1, v0}, Lo/xL;->b([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lo/afx;->a:[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    :goto_0
    if-nez p2, :cond_1

    new-array p1, v1, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 128
    iput-object p1, p0, Lo/afx;->d:[Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {p2, v0}, Lcom/netflix/mediaclient/media/AudioSource;->dumpLog([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)V

    .line 131
    iput-object p2, p0, Lo/afx;->d:[Lcom/netflix/mediaclient/media/AudioSource;

    :goto_1
    if-nez p3, :cond_2

    new-array p1, v1, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    .line 135
    iput-object p1, p0, Lo/afx;->e:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    goto :goto_2

    .line 137
    :cond_2
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 138
    invoke-static {p3, v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->dumpLog([Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Ljava/lang/String;)V

    .line 139
    iput-object p3, p0, Lo/afx;->e:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    :goto_2
    if-eqz p4, :cond_5

    .line 148
    invoke-virtual {p4}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p4}, Lcom/netflix/mediaclient/media/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/afx;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    iput-object p1, p0, Lo/afx;->g:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    goto :goto_3

    :cond_3
    const-string p1, "User choice for subtitle did not existed!"

    .line 154
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_3
    invoke-virtual {p4}, Lcom/netflix/mediaclient/media/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 158
    invoke-virtual {p4}, Lcom/netflix/mediaclient/media/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/afx;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    iput-object p1, p0, Lo/afx;->h:Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_4

    :cond_4
    const-string p1, "User choice for audio did not existed!"

    .line 163
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string p1, "User choice for audio AND subtitle did not existed!"

    .line 166
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
