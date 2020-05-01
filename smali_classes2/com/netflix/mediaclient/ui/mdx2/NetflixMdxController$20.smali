.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$20;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zN;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/zN;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$20;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->i(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxEventProducer;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
