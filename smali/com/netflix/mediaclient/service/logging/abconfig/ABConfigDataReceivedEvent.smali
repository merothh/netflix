.class public Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "ABConfigDataReceivedEvent.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "abConfigDataReceived"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    const-string/jumbo v0, "abTest"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;->category:Ljava/lang/String;

    const-string/jumbo v0, "abConfigDataReceived"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/abconfig/ABConfigDataReceivedEvent;->name:Ljava/lang/String;

    return-void
.end method
