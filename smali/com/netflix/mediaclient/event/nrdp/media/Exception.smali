.class public Lcom/netflix/mediaclient/event/nrdp/media/Exception;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "Exception.java"


# static fields
.field private static final ATTR_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final TYPE:Ljava/lang/String; = "exception"


# instance fields
.field private exception:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "exception"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Exception;->exception:Ljava/lang/String;

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "exception"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Exception;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Exception;->exception:Ljava/lang/String;

    .line 41
    return-void
.end method
