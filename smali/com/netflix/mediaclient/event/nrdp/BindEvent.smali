.class public Lcom/netflix/mediaclient/event/nrdp/BindEvent;
.super Lcom/netflix/mediaclient/event/nrdp/BaseNrdpEvent;
.source "BindEvent.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "bind"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "bind"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/BaseNrdpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
