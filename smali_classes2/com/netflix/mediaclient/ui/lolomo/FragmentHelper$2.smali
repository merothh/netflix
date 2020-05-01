.class final Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;->b:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;->b:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)Lo/Il;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;->b:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->g()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(Z)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;->b:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ad_()Z

    :cond_1
    return-void
.end method
