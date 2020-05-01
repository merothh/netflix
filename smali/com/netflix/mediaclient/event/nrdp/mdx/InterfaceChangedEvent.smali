.class public Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;
.super Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;
.source "InterfaceChangedEvent.java"


# static fields
.field private static final ATTR_connected:Ljava/lang/String; = "connected"

.field private static final ATTR_interface:Ljava/lang/String; = "interface"

.field private static final ATTR_ipaddress:Ljava/lang/String; = "ipaddress"

.field private static final ATTR_ssid:Ljava/lang/String; = "ssid"

.field public static final TYPE:Ljava/lang/String; = "interfacechange"


# instance fields
.field private connected:Z

.field private ipAddress:Ljava/lang/String;

.field private networkInterface:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "interfacechange"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/BaseUIEvent;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->connected:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->networkInterface:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->ipAddress:Ljava/lang/String;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->ssid:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->ssid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "connected"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->connected:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "interface"

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->networkInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ipaddress"

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ssid"

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/mdx/InterfaceChangedEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "IMdx"

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method
