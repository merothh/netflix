.class Lo/SQLiteClosable$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteClosable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/MenuPopupWindow;

.field public final b:Lo/Mode;

.field public final e:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/MenuPopupWindow;Lo/Mode;I)V
    .locals 0

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    iput-object p1, p0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 802
    iput-object p2, p0, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    .line 803
    iput p3, p0, Lo/SQLiteClosable$ActionBar;->e:I

    return-void
.end method


# virtual methods
.method public e()Landroid/widget/ListView;
    .locals 1

    .line 807
    iget-object v0, p0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
