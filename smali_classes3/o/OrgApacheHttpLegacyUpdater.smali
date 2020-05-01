.class public Lo/OrgApacheHttpLegacyUpdater;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lo/PackageParserCacheHelper;
    .locals 1

    .line 16
    new-instance v0, Lo/OrgApacheHttpLegacyUpdater$3;

    invoke-direct {v0, p0}, Lo/OrgApacheHttpLegacyUpdater$3;-><init>(Lo/OrgApacheHttpLegacyUpdater;)V

    return-object v0
.end method
