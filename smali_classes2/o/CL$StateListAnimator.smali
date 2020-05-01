.class final Lo/CL$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CL;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/CL;


# direct methods
.method constructor <init>(Lo/CL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/CL$StateListAnimator;->d:Lo/CL;

    iput-object p2, p0, Lo/CL$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    iget-object p1, p0, Lo/CL$StateListAnimator;->d:Lo/CL;

    move-object p2, p1

    check-cast p2, Lo/MessagePdu;

    .line 38
    iget-object p2, p0, Lo/CL$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/CL;->e(Landroid/content/Context;)V

    .line 39
    iget-object p1, p0, Lo/CL$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/adg;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 p2, 0x10000000

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    :try_start_0
    iget-object p2, p0, Lo/CL$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    iget-object p1, p0, Lo/CL$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 45
    :catch_0
    :try_start_1
    iget-object p1, p0, Lo/CL$StateListAnimator;->d:Lo/CL;

    check-cast p1, Lo/MessagePdu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :goto_1
    iget-object p2, p0, Lo/CL$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    throw p1

    :cond_0
    :goto_2
    return-void
.end method
