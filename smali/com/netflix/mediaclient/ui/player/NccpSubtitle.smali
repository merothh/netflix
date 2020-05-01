.class public final Lcom/netflix/mediaclient/ui/player/NccpSubtitle;
.super Lcom/netflix/mediaclient/media/BaseSubtitle;
.source "NccpSubtitle.java"


# static fields
.field public static final IMPL_VALUE:I = 0x1

.field private static final TRACK_TYPE_ASSISTIVE:Ljava/lang/String; = "ASSISTIVE"

.field private static final TRACK_TYPE_FORCED_NARRATIVE_SUBTITLE:Ljava/lang/String; = "FORCED_NARRATIVE_SUBTITLE"

.field private static final TRACK_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BaseSubtitle;-><init>()V

    .line 42
    const-string/jumbo v0, "order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v0, "order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->nccpOrderNumber:I

    .line 45
    :cond_0
    const-string/jumbo v0, "canDeviceRender"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->canDeviceRender:Z

    .line 46
    const-string/jumbo v0, "id"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->id:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "language"

    const-string/jumbo v1, "en"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageCodeIso639_1:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "languageDescription"

    const-string/jumbo v1, "English"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageDescription:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "trackType"

    invoke-static {p1, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    iput v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    const-string/jumbo v1, "ASSISTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v1, "PRIMARY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    goto :goto_0

    .line 57
    :cond_4
    const-string/jumbo v1, "FORCED_NARRATIVE_SUBTITLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x6

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    goto :goto_0
.end method

.method public static final newInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static final newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/Subtitle;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;-><init>(Lorg/json/JSONObject;)V

    .line 82
    iput p1, v0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->nccpOrderNumber:I

    .line 83
    return-object v0
.end method


# virtual methods
.method public getDownloadableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    const-string/jumbo v0, "impl"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v0, "order"

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->nccpOrderNumber:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "canDeviceRender"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->canDeviceRender:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "language"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "languageDescription"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageDescription:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const/4 v0, 0x0

    .line 103
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 104
    const-string/jumbo v0, "ASSISTIVE"

    .line 109
    :cond_0
    :goto_0
    const-string/jumbo v2, "trackType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    return-object v1

    .line 106
    :cond_1
    iget v2, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    if-ne v2, v4, :cond_0

    .line 107
    const-string/jumbo v0, "PRIMARY"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NccpSubtitle[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageCodeIso639_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canDeviceRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->canDeviceRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
