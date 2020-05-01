.class public final Lcom/netflix/mediaclient/media/LanguageChoice;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;,
        Lcom/netflix/mediaclient/media/LanguageChoice$LanguageSelectionOrigin;
    }
.end annotation


# instance fields
.field private audio:Lcom/netflix/mediaclient/media/AudioSource;

.field private selectionReport:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

.field private subtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->subtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 34
    iput-object p2, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->audio:Lcom/netflix/mediaclient/media/AudioSource;

    .line 35
    iput-object p3, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->selectionReport:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    return-void
.end method


# virtual methods
.method public getAudio()Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->audio:Lcom/netflix/mediaclient/media/AudioSource;

    return-object v0
.end method

.method public getSelectionReport()Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->selectionReport:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    return-object v0
.end method

.method public getSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->subtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LanguageChoice{subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->subtitle:Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->audio:Lcom/netflix/mediaclient/media/AudioSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectionReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/LanguageChoice;->selectionReport:Lcom/netflix/mediaclient/media/LanguageChoice$SelectionReport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
