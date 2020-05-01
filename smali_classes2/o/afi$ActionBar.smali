.class public final Lo/afi$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RuntimePermissionPresenter;
.implements Lo/afc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/SplitAssetDependencyLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/afi$ActionBar;->e:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/SplitAssetDependencyLoader;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/afi$ActionBar;->e:Ljava/util/HashSet;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public d(Lo/SplitAssetDependencyLoader;)V
    .locals 1

    const-string v0, "trimmable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lo/afi$ActionBar;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
