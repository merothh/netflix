.class public Lo/TotalCaptureResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CaptureResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/PackageBackwardCompatibility;)Lo/PackageInstaller;
    .locals 4

    .line 20
    new-instance v0, Lo/PackageList;

    .line 21
    invoke-virtual {p1}, Lo/PackageBackwardCompatibility;->a()I

    move-result v1

    .line 22
    invoke-virtual {p1}, Lo/PackageBackwardCompatibility;->d()Lo/UserInfo;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Lo/PackageBackwardCompatibility;->e()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lo/PackageBackwardCompatibility;->h()Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lo/PackageList;-><init>(ILo/UserInfo;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V

    return-object v0
.end method
