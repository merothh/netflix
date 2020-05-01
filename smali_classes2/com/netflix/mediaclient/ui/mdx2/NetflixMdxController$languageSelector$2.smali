.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


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
        "Lo/alB<",
        "Lo/CT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lo/CT;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2$3;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;)V

    check-cast v2, Lo/CT$TaskDescription;

    invoke-static {v0, v1, v2}, Lo/CT;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLo/CT$TaskDescription;)Lo/CT;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$languageSelector$2;->e()Lo/CT;

    move-result-object v0

    return-object v0
.end method
