.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QE;->e(ZLjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/widget/NetflixActionBar;",
        "Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lo/QE;

.field final synthetic e:Z


# direct methods
.method public constructor <init>(Lo/QE;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->b:Lo/QE;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->e:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->a:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 4

    const-string v0, "actionBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->e:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->b:Lo/QE;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->a:Ljava/util/List;

    invoke-static {v1, p1, p2, v0, v2}, Lo/QE;->d(Lo/QE;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;ZLjava/util/List;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->b:Lo/QE;

    invoke-virtual {v1}, Lo/QE;->e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->U:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->b:Lo/QE;

    invoke-virtual {v1}, Lo/QE;->e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->b:Lo/QE;

    invoke-virtual {v2}, Lo/QE;->e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->p:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->b:Lo/QE;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->a:Ljava/util/List;

    invoke-static {v1, p1, p2, v0, v2}, Lo/QE;->d(Lo/QE;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;ZLjava/util/List;)V

    .line 35
    :goto_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    check-cast p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
