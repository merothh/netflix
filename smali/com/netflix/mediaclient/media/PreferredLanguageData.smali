.class public final Lcom/netflix/mediaclient/media/PreferredLanguageData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final audioCode:Ljava/lang/String;

.field private final isAssistive:Ljava/lang/Boolean;

.field private final isClosedCaption:Ljava/lang/Boolean;

.field private final subtitleCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/netflix/mediaclient/media/PreferredLanguageData;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/netflix/mediaclient/media/PreferredLanguageData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;->copy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/media/PreferredLanguageData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/netflix/mediaclient/media/PreferredLanguageData;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/media/PreferredLanguageData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/media/PreferredLanguageData;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/mediaclient/media/PreferredLanguageData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/media/PreferredLanguageData;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAudioCode()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleCode()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAssistive()Ljava/lang/Boolean;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isClosedCaption()Ljava/lang/Boolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredLanguageData(audioCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->audioCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAssistive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isAssistive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->subtitleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isClosedCaption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/PreferredLanguageData;->isClosedCaption:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
