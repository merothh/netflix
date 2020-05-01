.class public Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "DeviceFoundEvent.java"


# static fields
.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicefound:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getRemoteDevice()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->toRemoteDevice(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->device:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    .line 44
    return-void
.end method
