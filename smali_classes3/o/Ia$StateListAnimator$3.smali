.class public final Lo/Ia$StateListAnimator$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ii$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Ia$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Ia$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lo/Ia$StateListAnimator$3;->e:Lo/Ia$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lo/Ia$StateListAnimator$3;->e:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object v0

    .line 482
    instance-of v1, v0, Lo/HY;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/HY;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/HY;->g()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/HY;->g()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 486
    iget-object p1, p0, Lo/Ia$StateListAnimator$3;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Retry"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    iget-object p1, p0, Lo/Ia$StateListAnimator$3;->e:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "No retry"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
