.class Lo/Dialog$TaskDescription$2;
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
.field final synthetic a:Lo/Dialog;

.field final synthetic e:Lo/Dialog$TaskDescription;


# direct methods
.method constructor <init>(Lo/Dialog$TaskDescription;Lo/Dialog;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lo/Dialog$TaskDescription$2;->e:Lo/Dialog$TaskDescription;

    iput-object p2, p0, Lo/Dialog$TaskDescription$2;->a:Lo/Dialog;

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

    .line 1068
    iget-object p1, p0, Lo/Dialog$TaskDescription$2;->e:Lo/Dialog$TaskDescription;

    iget-object p1, p1, Lo/Dialog$TaskDescription;->w:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lo/Dialog$TaskDescription$2;->a:Lo/Dialog;

    iget-object p2, p2, Lo/Dialog;->a:Lo/AssistContent;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1069
    iget-object p1, p0, Lo/Dialog$TaskDescription$2;->e:Lo/Dialog$TaskDescription;

    iget-boolean p1, p1, Lo/Dialog$TaskDescription;->G:Z

    if-nez p1, :cond_0

    .line 1070
    iget-object p1, p0, Lo/Dialog$TaskDescription$2;->a:Lo/Dialog;

    iget-object p1, p1, Lo/Dialog;->a:Lo/AssistContent;

    invoke-virtual {p1}, Lo/AssistContent;->dismiss()V

    :cond_0
    return-void
.end method
