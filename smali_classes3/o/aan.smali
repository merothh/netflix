.class public abstract Lo/aan;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aan$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/aan$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 30
    sget v0, Lo/Zt$LoaderManager;->t:I

    return v0
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/aan;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/aan$ActionBar;

    invoke-virtual {p0, p1}, Lo/aan;->d(Lo/aan$ActionBar;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/aan$ActionBar;

    invoke-virtual {p0, p1}, Lo/aan;->d(Lo/aan$ActionBar;)V

    return-void
.end method

.method public d(Lo/aan$ActionBar;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lo/aan$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object v0

    iget-object v1, p0, Lo/aan;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "title"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lo/aan$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/aan;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/aan;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method
