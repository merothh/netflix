.class final Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 4

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lo/Am;->u()Lo/nP;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;

    .line 132
    new-instance v1, Lo/SA;

    invoke-direct {v1}, Lo/SA;-><init>()V

    .line 136
    move-object v2, v1

    check-cast v2, Lo/Ss;

    const-string v3, "top_model"

    .line 38
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lo/Ss;->e(Ljava/lang/CharSequence;)Lo/Ss;

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Lo/nP;->c()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-interface {v2, v3}, Lo/Ss;->d(Z)Lo/Ss;

    .line 42
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->access$isOptedIn$p(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)Z

    move-result v3

    invoke-interface {v2, v3}, Lo/Ss;->b(Z)Lo/Ss;

    .line 43
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$Activity;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$Activity;-><init>(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;Lo/nP;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v2, v3}, Lo/Ss;->d(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/Ss;

    .line 54
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;Lo/nP;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v2, v3}, Lo/Ss;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/Ss;

    .line 135
    invoke-virtual {v1, v0}, Lo/SA;->a(Lo/OfPrimitive;)V

    .line 64
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController$Activity;->b:Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;->access$buildProfileItems(Lcom/netflix/mediaclient/ui/offline/downloadedforyou/DownloadedForYouSettingsController;)V

    return-void
.end method
