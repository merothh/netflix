.class public final Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$updateActionBar$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->ad_()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lcom/netflix/mediaclient/android/widget/NetflixActionBar;",
        "Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/YY;


# direct methods
.method public constructor <init>(Lo/YY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$updateActionBar$1;->a:Lo/YY;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionBar"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 751
    invoke-virtual {p3, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 752
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 755
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$updateActionBar$1;->a:Lo/YY;

    invoke-static {v1}, Lo/YY;->g(Lo/YY;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 756
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->po:I

    goto :goto_0

    .line 758
    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->s:I

    .line 754
    :goto_0
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 753
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 761
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 762
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    check-cast p3, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$updateActionBar$1;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
