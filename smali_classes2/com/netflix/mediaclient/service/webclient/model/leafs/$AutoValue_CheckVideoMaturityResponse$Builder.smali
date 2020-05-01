.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private isAppropriate:Ljava/lang/Boolean;

.field private videoId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;->videoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->videoId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;->isAppropriate()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->isAppropriate:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->videoId:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " videoId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->isAppropriate:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isAppropriate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_CheckVideoMaturityResponse;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->isAppropriate:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_CheckVideoMaturityResponse;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAppropriate(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
    .locals 0

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->isAppropriate:Ljava/lang/Boolean;

    return-object p0
.end method

.method public videoId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_CheckVideoMaturityResponse$Builder;->videoId:Ljava/lang/String;

    return-object p0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null videoId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
