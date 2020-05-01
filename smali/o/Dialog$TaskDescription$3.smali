.class Lo/Dialog$TaskDescription$3;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dialog$TaskDescription;->e(Lo/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Dialog$TaskDescription;

.field final synthetic b:Lo/Dialog$Activity;


# direct methods
.method constructor <init>(Lo/Dialog$TaskDescription;Landroid/content/Context;II[Ljava/lang/CharSequence;Lo/Dialog$Activity;)V
    .locals 0

    .line 995
    iput-object p1, p0, Lo/Dialog$TaskDescription$3;->a:Lo/Dialog$TaskDescription;

    iput-object p6, p0, Lo/Dialog$TaskDescription$3;->b:Lo/Dialog$Activity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 998
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 999
    iget-object p3, p0, Lo/Dialog$TaskDescription$3;->a:Lo/Dialog$TaskDescription;

    iget-object p3, p3, Lo/Dialog$TaskDescription;->F:[Z

    if-eqz p3, :cond_0

    .line 1000
    iget-object p3, p0, Lo/Dialog$TaskDescription$3;->a:Lo/Dialog$TaskDescription;

    iget-object p3, p3, Lo/Dialog$TaskDescription;->F:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 1002
    iget-object p3, p0, Lo/Dialog$TaskDescription$3;->b:Lo/Dialog$Activity;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lo/Dialog$Activity;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
