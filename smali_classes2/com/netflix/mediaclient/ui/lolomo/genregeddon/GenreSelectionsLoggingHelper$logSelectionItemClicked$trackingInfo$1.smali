.class public final Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenreSelectionsLoggingHelper$logSelectionItemClicked$trackingInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KT;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenreSelectionsLoggingHelper$logSelectionItemClicked$trackingInfo$1;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lorg/json/JSONObject;
    .locals 3

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenreSelectionsLoggingHelper$logSelectionItemClicked$trackingInfo$1;->a:Ljava/lang/String;

    const-string v2, "lolomo"

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "all"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenreSelectionsLoggingHelper$logSelectionItemClicked$trackingInfo$1;->a:Ljava/lang/String;

    :goto_0
    const-string v2, "genreId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenreSelectionsLoggingHelper$logSelectionItemClicked$trackingInfo$1;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
