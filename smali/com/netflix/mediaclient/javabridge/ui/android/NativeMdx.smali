.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeMdx.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;


# static fields
.field protected static final MDX_EVENT_DATA_FIELD_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field mDiscovery:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;

.field mPairing:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;

.field private mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

.field mSession:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;-><init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mDiscovery:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;-><init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPairing:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;

    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;-><init>(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mSession:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method private handleEvents(Lorg/json/JSONObject;)V
    .locals 4

    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: InitEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: InitErrorEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: StateEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/StateEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: DeviceLostEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceLostEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: DeviceFoundEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/DeviceFoundEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: RemoteDeviceReadyEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/discovery/RemoteDeviceReadyEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: PairingResponseEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: RegPairResponseEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: PairingDeletedEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: StartSessionResponseEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: MessageDeliveredEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: MessagingErrorEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: SessionEndedEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "NativeMdx: TargetRestartingEvent event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/TargetRestartingEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NativeMdx: MessageEvent event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    goto/16 :goto_0
.end method

.method private invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to invokeNrdMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearDeviceMap()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/ClearDeviceMap;

    invoke-direct {v0}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/ClearDeviceMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public configure(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/Configure;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/Configure;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public exit()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/Exit;

    invoke-direct {v0}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/Exit;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public getDiscovery()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/DiscoveryController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mDiscovery:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$DiscoveryControllerImpl;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mdx"

    return-object v0
.end method

.method public getPairing()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPairing:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$PairingControllerImpl;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mSession:Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx$SessionControllerImpl;

    return-object v0
.end method

.method public init(Ljava/util/Map;ZLorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/Init;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/Init;-><init>(ZLjava/util/Map;ZLorg/json/JSONArray;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public pingNccp()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/registration/Ping;

    invoke-direct {v0}, Lcom/netflix/mediaclient/javabridge/invoke/registration/Ping;-><init>()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->invokeNrdMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    return-void
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nf_mdx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NativeMdx: processUpdate: handle type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "PropertyUpdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_mdx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NativeMdx: processUpdate: handle prop update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "properties"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string/jumbo v3, "remoteDeviceMap"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "nf_mdx"

    const-string/jumbo v4, "NativeMdx: property update for remoteDeviceMap"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

    if-eqz v3, :cond_8

    const-string/jumbo v3, "remoteDeviceMap"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "nf_mdx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NativeMdx: Devices found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->toRemoteDevice(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "nf_mdx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NativeMdx: Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v5, :cond_6

    const-string/jumbo v6, "nf_mdx"

    const-string/jumbo v7, "NativeMdx: add to list"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

    invoke-interface {v2, v4}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;->onRemoteDeviceMap(Ljava/util/ArrayList;)V

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    const-string/jumbo v3, "isReady"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

    const-string/jumbo v4, "isReady"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;->onIsReady(Z)V

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v3, "Event"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v2, "nf_mdx"

    const-string/jumbo v3, "NativeMdx: processUpdate: handle event"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "data"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->handleEvents(Lorg/json/JSONObject;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "nf_mdx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NativeMdx: processUpdate: type not handled ??? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "nf_mdx"

    const-string/jumbo v3, "NativeMdx: processUpdate: Failed"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public removePropertyUpdateListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

    return-void
.end method

.method public setPropertyUpdateListener(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeMdx;->mPropertyListener:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController$PropertyUpdateListener;

    return-void
.end method
