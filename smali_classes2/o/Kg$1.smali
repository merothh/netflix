.class Lo/Kg$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kg;->a(Landroid/content/Intent;)Lcom/netflix/cl/model/TrackingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Kg;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;


# direct methods
.method constructor <init>(Lo/Kg;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lo/Kg$1;->a:Lo/Kg;

    iput-object p2, p0, Lo/Kg$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object p3, p0, Lo/Kg$1;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    iget-object v1, p0, Lo/Kg$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const-string v2, "trackId"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lo/Kg$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "genreId"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    iget-object v1, p0, Lo/Kg$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTrackId()I

    move-result v1

    if-lez v1, :cond_1

    .line 116
    iget-object v1, p0, Lo/Kg$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTrackId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lo/Kg$1;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "listId"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    iget-object v1, p0, Lo/Kg$1;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTrackId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-object v0
.end method
