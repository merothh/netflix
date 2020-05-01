.class public Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "DeviceLostEvent.java"


# static fields
.field private static final ATTR_devicelist:Ljava/lang/String; = "devicelist"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private devices:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_devicelost:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getDevices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->devices:[Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 47
    const-string/jumbo v1, "devicelist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string/jumbo v1, "devicelist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->devices:[Ljava/lang/String;

    .line 51
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->devices:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->devices:[Ljava/lang/String;

    .line 59
    :cond_1
    return-void
.end method
