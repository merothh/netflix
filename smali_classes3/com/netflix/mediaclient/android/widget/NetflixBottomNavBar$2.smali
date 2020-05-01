.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;->b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "NetflixBottomNavBar"

    .line 219
    invoke-static {p2, p1}, Lo/adK;->a(Landroid/content/Intent;Ljava/lang/String;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    move-result-object p1

    .line 220
    invoke-static {}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->f()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 221
    iget-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$2;->b:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b(I)V

    return-void
.end method
