.class public Lcom/netflix/mediaclient/event/nrdp/media/SetVideoResolutionRange;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "SetVideoResolutionRange.java"


# static fields
.field public static final ATTR_ERROR:Ljava/lang/String; = "error"

.field public static final TYPE:Ljava/lang/String; = "setvideoresolutionrange"


# instance fields
.field private error:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "setvideoresolutionrange"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/SetVideoResolutionRange;->error:Z

    return-void
.end method


# virtual methods
.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/SetVideoResolutionRange;->error:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "error"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/SetVideoResolutionRange;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/SetVideoResolutionRange;->error:Z

    return-void
.end method
