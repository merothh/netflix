.class Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TransactionTracker;

.field final synthetic c:Ljava/util/List;

.field final synthetic e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Ljava/util/List;Lo/TransactionTracker;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->a:Lo/TransactionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->a:Lo/TransactionTracker;

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;Ljava/util/List;Lo/TransactionTracker;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setTabs(Ljava/util/List;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$1;->e:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iget-object p1, p1, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a(Z)V

    :goto_0
    return-void
.end method
