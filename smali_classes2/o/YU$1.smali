.class Lo/YU$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YU;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lo/YU$1;->c:Lo/YU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lo/YU$1;->c:Lo/YU;

    invoke-static {p1}, Lo/YU;->r(Lo/YU;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lo/YU$1;->c:Lo/YU;

    invoke-static {v0}, Lo/YU;->r(Lo/YU;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
