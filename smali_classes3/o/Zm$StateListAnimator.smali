.class final Lo/Zm$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zm;->d(Lo/Zn;Lo/AO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Zm;

.field final synthetic e:Lo/AO;


# direct methods
.method constructor <init>(Lo/Zm;Lo/AO;)V
    .locals 0

    iput-object p1, p0, Lo/Zm$StateListAnimator;->d:Lo/Zm;

    iput-object p2, p0, Lo/Zm$StateListAnimator;->e:Lo/AO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 78
    sget-object p1, Lo/YS;->a:Lo/YS;

    .line 79
    iget-object v0, p0, Lo/Zm$StateListAnimator;->d:Lo/Zm;

    iget-object v1, p0, Lo/Zm$StateListAnimator;->e:Lo/AO;

    invoke-static {v0, v1}, Lo/Zm;->a(Lo/Zm;Lo/AO;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lo/Zm$StateListAnimator;->e:Lo/AO;

    invoke-interface {v1}, Lo/AO;->getId()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Lo/YS;->d(Lcom/netflix/cl/model/TrackingInfo;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lo/Zm$StateListAnimator;->d:Lo/Zm;

    invoke-static {p1}, Lo/Zm;->e(Lo/Zm;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iget-object v2, p0, Lo/Zm$StateListAnimator;->e:Lo/AO;

    invoke-interface {v2}, Lo/AO;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/Zm$StateListAnimator;->e:Lo/AO;

    invoke-interface {v3}, Lo/AO;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_ORIGINAL_ICONS_DEEPLINK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "avatar_name"

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {p1}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Lo/YU;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    check-cast v1, Landroid/os/Parcelable;

    .line 103
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 107
    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Activity was null in LopiAdapter.holder.cover clickListener"

    .line 112
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
