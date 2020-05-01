.class public final Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx$Fragment;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lo/Zx$Fragment;


# direct methods
.method public constructor <init>(Lo/Zx$Fragment;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->c:Lo/Zx$Fragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/hW;)V
    .locals 3

    const-string v0, "browse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->c:Lo/Zx$Fragment;

    iget-object v0, v0, Lo/Zx$Fragment;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->c:Lo/Zx$Fragment;

    iget-boolean v1, v1, Lo/Zx$Fragment;->b:Z

    new-instance v2, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1$1;-><init>(Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;)V

    check-cast v2, Lo/ci;

    invoke-interface {p1, v0, v1, v2}, Lo/hW;->b(Ljava/lang/String;ZLo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchNotificationSummary$2$1;->d(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
