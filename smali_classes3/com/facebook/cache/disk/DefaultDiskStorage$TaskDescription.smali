.class Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SELinuxUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/DefaultDiskStorage;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PackageInstaller$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;->a:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;->c:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/PackageInstaller$Activity;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/File;)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;->a:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->a:Ljava/lang/String;

    const-string v2, ".cnt"

    if-ne v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$TaskDescription;->c:Ljava/util/List;

    new-instance v2, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;

    iget-object v0, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$Application;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$StateListAnimator;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/cache/disk/DefaultDiskStorage$3;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/io/File;)V
    .locals 0

    return-void
.end method
