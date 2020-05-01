.class final Lo/Hn$TaskDescription$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Hn$TaskDescription;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic c:Lo/Hn$TaskDescription;


# direct methods
.method constructor <init>(Lo/Hn$TaskDescription;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/Hn$TaskDescription$TaskDescription;->c:Lo/Hn$TaskDescription;

    iput-object p2, p0, Lo/Hn$TaskDescription$TaskDescription;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 65
    iget-object p1, p0, Lo/Hn$TaskDescription$TaskDescription;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lo/Hn$TaskDescription$TaskDescription;->c:Lo/Hn$TaskDescription;

    invoke-static {p3}, Lo/Hn$TaskDescription;->c(Lo/Hn$TaskDescription;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p3, :cond_1

    .line 68
    iget-object p2, p0, Lo/Hn$TaskDescription$TaskDescription;->c:Lo/Hn$TaskDescription;

    invoke-static {p2}, Lo/Hn$TaskDescription;->c(Lo/Hn$TaskDescription;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object p1, p0, Lo/Hn$TaskDescription$TaskDescription;->c:Lo/Hn$TaskDescription;

    invoke-static {p1}, Lo/Hn$TaskDescription;->c(Lo/Hn$TaskDescription;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lo/Binder;->e(Landroid/view/View;)V

    :cond_1
    return-void
.end method
