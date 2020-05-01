.class final Lo/Pg$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Lo/Pe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Pg;


# direct methods
.method constructor <init>(Lo/Pg;)V
    .locals 0

    iput-object p1, p0, Lo/Pg$StateListAnimator;->c:Lo/Pg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lo/Pe;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lo/Pg$StateListAnimator;->c:Lo/Pg;

    invoke-virtual {p1}, Lo/Pg;->l()Z

    move-result p1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lo/Pe;

    invoke-virtual {p0, p1}, Lo/Pg$StateListAnimator;->e(Lo/Pe;)Z

    move-result p1

    return p1
.end method
