.class Lo/SQLiteClosable$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteClosable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/SQLiteClosable;


# direct methods
.method constructor <init>(Lo/SQLiteClosable;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 104
    iget-object v0, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    invoke-virtual {v0}, Lo/SQLiteClosable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    iget-object v0, v0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    iget-object v0, v0, Lo/SQLiteClosable;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SQLiteClosable$ActionBar;

    iget-object v0, v0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    iget-object v0, v0, Lo/SQLiteClosable;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    iget-object v0, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    iget-object v0, v0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteClosable$ActionBar;

    .line 112
    iget-object v1, v1, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/SQLiteClosable$5;->b:Lo/SQLiteClosable;

    invoke-virtual {v0}, Lo/SQLiteClosable;->dismiss()V

    :cond_2
    return-void
.end method
