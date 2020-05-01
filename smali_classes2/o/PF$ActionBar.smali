.class final Lo/PF$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PF;->d()V
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
        "Lo/Pe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/PF;


# direct methods
.method constructor <init>(Lo/PF;)V
    .locals 0

    iput-object p1, p0, Lo/PF$ActionBar;->e:Lo/PF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lo/Pe;

    invoke-virtual {p0, p1}, Lo/PF$ActionBar;->b(Lo/Pe;)V

    return-void
.end method

.method public final b(Lo/Pe;)V
    .locals 3

    .line 40
    instance-of v0, p1, Lo/Pe$StateListAnimator;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lo/PF$ActionBar;->e:Lo/PF;

    invoke-virtual {v0}, Lo/PF;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v1, v0, Lo/PD;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/PD;

    if-eqz v0, :cond_1

    .line 43
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 44
    new-instance v1, Landroid/content/Intent;

    check-cast p1, Lo/Pe$StateListAnimator;

    invoke-virtual {p1}, Lo/Pe$StateListAnimator;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    invoke-static {v0, v1}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    :cond_1
    return-void
.end method
