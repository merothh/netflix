.class Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;
.super Ljava/lang/Object;
.source "PostPlayForPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final GET_STARTED_URL:Ljava/lang/String; = "/getstarted"

.field private static final PLAYER_COMPLETE:I = 0x15


# instance fields
.field netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "SignUp touched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    const-string/jumbo v1, "nextUrl"

    const-string/jumbo v2, "/getstarted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setResult(ILandroid/content/Intent;)V

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SignupListener;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 205
    return-void
.end method
