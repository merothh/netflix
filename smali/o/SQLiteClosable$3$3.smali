.class Lo/SQLiteClosable$3$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SQLiteClosable$3;->onItemHoverEnter(Lo/Mode;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/SQLiteClosable$ActionBar;

.field final synthetic b:Lo/SQLiteClosable$3;

.field final synthetic c:Landroid/view/MenuItem;

.field final synthetic d:Lo/Mode;


# direct methods
.method constructor <init>(Lo/SQLiteClosable$3;Lo/SQLiteClosable$ActionBar;Landroid/view/MenuItem;Lo/Mode;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lo/SQLiteClosable$3$3;->b:Lo/SQLiteClosable$3;

    iput-object p2, p0, Lo/SQLiteClosable$3$3;->a:Lo/SQLiteClosable$ActionBar;

    iput-object p3, p0, Lo/SQLiteClosable$3$3;->c:Landroid/view/MenuItem;

    iput-object p4, p0, Lo/SQLiteClosable$3$3;->d:Lo/Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget-object v0, p0, Lo/SQLiteClosable$3$3;->a:Lo/SQLiteClosable$ActionBar;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lo/SQLiteClosable$3$3;->b:Lo/SQLiteClosable$3;

    iget-object v0, v0, Lo/SQLiteClosable$3;->e:Lo/SQLiteClosable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/SQLiteClosable;->j:Z

    .line 182
    iget-object v0, p0, Lo/SQLiteClosable$3$3;->a:Lo/SQLiteClosable$ActionBar;

    iget-object v0, v0, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Mode;->close(Z)V

    .line 183
    iget-object v0, p0, Lo/SQLiteClosable$3$3;->b:Lo/SQLiteClosable$3;

    iget-object v0, v0, Lo/SQLiteClosable$3;->e:Lo/SQLiteClosable;

    iput-boolean v1, v0, Lo/SQLiteClosable;->j:Z

    .line 187
    :cond_0
    iget-object v0, p0, Lo/SQLiteClosable$3$3;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/SQLiteClosable$3$3;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lo/SQLiteClosable$3$3;->d:Lo/Mode;

    iget-object v1, p0, Lo/SQLiteClosable$3$3;->c:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lo/Mode;->performItemAction(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
