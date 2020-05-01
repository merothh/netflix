.class public final Lcom/netflix/mediaclient/service/logging/breadcrumb/CrittercismBreadcrumbLoggingImpl;
.super Ljava/lang/Object;
.source "CrittercismBreadcrumbLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/BreadcrumbLogging;


# static fields
.field private static final NAME:Ljava/lang/String; = "crittercism"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLookupName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "crittercism"

    return-object v0
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method
