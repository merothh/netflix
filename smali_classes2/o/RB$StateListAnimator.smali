.class final Lo/RB$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RB;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RB;


# direct methods
.method constructor <init>(Lo/RB;)V
    .locals 0

    iput-object p1, p0, Lo/RB$StateListAnimator;->d:Lo/RB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lo/RB$StateListAnimator;->d:Lo/RB;

    invoke-virtual {p1}, Lo/RB;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lo/RB$StateListAnimator;->d:Lo/RB;

    new-instance v1, Lo/RB$Application;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p1

    const-string v2, "NetflixActivity.requireImageLoader(it)"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lo/RB$Application;-><init>(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    invoke-static {v0, v1}, Lo/RB;->d(Lo/RB;Lo/RB$Application;)V

    :cond_0
    return-void
.end method
