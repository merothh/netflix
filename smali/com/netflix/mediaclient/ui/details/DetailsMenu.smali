.class public Lcom/netflix/mediaclient/ui/details/DetailsMenu;
.super Ljava/lang/Object;
.source "DetailsMenu.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItems(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Landroid/view/Menu;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchMenu;->addSearchNavigation(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/Menu;Z)Landroid/view/MenuItem;

    return-void
.end method
