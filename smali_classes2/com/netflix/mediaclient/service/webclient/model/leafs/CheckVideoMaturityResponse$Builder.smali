.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse;
.end method

.method public abstract isAppropriate(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
.end method

.method public abstract videoId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/CheckVideoMaturityResponse$Builder;
.end method
