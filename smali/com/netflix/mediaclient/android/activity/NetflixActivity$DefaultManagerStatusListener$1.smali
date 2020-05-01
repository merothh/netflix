.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;->this$1:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener$1;->this$1:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DefaultManagerStatusListener;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->expandMiniPlayerIfVisible()V

    .line 1362
    return-void
.end method
