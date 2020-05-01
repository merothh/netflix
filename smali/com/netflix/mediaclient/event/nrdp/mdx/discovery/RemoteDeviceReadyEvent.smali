.class public Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "RemoteDeviceReadyEvent.java"


# static fields
.field private static final ATTR_dialUsn:Ljava/lang/String; = "dialUsn"

.field private static final ATTR_launchStatus:Ljava/lang/String; = "launchStatus"

.field private static final ATTR_uuid:Ljava/lang/String; = "uuid"

.field private static final DIALUSN_PREFIX:Ljava/lang/String; = "uuid:"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private mDialUsn:Ljava/lang/String;

.field private mLaunchStatus:I

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_discovery_remoteDeviceReady:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getDialUsn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchStatus()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mLaunchStatus:I

    return v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "dialUsn"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    const-string/jumbo v0, "launchStatus"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mLaunchStatus:I

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mDialUsn:Ljava/lang/String;

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->mUuid:Ljava/lang/String;

    :cond_0
    return-void
.end method
