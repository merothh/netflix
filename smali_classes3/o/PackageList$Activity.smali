.class Lo/PackageList$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field public final c:Ljava/io/File;

.field public final d:Lo/PackageInstaller;


# direct methods
.method constructor <init>(Ljava/io/File;Lo/PackageInstaller;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lo/PackageList$Activity;->d:Lo/PackageInstaller;

    .line 46
    iput-object p1, p0, Lo/PackageList$Activity;->c:Ljava/io/File;

    return-void
.end method
