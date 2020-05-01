.class public abstract Lo/He;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/He$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/He$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 23
    sget v0, Lo/GS$FragmentManager;->b:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/He$TaskDescription;

    invoke-virtual {p0, p1}, Lo/He;->e(Lo/He$TaskDescription;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/He$TaskDescription;

    invoke-virtual {p0, p1}, Lo/He;->e(Lo/He$TaskDescription;)V

    return-void
.end method

.method public e(Lo/He$TaskDescription;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lo/He$TaskDescription;->b()Lo/HorizontalScrollView;

    move-result-object p1

    new-instance v0, Lo/He$ActionBar;

    invoke-direct {v0, p0}, Lo/He$ActionBar;-><init>(Lo/He;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h()Lo/alA;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alA<",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lo/He;->c:Lo/alA;

    if-nez v0, :cond_0

    const-string v1, "retryFunction"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected l()Lo/He$TaskDescription;
    .locals 1

    .line 25
    new-instance v0, Lo/He$TaskDescription;

    invoke-direct {v0}, Lo/He$TaskDescription;-><init>()V

    return-object v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/He;->l()Lo/He$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method
