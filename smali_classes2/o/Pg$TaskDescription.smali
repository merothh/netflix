.class final Lo/Pg$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Pg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic b:Lo/Pg;


# direct methods
.method constructor <init>(Lo/Pg;)V
    .locals 0

    iput-object p1, p0, Lo/Pg$TaskDescription;->b:Lo/Pg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lo/Pe;

    invoke-virtual {p0, p1}, Lo/Pg$TaskDescription;->b(Lo/Pe;)V

    return-void
.end method

.method public final b(Lo/Pe;)V
    .locals 4

    .line 73
    instance-of v0, p1, Lo/Pe$Activity;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lo/Pg$TaskDescription;->b:Lo/Pg;

    invoke-virtual {v0}, Lo/Pg;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    check-cast p1, Lo/Pe$Activity;

    invoke-virtual {p1}, Lo/Pe$Activity;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    invoke-static {v0, v1}, Lo/az;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0

    .line 79
    :cond_0
    instance-of v0, p1, Lo/Pe$ActionBar;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lo/Pg$TaskDescription;->b:Lo/Pg;

    invoke-virtual {v0}, Lo/Pg;->requireActivity()Lo/Serializable;

    move-result-object v0

    .line 81
    sget-object v1, Lo/PD;->b:Lo/PD$TaskDescription;

    .line 82
    iget-object v2, p0, Lo/Pg$TaskDescription;->b:Lo/Pg;

    invoke-virtual {v2}, Lo/Pg;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    check-cast p1, Lo/Pe$ActionBar;

    invoke-virtual {p1}, Lo/Pe$ActionBar;->e()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v1, v2, p1}, Lo/PD$TaskDescription;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lo/Serializable;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
