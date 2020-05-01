.class final Lo/AdapterViewAnimator$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterViewAnimator;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/AdapterViewAnimator;

.field final synthetic e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;


# direct methods
.method constructor <init>(Lo/AdapterViewAnimator;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 0

    iput-object p1, p0, Lo/AdapterViewAnimator$ActionBar;->a:Lo/AdapterViewAnimator;

    iput-object p2, p0, Lo/AdapterViewAnimator$ActionBar;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/Intent;
    .locals 3

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lo/AdapterViewAnimator$ActionBar;->a:Lo/AdapterViewAnimator;

    invoke-virtual {v1}, Lo/AdapterViewAnimator;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lo/AdapterViewAnimator$ActionBar;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v2, p0, Lo/AdapterViewAnimator$ActionBar;->a:Lo/AdapterViewAnimator;

    check-cast v2, Lo/AnalogClock;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->c(Lo/AnalogClock;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.intent.extra.SUBJECT"

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    :cond_0
    iget-object v1, p0, Lo/AdapterViewAnimator$ActionBar;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v2, p0, Lo/AdapterViewAnimator$ActionBar;->a:Lo/AdapterViewAnimator;

    check-cast v2, Lo/AnalogClock;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->e(Lo/AnalogClock;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/AdapterViewAnimator$ActionBar;->b()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
