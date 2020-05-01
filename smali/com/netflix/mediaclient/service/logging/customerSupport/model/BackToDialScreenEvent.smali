.class public Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "BackToDialScreenEvent.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "customerSupport"

.field public static final ENTRY:Ljava/lang/String; = "entryPoint"

.field protected static final NAME:Ljava/lang/String; = "backToDialScreen"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final SOURCE:Ljava/lang/String; = "sourceModalView"


# instance fields
.field private mOrientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

.field private mReturnUsing:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

.field private mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;)V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    const-string/jumbo v0, "customerSupport"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->category:Ljava/lang/String;

    const-string/jumbo v0, "backToDialScreen"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mOrientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mReturnUsing:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sourceModalView"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mSource:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mOrientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "orientation"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mOrientation:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mReturnUsing:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "entryPoint"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/BackToDialScreenEvent;->mReturnUsing:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$ReturnToDialScreenFrom;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method
