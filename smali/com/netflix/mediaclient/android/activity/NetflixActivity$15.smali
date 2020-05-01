.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2648
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 2652
    return-void
.end method
