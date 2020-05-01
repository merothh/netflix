.class public Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "SessionEndedEvent.java"


# static fields
.field private static final ATTR_sid:Ljava/lang/String; = "sid"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private sid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_session_sessionended:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

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
    .line 62
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->sid:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "sid"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->sid:I

    .line 44
    return-void
.end method
