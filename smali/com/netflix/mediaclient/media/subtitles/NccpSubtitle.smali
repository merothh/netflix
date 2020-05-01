.class public final Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;
.super Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;
.source ""


# static fields
.field public static final IMPL_VALUE:I = 0x1

.field private static final TRACK_TYPE_ASSISTIVE:Ljava/lang/String; = "ASSISTIVE"

.field private static final TRACK_TYPE_FORCED_NARRATIVE_SUBTITLE:Ljava/lang/String; = "FORCED_NARRATIVE_SUBTITLE"

.field private static final TRACK_TYPE_NONE:Ljava/lang/String; = "None"

.field private static final TRACK_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"


# direct methods
.method protected constructor <init>(Lo/sQ;I)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;-><init>()V

    .line 75
    iput p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->nccpOrderNumber:I

    .line 76
    invoke-virtual {p1}, Lo/sQ;->o()Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->canDeviceRender:Z

    .line 77
    invoke-virtual {p1}, Lo/sQ;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->id:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lo/sQ;->h()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "en"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/sQ;->h()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageCodeBcp47:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lo/sQ;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "English"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lo/sQ;->e()Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageDescription:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lo/sQ;->c()Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {p1}, Lo/sQ;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isForcedNarrative:Z

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->id:Ljava/lang/String;

    const-string v0, "None"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isNone:Z

    const/4 p1, 0x6

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 87
    iput p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    goto :goto_2

    :cond_2
    const-string v0, "ASSISTIVE"

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x2

    .line 89
    iput p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    goto :goto_2

    :cond_3
    const-string v0, "PRIMARY"

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x1

    .line 91
    iput p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    goto :goto_2

    :cond_4
    const-string v0, "FORCED_NARRATIVE_SUBTITLE"

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 93
    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    .line 96
    :cond_5
    :goto_2
    iget-boolean p2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isForcedNarrative:Z

    if-eqz p2, :cond_6

    .line 97
    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    .line 99
    :cond_6
    iget-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isNone:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    .line 100
    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    :cond_7
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;-><init>()V

    const-string v0, "order"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->nccpOrderNumber:I

    :cond_0
    const/4 v0, 0x0

    const-string v1, "canDeviceRender"

    .line 45
    invoke-static {p1, v1, v0}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->canDeviceRender:Z

    const/4 v1, 0x0

    const-string v2, "id"

    .line 46
    invoke-static {p1, v2, v1}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->id:Ljava/lang/String;

    const-string v2, "language"

    const-string v3, "en"

    .line 47
    invoke-static {p1, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageCodeBcp47:Ljava/lang/String;

    const-string v2, "languageDescription"

    const-string v3, "English"

    .line 48
    invoke-static {p1, v2, v3}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageDescription:Ljava/lang/String;

    const-string v2, "trackType"

    .line 49
    invoke-static {p1, v2, v1}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isForcedNarrative"

    .line 50
    invoke-static {p1, v2, v0}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isForcedNarrative:Z

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->id:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isNone:Z

    const/4 p1, 0x6

    if-nez v1, :cond_1

    .line 56
    iput v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    goto :goto_0

    :cond_1
    const-string v0, "ASSISTIVE"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    goto :goto_0

    :cond_2
    const-string v0, "PRIMARY"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    goto :goto_0

    :cond_3
    const-string v0, "FORCED_NARRATIVE_SUBTITLE"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    .line 65
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isForcedNarrative:Z

    if-eqz v0, :cond_5

    .line 66
    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    .line 68
    :cond_5
    iget-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isNone:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x7

    .line 69
    iput p1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    :cond_6
    return-void
.end method

.method public static final newInstance(Lo/sQ;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;-><init>(Lo/sQ;I)V

    return-object v0
.end method

.method public static final newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static final newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;-><init>(Lorg/json/JSONObject;)V

    .line 124
    iput p1, v0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->nccpOrderNumber:I

    return-object v0
.end method


# virtual methods
.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isForcedNarrativeOrNone()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isForcedNarrative:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isNone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    const-string v2, "impl"

    .line 141
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    iget-object v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    iget v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->nccpOrderNumber:I

    const-string v3, "order"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->canDeviceRender:Z

    const-string v3, "canDeviceRender"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    iget-object v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageCodeBcp47:Ljava/lang/String;

    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    iget-object v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageDescription:Ljava/lang/String;

    const-string v3, "languageDescription"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->isForcedNarrative:Z

    const-string v3, "isForcedNarrative"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    iget v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v1, "ASSISTIVE"

    goto :goto_0

    .line 154
    :cond_0
    iget v2, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    if-ne v2, v1, :cond_1

    const-string v1, "PRIMARY"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "trackType"

    .line 157
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NccpSubtitle[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageCodeBcp47="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageCodeBcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDeviceRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->canDeviceRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/NccpSubtitle;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
