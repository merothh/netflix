.class public abstract Lo/St;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/St$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/St$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private f:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/St;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 26
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aw:I

    return v0
.end method

.method public b(Lo/St$StateListAnimator;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lo/St$StateListAnimator;->b()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    iget-boolean v1, p0, Lo/St;->a:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 30
    invoke-virtual {p1}, Lo/St$StateListAnimator;->b()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    iget-object v1, p0, Lo/St;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    invoke-virtual {p1}, Lo/St$StateListAnimator;->e()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    iget-boolean v1, p0, Lo/St;->b:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 33
    invoke-virtual {p1}, Lo/St$StateListAnimator;->e()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    iget-object v1, p0, Lo/St;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    invoke-virtual {p1}, Lo/St$StateListAnimator;->c()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lo/St;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/St;->b(Lo/St$StateListAnimator;)V

    return-void
.end method

.method public final c_(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/St;->b:Z

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/St;->b(Lo/St$StateListAnimator;)V

    return-void
.end method

.method public final e(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/St;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lo/St;->a:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lo/St;->a:Z

    return v0
.end method

.method public final l()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/St;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lo/St;->b:Z

    return v0
.end method

.method public final o()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/St;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method
