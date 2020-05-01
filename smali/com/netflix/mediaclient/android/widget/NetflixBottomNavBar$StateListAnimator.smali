.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method private c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V
    .locals 1

    .line 777
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "bottomTab"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "fromBottomTab"

    const/4 v0, 0x1

    .line 778
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x20000

    .line 779
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 781
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public e(Lo/TransactionTracker;)Z
    .locals 5

    .line 753
    invoke-virtual {p1}, Lo/TransactionTracker;->c()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching tab found for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetflixBottomNavBar"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 758
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v2, Lcom/netflix/cl/model/event/session/Focus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->a()Lcom/netflix/cl/model/AppView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d()Lcom/netflix/cl/model/event/session/command/Command;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 760
    sget-object p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    if-ne v0, p1, :cond_1

    .line 761
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->d()V

    .line 763
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/pf;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 764
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/RL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return v1

    .line 769
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)Landroid/content/Intent;

    move-result-object p1

    .line 770
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V

    .line 771
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$StateListAnimator;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-static {v2, v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;Landroid/content/Intent;)V

    return v1
.end method
