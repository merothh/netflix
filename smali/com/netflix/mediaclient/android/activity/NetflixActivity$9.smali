.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;
.super Lo/WebChromeClient$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showFullScreenDialog(Lo/WebChromeClient;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V
    .locals 0

    .line 2736
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;->e:Landroid/view/View;

    invoke-direct {p0}, Lo/WebChromeClient$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/WebChromeClient;)V
    .locals 2

    .line 2739
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;->e:Landroid/view/View;

    .line 2740
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$9;->e:Landroid/view/View;

    const/4 v1, 0x0

    .line 2739
    invoke-static {p1, v0, v1}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method
