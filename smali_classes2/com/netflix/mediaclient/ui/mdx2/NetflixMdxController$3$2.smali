.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d(Lo/MK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;",
        "Lio/reactivex/ObservableEmitter<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;Lio/reactivex/ObservableEmitter;)Lo/akj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;",
            ">;)",
            "Lo/akj;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionDataEmitter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 405
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->s()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    new-instance v1, Lo/Build$Application;

    invoke-direct {v1, p2, p1}, Lo/Build$Application;-><init>(Ljava/lang/String;Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)V

    check-cast v1, Lo/Build;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    .line 407
    sget-object p1, Lo/akj;->a:Lo/akj;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    check-cast p2, Lio/reactivex/ObservableEmitter;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;->e(Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;Lio/reactivex/ObservableEmitter;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
