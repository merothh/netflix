.class Lo/OrgApacheHttpLegacyUpdater$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageParserCacheHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OrgApacheHttpLegacyUpdater;->c()Lo/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/OrgApacheHttpLegacyUpdater;


# direct methods
.method constructor <init>(Lo/OrgApacheHttpLegacyUpdater;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/OrgApacheHttpLegacyUpdater$3;->e:Lo/OrgApacheHttpLegacyUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lo/PackageInstaller$Activity;

    check-cast p2, Lo/PackageInstaller$Activity;

    invoke-virtual {p0, p1, p2}, Lo/OrgApacheHttpLegacyUpdater$3;->e(Lo/PackageInstaller$Activity;Lo/PackageInstaller$Activity;)I

    move-result p1

    return p1
.end method

.method public e(Lo/PackageInstaller$Activity;Lo/PackageInstaller$Activity;)I
    .locals 3

    .line 19
    invoke-interface {p1}, Lo/PackageInstaller$Activity;->a()J

    move-result-wide v0

    .line 20
    invoke-interface {p2}, Lo/PackageInstaller$Activity;->a()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
