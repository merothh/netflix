.class public Lo/Editor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Editor;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/Editor;->d:Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->b(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;)V

    return-void
.end method
