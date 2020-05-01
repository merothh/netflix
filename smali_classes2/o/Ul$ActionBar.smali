.class public Lo/Ul$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActionBar"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lo/Ul;


# direct methods
.method public constructor <init>(Lo/Ul;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lo/Ul$ActionBar;->c:Lo/Ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p2, p0, Lo/Ul$ActionBar;->b:I

    .line 367
    iput-object p3, p0, Lo/Ul$ActionBar;->a:Ljava/util/List;

    return-void
.end method

.method private b(Lo/Uj;)I
    .locals 4

    .line 402
    iget-object v0, p0, Lo/Ul$ActionBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 403
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 404
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 375
    instance-of v0, p1, Lo/Uj;

    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener should be attached to PostPlayItemBasic view, it was attached to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 380
    :cond_0
    check-cast p1, Lo/Uj;

    .line 382
    iget-object v0, p0, Lo/Ul$ActionBar;->c:Lo/Ul;

    invoke-direct {p0, p1}, Lo/Ul$ActionBar;->b(Lo/Uj;)I

    move-result p1

    invoke-static {v0, p1}, Lo/Ul;->a(Lo/Ul;I)I

    .line 383
    iget-object p1, p0, Lo/Ul$ActionBar;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 384
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 385
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lo/Ul$ActionBar;->c:Lo/Ul;

    invoke-static {v5}, Lo/Ul;->a(Lo/Ul;)I

    move-result v5

    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_3
    iget-object p1, p0, Lo/Ul$ActionBar;->c:Lo/Ul;

    invoke-static {p1}, Lo/Ul;->d(Lo/Ul;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "nf_postplay"

    const-string v0, "Video was full size, scale down"

    .line 394
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Lo/Ul$ActionBar;->c:Lo/Ul;

    invoke-static {p1}, Lo/Ul;->e(Lo/Ul;)V

    .line 398
    :cond_4
    iget-object p1, p0, Lo/Ul$ActionBar;->c:Lo/Ul;

    iget v0, p0, Lo/Ul$ActionBar;->b:I

    invoke-static {p1, v0, v1}, Lo/Ul;->d(Lo/Ul;IZ)V

    return-void
.end method
