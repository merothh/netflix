.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;
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
.field final synthetic e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$4;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    :cond_0
    return-void
.end method
