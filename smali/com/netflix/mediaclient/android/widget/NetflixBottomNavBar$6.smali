.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;I)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iput p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;->d:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 550
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->a(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;I)I

    .line 551
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iget v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$6;->d:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
