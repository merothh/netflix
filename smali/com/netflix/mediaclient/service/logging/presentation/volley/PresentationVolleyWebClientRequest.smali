.class public abstract Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClientRequest;
.super Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;
.source "PresentationVolleyWebClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_presentation"


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/volley/VolleyWebClientRequest;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "post"

    return-object v0
.end method

.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClientRequest;->getCurrentNetflixId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/presentation/volley/PresentationVolleyWebClientRequest;->storeReqNetflixId(Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_presentation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PresentationVolleyWebClientRequest URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method
