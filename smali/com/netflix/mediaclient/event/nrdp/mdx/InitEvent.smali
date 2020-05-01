.class public Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "InitEvent.java"


# static fields
.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
