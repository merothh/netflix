.class public abstract Lo/aap;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aap$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/aap$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 26
    sget v0, Lo/Zt$LoaderManager;->d:I

    return v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lo/aap;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public b(Lo/aap$Application;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lo/aap$Application;->c()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/aap;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 13
    check-cast p1, Lo/aap$Application;

    invoke-virtual {p0, p1}, Lo/aap;->b(Lo/aap$Application;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/aap$Application;

    invoke-virtual {p0, p1}, Lo/aap;->b(Lo/aap$Application;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/aap;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method
