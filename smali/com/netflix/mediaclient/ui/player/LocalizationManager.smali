.class public Lcom/netflix/mediaclient/ui/player/LocalizationManager;
.super Ljava/lang/Object;
.source "LocalizationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf-l10n"


# instance fields
.field private audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

.field private mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

.field private userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

.field private userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->getSelectedLanguage(Landroid/content/Context;)Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->toLanguageChoice(Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;[Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;)Lcom/netflix/mediaclient/util/LanguageChoice;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->init([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/util/LanguageChoice;)V

    return-void
.end method

.method public constructor <init>([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/util/LanguageChoice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->init([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/util/LanguageChoice;)V

    return-void
.end method

.method private findInitialAudio()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v1, v1

    if-ge v1, v2, :cond_1

    const-string/jumbo v1, "nf-l10n"

    const-string/jumbo v2, "No audio source found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v1, v1

    if-ge v1, v2, :cond_2

    const-string/jumbo v1, "nf-l10n"

    const-string/jumbo v2, "No defaults found. Return null to keep initial audio source."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getAudioTrackId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "nf-l10n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio source track id is NULL for default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->getAudioSourceById(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v2, "nf-l10n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", but source with it not found!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf-l10n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initial audio source defined by defauls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private findInitialSubtitle()Lcom/netflix/mediaclient/media/Subtitle;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v1, v1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v1, v1

    if-ge v1, v2, :cond_2

    const-string/jumbo v1, "nf-l10n"

    const-string/jumbo v2, "No defaults found. No subtitles."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->getSubtitleTrackId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf-l10n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle track id is NULL for default, no subtitles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->getSubtitleById(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v2, "nf-l10n"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", but soubtitle with it not found!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf-l10n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initial subtitle defined by defauls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getAudioSourceById(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Audio track id can NOT be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSubtitleById(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subtitle id can NOT be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public findInitialLanguage()Lcom/netflix/mediaclient/util/LanguageChoice;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "We found user preference for subtitle!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf-l10n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "We found user preference for audio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf-l10n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "We found user preference for subtitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "Using user preference for language"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/LanguageChoice;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    :goto_1
    return-object v0

    :cond_3
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "No user preferences for subtitle."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "Using user preference is not allowed, go for NCCP default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/LanguageChoice;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "No user preference for audio!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    if-nez v1, :cond_6

    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "Initial audio not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/LanguageChoice;

    invoke-direct {v0, v2, v2}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "nf-l10n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We found user preference for subtitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v2, "Using user preference for language"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/LanguageChoice;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v2, "Using user preference is not allowed, go for NCCP default"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/LanguageChoice;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v2, "No user preferences for audio and subtitle. Use NCCP defaults."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/netflix/mediaclient/util/LanguageChoice;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->findInitialSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/util/LanguageChoice;-><init>(Lcom/netflix/mediaclient/media/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V

    goto/16 :goto_1
.end method

.method public getAudioSources()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    return-object v0
.end method

.method public init([Lcom/netflix/mediaclient/media/Subtitle;[Lcom/netflix/mediaclient/media/AudioSource;[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Lcom/netflix/mediaclient/util/LanguageChoice;)V
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "nf-l10n"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/media/AudioSource;->dumpLog([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)V

    const-string/jumbo v0, "nf-l10n"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->dumpLog([Lcom/netflix/mediaclient/media/Subtitle;Ljava/lang/String;)V

    const-string/jumbo v0, "nf-l10n"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->dumpLog([Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Ljava/lang/String;)V

    if-nez p1, :cond_3

    new-array v0, v1, [Lcom/netflix/mediaclient/media/Subtitle;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    :goto_0
    if-nez p2, :cond_4

    new-array v0, v1, [Lcom/netflix/mediaclient/media/AudioSource;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    :goto_1
    if-nez p3, :cond_5

    new-array v0, v1, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf-l10n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User choice for language was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->getSubtitleById(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf-l10n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User choice for subtitle was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/LanguageChoice;->getSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/Subtitle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". In movie medatadata we found match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceSubtitle:Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->getAudioSourceById(Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nf-l10n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User choice for audio was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netflix/mediaclient/util/LanguageChoice;->getAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". In movie medatadata we found match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->userChoiceAudio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    return-void

    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string/jumbo v0, "nf-l10n"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->dumpLog([Lcom/netflix/mediaclient/media/Subtitle;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->subtitles:[Lcom/netflix/mediaclient/media/Subtitle;

    goto/16 :goto_0

    :cond_4
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string/jumbo v0, "nf-l10n"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/media/AudioSource;->dumpLog([Lcom/netflix/mediaclient/media/AudioSource;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->audioSources:[Lcom/netflix/mediaclient/media/AudioSource;

    goto/16 :goto_1

    :cond_5
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string/jumbo v0, "nf-l10n"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;->dumpLog([Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/LocalizationManager;->mDefaults:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "User choice for subtitle did not existed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "User choice for audio did not existed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string/jumbo v0, "nf-l10n"

    const-string/jumbo v1, "User choice for audio AND subtitle did not existed!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
