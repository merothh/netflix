.class Lo/Bitmap$ActionBar;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic d:Lo/Bitmap;

.field private e:I


# direct methods
.method public constructor <init>(Lo/Bitmap;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 232
    iput p1, p0, Lo/Bitmap$ActionBar;->e:I

    .line 235
    invoke-virtual {p0}, Lo/Bitmap$ActionBar;->e()V

    return-void
.end method


# virtual methods
.method public d(I)Lo/Rect;
    .locals 2

    .line 250
    iget-object v0, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget-object v0, v0, Lo/Bitmap;->e:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget v1, v1, Lo/Bitmap;->c:I

    add-int/2addr p1, v1

    .line 252
    iget v1, p0, Lo/Bitmap$ActionBar;->e:I

    if-ltz v1, :cond_0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 255
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Rect;

    return-object p1
.end method

.method e()V
    .locals 5

    .line 277
    iget-object v0, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget-object v0, v0, Lo/Bitmap;->e:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->getExpandedItem()Lo/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v1, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget-object v1, v1, Lo/Bitmap;->e:Lo/Mode;

    invoke-virtual {v1}, Lo/Mode;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 282
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Rect;

    if-ne v4, v0, :cond_0

    .line 284
    iput v3, p0, Lo/Bitmap$ActionBar;->e:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lo/Bitmap$ActionBar;->e:I

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 240
    iget-object v0, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget-object v0, v0, Lo/Bitmap;->e:Lo/Mode;

    invoke-virtual {v0}, Lo/Mode;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget v1, v1, Lo/Bitmap;->c:I

    sub-int/2addr v0, v1

    .line 242
    iget v1, p0, Lo/Bitmap$ActionBar;->e:I

    if-gez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lo/Bitmap$ActionBar;->d(I)Lo/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 268
    iget-object p2, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget-object p2, p2, Lo/Bitmap;->a:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lo/Bitmap$ActionBar;->d:Lo/Bitmap;

    iget v1, v1, Lo/Bitmap;->f:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 271
    :cond_0
    move-object p3, p2

    check-cast p3, Lo/Drawable$StateListAnimator;

    .line 272
    invoke-virtual {p0, p1}, Lo/Bitmap$ActionBar;->d(I)Lo/Rect;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lo/Drawable$StateListAnimator;->initialize(Lo/Rect;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lo/Bitmap$ActionBar;->e()V

    .line 295
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
