.class final Lo/ArrowKeyMovementMethod$ActionBar;
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
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/ArrowKeyMovementMethod;

.field final synthetic e:Lo/ArrowKeyMovementMethod$Application;


# direct methods
.method constructor <init>(Lo/ArrowKeyMovementMethod;Lo/ArrowKeyMovementMethod$Application;)V
    .locals 0

    iput-object p1, p0, Lo/ArrowKeyMovementMethod$ActionBar;->c:Lo/ArrowKeyMovementMethod;

    iput-object p2, p0, Lo/ArrowKeyMovementMethod$ActionBar;->e:Lo/ArrowKeyMovementMethod$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ArrowKeyMovementMethod$ActionBar;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/ArrowKeyMovementMethod$ActionBar;->c:Lo/ArrowKeyMovementMethod;

    invoke-virtual {v0}, Lo/ArrowKeyMovementMethod;->a()Lo/DateTimeKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/DateTimeKeyListener;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object p1, p0, Lo/ArrowKeyMovementMethod$ActionBar;->c:Lo/ArrowKeyMovementMethod;

    invoke-static {p1}, Lo/ArrowKeyMovementMethod;->d(Lo/ArrowKeyMovementMethod;)V

    .line 100
    iget-object p1, p0, Lo/ArrowKeyMovementMethod$ActionBar;->e:Lo/ArrowKeyMovementMethod$Application;

    invoke-interface {p1}, Lo/ArrowKeyMovementMethod$Application;->a()V

    return-void
.end method
