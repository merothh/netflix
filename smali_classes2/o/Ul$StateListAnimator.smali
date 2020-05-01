.class Lo/Ul$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic b:Lo/Ul;

.field e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lo/Ul;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lo/Ul$StateListAnimator;->b:Lo/Ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lo/Ul$StateListAnimator;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 356
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "nextUrl"

    const-string v1, "/getstarted"

    .line 357
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Lo/Ul$StateListAnimator;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setResult(ILandroid/content/Intent;)V

    .line 359
    iget-object p1, p0, Lo/Ul$StateListAnimator;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method
