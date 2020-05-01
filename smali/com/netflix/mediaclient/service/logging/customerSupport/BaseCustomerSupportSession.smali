.class public abstract Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "BaseCustomerSupportSession.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "customerSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "customerSupport"

    return-object v0
.end method
