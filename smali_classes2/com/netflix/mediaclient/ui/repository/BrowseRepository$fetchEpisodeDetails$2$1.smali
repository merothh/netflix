.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx$ActionBar;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lo/Zx$ActionBar;


# direct methods
.method public constructor <init>(Lo/Zx$ActionBar;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->d:Lo/Zx$ActionBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/hW;)V
    .locals 7

    const-string v0, "browse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->d:Lo/Zx$ActionBar;

    iget-object v2, v0, Lo/Zx$ActionBar;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->d:Lo/Zx$ActionBar;

    iget-object v3, v0, Lo/Zx$ActionBar;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->d:Lo/Zx$ActionBar;

    iget-boolean v4, v0, Lo/Zx$ActionBar;->c:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->d:Lo/Zx$ActionBar;

    iget-object v5, v0, Lo/Zx$ActionBar;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1$3;-><init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;)V

    move-object v6, v0

    check-cast v6, Lo/ci;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lo/hW;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchEpisodeDetails$2$1;->b(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
