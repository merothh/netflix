.class public Lo/ForwardingListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ForwardingListener;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    iget-object v0, p0, Lo/ForwardingListener;->a:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->e(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;Lo/Am;)V

    return-void
.end method
