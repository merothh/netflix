.class public Lo/xW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public boxartUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "boxartUrl"
    .end annotation
.end field

.field public horzDispUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "horzDispUrl"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public isAgeProtected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAgeProtected"
    .end annotation
.end field

.field public isAutoPlayEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAutoPlayEnabled"
    .end annotation
.end field

.field public isEpisodeNumberHidden:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEpisodeNumberHidden"
    .end annotation
.end field

.field public isNextPlayableEpisode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNextPlayableEpisode"
    .end annotation
.end field

.field public isPinProtected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPinProtected"
    .end annotation
.end field

.field public isPlayable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPlayable"
    .end annotation
.end field

.field public isPlayableEpisode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPlayableEpisode"
    .end annotation
.end field

.field public isPreviewProtected:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPreviewProtected"
    .end annotation
.end field

.field public playableEndtime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableEndtime"
    .end annotation
.end field

.field public playableEpisodeNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableEpisodeNumber"
    .end annotation
.end field

.field public playableId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableId"
    .end annotation
.end field

.field public playableParentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableParentId"
    .end annotation
.end field

.field public playableParentTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableParentTitle"
    .end annotation
.end field

.field public playableRuntime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableRuntime"
    .end annotation
.end field

.field public playableSeasonNumAbbrLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableSeasonNumAbbrLabel"
    .end annotation
.end field

.field public playableSeasonNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableSeasonNumber"
    .end annotation
.end field

.field public playableTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playableTitle"
    .end annotation
.end field

.field public plyableBookmarkPos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plyableBookmarkPos"
    .end annotation
.end field

.field public seasonTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seasonTitle"
    .end annotation
.end field

.field public synopsys:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "synopsys"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public trickplayUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trickplayUrl"
    .end annotation
.end field

.field public tvCardUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tvCardUrl"
    .end annotation
.end field

.field public videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lo/xW;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;
    .locals 2

    .line 144
    sget-object v0, Lo/xW$2;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 160
    iget-object p1, p0, Lo/xW;->horzDispUrl:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lo/xW;->trickplayUrl:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lo/xW;->tvCardUrl:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lo/xW;->boxartUrl:Ljava/lang/String;

    .line 163
    :goto_0
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    iget-object p1, p0, Lo/xW;->horzDispUrl:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    iget-object p1, p0, Lo/xW;->tvCardUrl:Ljava/lang/String;

    new-array p0, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string v0, "PVideo"

    const-string v1, "even fallback url empty try tvCardUrl: %s"

    .line 167
    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    return-object p1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 124
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "."

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    :try_start_0
    const-string v0, "://"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 137
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre-app url parsing exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public b()Lo/xW;
    .locals 3

    .line 174
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 175
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    const-class v2, Lo/xW;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xW;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 107
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 110
    :cond_0
    iget-object v0, p0, Lo/xW;->horzDispUrl:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/xW;->horzDispUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 113
    :cond_1
    iget-object v0, p0, Lo/xW;->trickplayUrl:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/xW;->trickplayUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 116
    :cond_2
    iget-object v0, p0, Lo/xW;->tvCardUrl:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/xW;->tvCardUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method
