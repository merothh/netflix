.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$22;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/TransactionTracker;)V
    .locals 1

    .line 1023
    invoke-virtual {p1}, Lo/TransactionTracker;->c()I

    move-result p1

    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;

    move-result-object p1

    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$22;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->bottomTabReselected(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V

    return-void
.end method
