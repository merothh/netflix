.class public Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "StartSessionResponseEvent.java"


# static fields
.field private static final ATTR_pairingContext:Ljava/lang/String; = "pairingContext"

.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private pairingContext:Ljava/lang/String;

.field private sid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_startSessionResponse:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getPairingContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->pairingContext:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->sid:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "pairingContext"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->getUrlDecodedString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->pairingContext:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "sid"

    const/high16 v1, -0x80000000

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->sid:I

    .line 48
    return-void
.end method
