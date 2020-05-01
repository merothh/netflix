.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$1;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 864
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$1;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->b:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_0

    .line 866
    new-instance p2, Lo/adM;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5$1;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->a:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lo/adM;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
