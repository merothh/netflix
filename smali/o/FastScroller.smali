.class public Lo/FastScroller;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

.field private final c:Lo/Am;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/FastScroller;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iput-object p2, p0, Lo/FastScroller;->c:Lo/Am;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/FastScroller;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    iget-object v1, p0, Lo/FastScroller;->c:Lo/Am;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->d(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;Landroid/view/View;)V

    return-void
.end method
