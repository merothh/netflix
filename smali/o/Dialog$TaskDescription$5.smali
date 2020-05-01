.class Lo/Dialog$TaskDescription$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dialog$TaskDescription;->e(Lo/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Dialog$Activity;

.field final synthetic c:Lo/Dialog$TaskDescription;

.field final synthetic e:Lo/Dialog;


# direct methods
.method constructor <init>(Lo/Dialog$TaskDescription;Lo/Dialog$Activity;Lo/Dialog;)V
    .locals 0

    .line 1075
    iput-object p1, p0, Lo/Dialog$TaskDescription$5;->c:Lo/Dialog$TaskDescription;

    iput-object p2, p0, Lo/Dialog$TaskDescription$5;->b:Lo/Dialog$Activity;

    iput-object p3, p0, Lo/Dialog$TaskDescription$5;->e:Lo/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1078
    iget-object p1, p0, Lo/Dialog$TaskDescription$5;->c:Lo/Dialog$TaskDescription;

    iget-object p1, p1, Lo/Dialog$TaskDescription;->F:[Z

    if-eqz p1, :cond_0

    .line 1079
    iget-object p1, p0, Lo/Dialog$TaskDescription$5;->c:Lo/Dialog$TaskDescription;

    iget-object p1, p1, Lo/Dialog$TaskDescription;->F:[Z

    iget-object p2, p0, Lo/Dialog$TaskDescription$5;->b:Lo/Dialog$Activity;

    invoke-virtual {p2, p3}, Lo/Dialog$Activity;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1081
    :cond_0
    iget-object p1, p0, Lo/Dialog$TaskDescription$5;->c:Lo/Dialog$TaskDescription;

    iget-object p1, p1, Lo/Dialog$TaskDescription;->N:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lo/Dialog$TaskDescription$5;->e:Lo/Dialog;

    iget-object p2, p2, Lo/Dialog;->a:Lo/AssistContent;

    iget-object p4, p0, Lo/Dialog$TaskDescription$5;->b:Lo/Dialog$Activity;

    .line 1082
    invoke-virtual {p4, p3}, Lo/Dialog$Activity;->isItemChecked(I)Z

    move-result p4

    .line 1081
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
