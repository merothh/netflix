.class public abstract Lcom/netflix/mediaclient/service/logging/suspend/BaseSuspendSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "BaseSuspendSession.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "tvuiSuspend"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tvuiSuspend"

    return-object v0
.end method
