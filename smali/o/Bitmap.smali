.class public Lo/Bitmap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaController;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Bitmap$ActionBar;
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Landroid/content/Context;

.field c:I

.field d:Lo/SQLiteDatabase;

.field e:Lo/Mode;

.field f:I

.field private g:Lo/MediaController$StateListAnimator;

.field h:I

.field i:Lo/Bitmap$ActionBar;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lo/Bitmap;->f:I

    .line 83
    iput p2, p0, Lo/Bitmap;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p2, v0}, Lo/Bitmap;-><init>(II)V

    .line 72
    iput-object p1, p0, Lo/Bitmap;->b:Landroid/content/Context;

    .line 73
    iget-object p1, p0, Lo/Bitmap;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/Bitmap;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lo/Bitmap$ActionBar;

    invoke-direct {v0, p0}, Lo/Bitmap$ActionBar;-><init>(Lo/Bitmap;)V

    iput-object v0, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    .line 128
    :cond_0
    iget-object v0, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    return-object v0
.end method

.method public collapseItemActionView(Lo/Mode;Lo/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/ViewGroup;)Lo/Drawable;
    .locals 3

    .line 105
    iget-object v0, p0, Lo/Bitmap;->d:Lo/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lo/Bitmap;->a:Landroid/view/LayoutInflater;

    sget v1, Lo/LoaderManager$PendingIntent;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/SQLiteDatabase;

    iput-object p1, p0, Lo/Bitmap;->d:Lo/SQLiteDatabase;

    .line 108
    iget-object p1, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Lo/Bitmap$ActionBar;

    invoke-direct {p1, p0}, Lo/Bitmap$ActionBar;-><init>(Lo/Bitmap;)V

    iput-object p1, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    .line 111
    :cond_0
    iget-object p1, p0, Lo/Bitmap;->d:Lo/SQLiteDatabase;

    iget-object v0, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    invoke-virtual {p1, v0}, Lo/SQLiteDatabase;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object p1, p0, Lo/Bitmap;->d:Lo/SQLiteDatabase;

    invoke-virtual {p1, p0}, Lo/SQLiteDatabase;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    iget-object p1, p0, Lo/Bitmap;->d:Lo/SQLiteDatabase;

    return-object p1
.end method

.method public expandItemActionView(Lo/Mode;Lo/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lo/Mode;)V
    .locals 2

    .line 88
    iget v0, p0, Lo/Bitmap;->h:I

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lo/Bitmap;->b:Landroid/content/Context;

    .line 90
    iget-object p1, p0, Lo/Bitmap;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/Bitmap;->a:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lo/Bitmap;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 92
    iput-object p1, p0, Lo/Bitmap;->b:Landroid/content/Context;

    .line 93
    iget-object p1, p0, Lo/Bitmap;->a:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lo/Bitmap;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/Bitmap;->a:Landroid/view/LayoutInflater;

    .line 97
    :cond_1
    :goto_0
    iput-object p2, p0, Lo/Bitmap;->e:Lo/Mode;

    .line 98
    iget-object p1, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Lo/Bitmap$ActionBar;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCloseMenu(Lo/Mode;Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lo/Bitmap;->g:Lo/MediaController$StateListAnimator;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Lo/MediaController$StateListAnimator;->onCloseMenu(Lo/Mode;Z)V

    :cond_0
    return-void
.end method

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

    .line 173
    iget-object p1, p0, Lo/Bitmap;->e:Lo/Mode;

    iget-object p2, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    invoke-virtual {p2, p3}, Lo/Bitmap$ActionBar;->d(I)Lo/Rect;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lo/Mode;->performItemAction(Landroid/view/MenuItem;Lo/MediaController;I)Z

    return-void
.end method

.method public onSubMenuSelected(Lo/IBinder;)Z
    .locals 2

    .line 143
    invoke-virtual {p1}, Lo/IBinder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    new-instance v0, Lo/Paint;

    invoke-direct {v0, p1}, Lo/Paint;-><init>(Lo/Mode;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Paint;->e(Landroid/os/IBinder;)V

    .line 147
    iget-object v0, p0, Lo/Bitmap;->g:Lo/MediaController$StateListAnimator;

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0, p1}, Lo/MediaController$StateListAnimator;->onOpenSubMenu(Lo/Mode;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setCallback(Lo/MediaController$StateListAnimator;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lo/Bitmap;->g:Lo/MediaController$StateListAnimator;

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 133
    iget-object p1, p0, Lo/Bitmap;->i:Lo/Bitmap$ActionBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Bitmap$ActionBar;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
