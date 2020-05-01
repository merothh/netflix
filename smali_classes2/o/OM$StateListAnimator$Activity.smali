.class final Lo/OM$StateListAnimator$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OM$StateListAnimator;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
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
        "Lo/ClassFormatError<",
        "Ljava/util/List<",
        "Lo/OL;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/OM$StateListAnimator;


# direct methods
.method constructor <init>(Lo/OM$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/OM$StateListAnimator$Activity;->c:Lo/OM$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/OM$StateListAnimator$Activity;->c:Lo/OM$StateListAnimator;

    iget-object v0, v0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v0}, Lo/OM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/OK;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/OM$StateListAnimator$Activity;->c:Lo/OM$StateListAnimator;

    iget-object v0, v0, Lo/OM$StateListAnimator;->a:Lo/OM;

    invoke-virtual {v0}, Lo/OM;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/OK;

    invoke-virtual {v0, p1}, Lo/OK;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsFrag"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lo/OM$StateListAnimator$Activity;->d(Ljava/util/List;)V

    return-void
.end method
