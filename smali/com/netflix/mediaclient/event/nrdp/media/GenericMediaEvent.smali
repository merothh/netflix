.class public Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "GenericMediaEvent.java"


# static fields
.field public static final bufferingComplete:Ljava/lang/String; = "bufferingComplete"

.field public static final endOfStream:Ljava/lang/String; = "endOfStream"

.field public static final underflow:Ljava/lang/String; = "underflow"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getJSON()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
