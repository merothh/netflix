.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V
    .locals 3

    .line 575
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lio/reactivex/ObservableEmitter;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lio/reactivex/ObservableEmitter;)V

    .line 577
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V

    .line 578
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    check-cast v0, Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;)V

    .line 579
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->i(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->d()V

    .line 581
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_STATUS_SHOW_CAST_FRAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "isVisible"

    .line 583
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 581
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->e:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    sget-object v0, Lo/Build$TaskStackBuilder;->d:Lo/Build$TaskStackBuilder;

    check-cast v0, Lo/Build;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$11;->b(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
