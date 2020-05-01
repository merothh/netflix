.class Lo/PackageBackwardCompatibility$TaskDescription$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PackageBackwardCompatibility$TaskDescription;->e()Lo/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/PackageBackwardCompatibility$TaskDescription;


# direct methods
.method constructor <init>(Lo/PackageBackwardCompatibility$TaskDescription;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lo/PackageBackwardCompatibility$TaskDescription$5;->a:Lo/PackageBackwardCompatibility$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/io/File;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/PackageBackwardCompatibility$TaskDescription$5;->a:Lo/PackageBackwardCompatibility$TaskDescription;

    invoke-static {v0}, Lo/PackageBackwardCompatibility$TaskDescription;->n(Lo/PackageBackwardCompatibility$TaskDescription;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lo/PackageBackwardCompatibility$TaskDescription$5;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
