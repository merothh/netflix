.class public abstract Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/media/subtitles/Subtitle;


# static fields
.field protected static final ATTR_CAN_DEVICE_RENDER:Ljava/lang/String; = "canDeviceRender"

.field protected static final ATTR_FORCED_NARRATIVE:Ljava/lang/String; = "isForcedNarrative"

.field protected static final ATTR_ID:Ljava/lang/String; = "id"

.field protected static final ATTR_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final ATTR_LANGUAGE_DESCRIPTION:Ljava/lang/String; = "languageDescription"

.field protected static final ATTR_NONE_TRACK:Ljava/lang/String; = "isNoneTrack"

.field public static final ATTR_ORDER:Ljava/lang/String; = "order"

.field protected static final ATTR_SELECTED:Ljava/lang/String; = "selected"

.field protected static final ATTR_TRACK_TYPE:Ljava/lang/String; = "trackType"

.field public static final IMPL:Ljava/lang/String; = "impl"


# instance fields
.field protected canDeviceRender:Z

.field protected id:Ljava/lang/String;

.field protected isForcedNarrative:Z

.field protected isNone:Z

.field protected languageCodeBcp47:Ljava/lang/String;

.field protected languageDescription:Ljava/lang/String;

.field protected nccpOrderNumber:I

.field protected trackType:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDeviceRender()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->canDeviceRender:Z

    return v0
.end method

.method public compareTo(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->isForcedNarrative:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->isNone:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 138
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->isForcedNarrative:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->isNone:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageDescription:Ljava/lang/String;

    if-nez v1, :cond_4

    return v0

    .line 147
    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return v2

    .line 151
    :cond_5
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageDescription:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_6

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageDescription:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_6
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->compareTo(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 211
    :cond_1
    instance-of v2, p1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-nez v2, :cond_2

    return v1

    .line 214
    :cond_2
    check-cast p1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 215
    iget v2, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->nccpOrderNumber:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getNccpOrderNumber()I

    move-result p1

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeBcp47()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageCodeBcp47:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNccpOrderNumber()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->nccpOrderNumber:I

    return v0
.end method

.method public getTrackType()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->trackType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->nccpOrderNumber:I

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isCC()Z
    .locals 2

    .line 171
    iget v0, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->trackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageCodeBcp47="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageCodeBcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDeviceRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->canDeviceRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
