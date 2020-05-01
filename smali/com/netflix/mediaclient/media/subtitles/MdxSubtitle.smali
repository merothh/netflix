.class public final Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;
.super Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;
.source ""


# static fields
.field protected static final ATTR_LABEL:Ljava/lang/String; = "label"

.field public static final IMPL_VALUE:I = 0x2


# instance fields
.field private final mSelected:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;I)V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/subtitles/BaseSubtitle;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->canDeviceRender:Z

    const-string v1, "id"

    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->id:Ljava/lang/String;

    const-string v1, "label"

    const-string v2, "English"

    .line 46
    invoke-static {p1, v1, v2}, Lo/adN;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->languageDescription:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->nccpOrderNumber:I

    const-string p2, "selected"

    const/4 v1, 0x0

    .line 48
    invoke-static {p1, p2, v1}, Lo/adN;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->mSelected:Z

    .line 49
    iput v0, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->trackType:I

    return-void
.end method

.method public static final newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;
    .locals 1

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;-><init>(Lorg/json/JSONObject;I)V

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

    const/4 v0, 0x0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->mSelected:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "impl"

    const/4 v2, 0x2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->languageDescription:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->nccpOrderNumber:I

    const-string v2, "order"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->mSelected:Z

    const-string v2, "selected"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MdxSubtitle [mSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->mSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageCodeBcp47="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->languageCodeBcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canDeviceRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->canDeviceRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/media/subtitles/MdxSubtitle;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
