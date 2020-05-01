.class final Lo/Ia$StateListAnimator$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator;->c(Lo/HY;)V
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
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/HY;

.field final synthetic d:Lo/Ia$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Ia$StateListAnimator;Lo/HY;)V
    .locals 0

    iput-object p1, p0, Lo/Ia$StateListAnimator$TaskDescription;->d:Lo/Ia$StateListAnimator;

    iput-object p2, p0, Lo/Ia$StateListAnimator$TaskDescription;->b:Lo/HY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Boolean;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    iget-object p1, p0, Lo/Ia$StateListAnimator$TaskDescription;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->c(Lo/Ia$StateListAnimator;)Lo/HY;

    move-result-object p1

    iget-object v0, p0, Lo/Ia$StateListAnimator$TaskDescription;->b:Lo/HY;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/Ia$StateListAnimator$TaskDescription;->d:Lo/Ia$StateListAnimator;

    invoke-static {p1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;)Lo/HZ;

    move-result-object p1

    invoke-virtual {p1}, Lo/HZ;->c()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/Ia$StateListAnimator$TaskDescription;->e(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
