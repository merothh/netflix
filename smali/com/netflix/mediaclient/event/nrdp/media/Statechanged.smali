.class public Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "Statechanged.java"


# static fields
.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final TYPE:Ljava/lang/String; = "statechanged"


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "statechanged"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;->state:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;->state:I

    return-void
.end method
