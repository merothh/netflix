.class Lo/Mj$TaskDescription$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Mj$TaskDescription;->b(Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Mj$TaskDescription;

.field final synthetic b:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lo/Mj$TaskDescription;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/Mj$TaskDescription$4;->a:Lo/Mj$TaskDescription;

    iput-object p2, p0, Lo/Mj$TaskDescription$4;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lo/Mj$TaskDescription$4;->a:Lo/Mj$TaskDescription;

    invoke-static {v0}, Lo/Mj$TaskDescription;->b(Lo/Mj$TaskDescription;)Lo/Mj$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mj$StateListAnimator;->notifyDataSetChanged()V

    .line 99
    iget-object v1, p0, Lo/Mj$TaskDescription$4;->b:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
