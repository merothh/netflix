.class public final Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/LanguageChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionReport"
.end annotation


# instance fields
.field private audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

.field private selectedLanguage:Lo/afA$Activity;

.field private subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;


# direct methods
.method public constructor <init>(Lo/afA$Activity;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;->USER_OVERRIDE:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->selectedLanguage:Lo/afA$Activity;

    return-void
.end method


# virtual methods
.method public getAudioLanguageSelectionOrigin()Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    return-object v0
.end method

.method public getSelectedLanguage()Lo/afA$Activity;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->selectedLanguage:Lo/afA$Activity;

    return-object v0
.end method

.method public getSubtitleLanguageSelectionOrigin()Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    return-object v0
.end method

.method public setAudioLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    return-void
.end method

.method public setSubtitleLanguageSelectionOrigin(Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 115
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    if-eqz v1, :cond_0

    const-string v1, "subtitleOrigin"

    .line 119
    iget-object v2, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    if-eqz v1, :cond_1

    const-string v1, "audioOrigin"

    .line 123
    iget-object v2, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->selectedLanguage:Lo/afA$Activity;

    if-eqz v1, :cond_2

    const-string v1, "selectedLanguage"

    .line 127
    iget-object v2, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->selectedLanguage:Lo/afA$Activity;

    invoke-virtual {v2}, Lo/afA$Activity;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionReport{subtitleLanguageSelectionOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->subtitleLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioLanguageSelectionOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->audioLanguageSelectionOrigin:Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;->selectedLanguage:Lo/afA$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
