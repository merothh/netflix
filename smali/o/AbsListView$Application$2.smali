.class final Lo/AbsListView$Application$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsListView$Application;->e(Lo/AnalogClock;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/AnalogClock;


# direct methods
.method constructor <init>(Lo/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lo/AbsListView$Application$2;->d:Lo/AnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lkotlin/Pair<",
            "Lo/AnalogClock<",
            "TT;>;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lo/AbsListView$Application$2;->d:Lo/AnalogClock;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lo/AbsListView$Application$2;->a(Landroid/content/Intent;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
