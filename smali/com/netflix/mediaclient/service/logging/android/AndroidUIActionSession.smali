.class public abstract Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "AndroidUIActionSession.java"


# static fields
.field protected static final ANDROID_CATEGORY:Ljava/lang/String; = "android"


# instance fields
.field protected mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field protected mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "android"

    return-object v0
.end method

.method public getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method
