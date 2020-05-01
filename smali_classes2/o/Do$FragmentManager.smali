.class final Lo/Do$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/ValidationProbeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Do;


# direct methods
.method constructor <init>(Lo/Do;)V
    .locals 0

    iput-object p1, p0, Lo/Do$FragmentManager;->e:Lo/Do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/ValidationProbeEvent;

    invoke-virtual {p0, p1}, Lo/Do$FragmentManager;->d(Lo/ValidationProbeEvent;)V

    return-void
.end method

.method public final d(Lo/ValidationProbeEvent;)V
    .locals 2

    .line 156
    instance-of v0, p1, Lo/ValidationProbeEvent$Application;

    if-eqz v0, :cond_0

    .line 157
    iget-object p1, p0, Lo/Do$FragmentManager;->e:Lo/Do;

    invoke-static {p1}, Lo/Do;->b(Lo/Do;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 158
    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    iget-object v1, p0, Lo/Do$FragmentManager;->e:Lo/Do;

    invoke-static {v1}, Lo/Do;->b(Lo/Do;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lo/QU$TaskDescription;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :cond_0
    instance-of p1, p1, Lo/ValidationProbeEvent$TaskDescription;

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lo/Do$FragmentManager;->e:Lo/Do;

    invoke-virtual {p1}, Lo/Do;->d()V

    :cond_1
    :goto_0
    return-void
.end method
