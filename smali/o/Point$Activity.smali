.class Lo/Point$Activity;
.super Lo/TypedArray;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TypedArray<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Point;


# direct methods
.method constructor <init>(Lo/Point;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lo/Point$Activity;->d:Lo/Point;

    .line 392
    invoke-direct {p0, p2}, Lo/TypedArray;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 397
    iget-object v0, p0, Lo/Point$Activity;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lo/Point$Activity;->d:Lo/Point;

    invoke-virtual {v1, p1}, Lo/Point;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
