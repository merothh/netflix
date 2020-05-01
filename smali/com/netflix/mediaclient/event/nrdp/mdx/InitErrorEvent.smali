.class public Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "InitErrorEvent.java"


# static fields
.field private static final ATTR_errorCode:Ljava/lang/String; = "errorCode"

.field private static final ATTR_errorDesc:Ljava/lang/String; = "errorDesc"

.field public static final TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;


# instance fields
.field private errorCode:I

.field private errorDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->mdx_init:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    sput-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->errorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->errorCode:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->errorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "nrdp.mdx"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "errorCode"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->errorCode:I

    .line 48
    const-string/jumbo v0, "errorDesc"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/mdx/InitErrorEvent;->errorDesc:Ljava/lang/String;

    .line 49
    return-void
.end method
