.class public Lcom/netflix/cl/model/event/session/action/SignInWithAutoLoginToken;
.super Lcom/netflix/cl/model/event/session/action/SignIn;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/action/SignIn;-><init>()V

    const-string v0, "SignInWithAutoLoginToken"

    .line 21
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/SignInWithAutoLoginToken;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/action/SignIn;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
