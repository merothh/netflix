.class public Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ABConfigDataLoadedEvent.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "abConfigDataLoaded"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    const-string/jumbo v0, "abTest"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;->category:Ljava/lang/String;

    const-string/jumbo v0, "abConfigDataLoaded"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataLoadedEvent;->name:Ljava/lang/String;

    return-void
.end method
