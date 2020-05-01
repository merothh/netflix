.class Lo/Dialog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dialog;->b(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lo/Dialog;


# direct methods
.method constructor <init>(Lo/Dialog;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lo/Dialog$2;->e:Lo/Dialog;

    iput-object p2, p0, Lo/Dialog$2;->d:Landroid/view/View;

    iput-object p3, p0, Lo/Dialog$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 622
    iget-object v0, p0, Lo/Dialog$2;->e:Lo/Dialog;

    iget-object v0, v0, Lo/Dialog;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lo/Dialog$2;->d:Landroid/view/View;

    iget-object v2, p0, Lo/Dialog$2;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lo/Dialog;->b(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
