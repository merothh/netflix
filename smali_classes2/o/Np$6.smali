.class Lo/Np$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Np;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Np;


# direct methods
.method constructor <init>(Lo/Np;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lo/Np$6;->d:Lo/Np;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 619
    invoke-static {}, Lo/dJ;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lo/Np$6;->d:Lo/Np;

    iget-object p1, p1, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/Np$6;->d:Lo/Np;

    iget-object v1, v1, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lo/Pb;->j()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 622
    :cond_0
    iget-object p1, p0, Lo/Np$6;->d:Lo/Np;

    iget-object p1, p1, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/Np$6;->d:Lo/Np;

    iget-object v1, v1, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {}, Lo/Oq;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
