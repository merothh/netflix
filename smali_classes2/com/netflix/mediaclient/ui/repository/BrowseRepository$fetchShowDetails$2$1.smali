.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx$FragmentManager;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/hW;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lo/Zx$FragmentManager;


# direct methods
.method public constructor <init>(Lo/Zx$FragmentManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->d:Lo/Zx$FragmentManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/hW;)V
    .locals 4

    const-string v0, "browse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->d:Lo/Zx$FragmentManager;

    iget-object v0, v0, Lo/Zx$FragmentManager;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->d:Lo/Zx$FragmentManager;

    iget-object v1, v1, Lo/Zx$FragmentManager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->d:Lo/Zx$FragmentManager;

    iget-object v2, v2, Lo/Zx$FragmentManager;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v3, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1$4;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1$4;-><init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;)V

    check-cast v3, Lo/ci;

    invoke-interface {p1, v0, v1, v2, v3}, Lo/hW;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchShowDetails$2$1;->d(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
