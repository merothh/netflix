.class public final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SimpleMonthView$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    const-string v0, "language"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$StateListAnimator;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method
