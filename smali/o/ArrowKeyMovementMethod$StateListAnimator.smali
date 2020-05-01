.class final Lo/ArrowKeyMovementMethod$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ArrowKeyMovementMethod;->d(Lo/ArrowKeyMovementMethod$Application;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ArrowKeyMovementMethod;


# direct methods
.method constructor <init>(Lo/ArrowKeyMovementMethod;)V
    .locals 0

    iput-object p1, p0, Lo/ArrowKeyMovementMethod$StateListAnimator;->c:Lo/ArrowKeyMovementMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/ArrowKeyMovementMethod$StateListAnimator;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lo/ArrowKeyMovementMethod$StateListAnimator;->c:Lo/ArrowKeyMovementMethod;

    invoke-virtual {p1}, Lo/ArrowKeyMovementMethod;->a()Lo/DateTimeKeyListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/DateTimeKeyListener;->d(Z)V

    .line 91
    :cond_0
    iget-object p1, p0, Lo/ArrowKeyMovementMethod$StateListAnimator;->c:Lo/ArrowKeyMovementMethod;

    invoke-static {p1}, Lo/ArrowKeyMovementMethod;->d(Lo/ArrowKeyMovementMethod;)V

    :cond_1
    return-void
.end method
