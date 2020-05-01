.class public Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# instance fields
.field public audioLanguageCodeIso639_1:Ljava/lang/String;

.field public audioTrackType:I

.field public subtitleLanguageCodeIso639_1:Ljava/lang/String;

.field public subtitleTrackType:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Selected language is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->timestamp:J

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Selected audio is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioTrackType:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageCodeIso639_1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    invoke-interface {v0}, Lcom/netflix/mediaclient/media/Subtitle;->getTrackType()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleTrackType:I

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Audio must be selected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->timestamp:J

    iput-object p1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    iput p2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioTrackType:I

    iput-object p3, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    iput p4, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleTrackType:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "JSON is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "audioLanguageCodeIso639_1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    const-string/jumbo v0, "audioTrackType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioTrackType:I

    const-string/jumbo v0, "subtitleLanguageCodeIso639_1"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    const-string/jumbo v0, "subtitleTrackType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleTrackType:I

    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->timestamp:J

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "timestamp"

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "audioLanguageCodeIso639_1"

    iget-object v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "audioTrackType"

    iget v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioTrackType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "subtitleLanguageCodeIso639_1"

    iget-object v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "subtitleTrackType"

    iget v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleTrackType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SelectedLanguage{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audioLanguageCodeIso639_1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioLanguageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audioTrackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->audioTrackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subtitleLanguageCodeIso639_1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleLanguageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subtitleTrackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/util/l10n/LanguageUtils$SelectedLanguage;->subtitleTrackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
