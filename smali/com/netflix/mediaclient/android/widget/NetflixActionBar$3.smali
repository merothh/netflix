.class final Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    const-string v0, "insets"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    .line 142
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$3;->c:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    return-object p2
.end method
