.class public final Lo/Id;
.super Lo/UnsupportedClassVersionError;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Id$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/Id$StateListAnimator;


# instance fields
.field private c:Z

.field private final d:Lo/Id$ActionBar;

.field private e:Z

.field private f:Z

.field private g:Lo/GX;

.field private h:Ljava/lang/Integer;

.field private i:I

.field private j:Ljava/lang/Integer;

.field private l:Landroidx/recyclerview/widget/RecyclerView;

.field private m:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "-",
            "Lo/GX;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Id$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Id$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Id;->a:Lo/Id$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Lo/GX;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSnap"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/UnsupportedClassVersionError;-><init>()V

    iput-object p1, p0, Lo/Id;->m:Lo/alA;

    .line 29
    new-instance p1, Lo/Id$ActionBar;

    invoke-direct {p1, p0}, Lo/Id$ActionBar;-><init>(Lo/Id;)V

    iput-object p1, p0, Lo/Id;->d:Lo/Id$ActionBar;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lo/Id;->c:Z

    return-void
.end method

.method public static final synthetic a(Lo/Id;Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/Id;->b(Landroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lo/Id;I)V
    .locals 0

    .line 13
    iput p1, p0, Lo/Id;->i:I

    return-void
.end method

.method private final b(Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 1

    .line 252
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()I

    move-result p1

    if-gt v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public static final synthetic b(Lo/Id;)I
    .locals 0

    .line 13
    iget p0, p0, Lo/Id;->i:I

    return p0
.end method

.method private final b()Lo/OfLong;
    .locals 2

    .line 101
    iget-object v0, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "attachedRecyclerView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/OfLong;

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.airbnb.epoxy.EpoxyControllerAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(I)Lo/GX;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 107
    invoke-direct {p0}, Lo/Id;->b()Lo/OfLong;

    move-result-object v1

    invoke-virtual {v1}, Lo/OfLong;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-direct {p0}, Lo/Id;->b()Lo/OfLong;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/OfLong;->c(I)Lo/BiConsumer;

    move-result-object p1

    instance-of v1, p1, Lo/GX;

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lo/GX;

    :cond_1
    return-object v0
.end method

.method public static final synthetic c(Lo/Id;I)Lo/GX;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/Id;->c(I)Lo/GX;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/Id;Lo/GX;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lo/Id;->g:Lo/GX;

    return-void
.end method

.method private final d()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 104
    iget-object v0, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "attachedRecyclerView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic d(Lo/Id;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/Id;->d()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/Id;)Ljava/lang/Integer;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/Id;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic e(Lo/Id;Ljava/lang/Integer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lo/Id;->h:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;
    .locals 2

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    check-cast v0, Landroid/view/View;

    .line 124
    invoke-super {p0, p1}, Lo/UnsupportedClassVersionError;->a(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lo/Id;->d()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 128
    invoke-direct {p0, p1}, Lo/Id;->c(I)Lo/GX;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 130
    invoke-direct {p0}, Lo/Id;->d()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 135
    :cond_0
    sget-object p1, Lo/Id;->a:Lo/Id$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I
    .locals 4

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-super {p0, p1, p2}, Lo/UnsupportedClassVersionError;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "attachedRecyclerView"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    .line 208
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v3, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    aput v1, p1, v0

    :cond_2
    return-object p1
.end method

.method public final c()V
    .locals 3

    .line 73
    sget-object v0, Lo/Id;->a:Lo/Id$StateListAnimator;

    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    const/4 v1, 0x0

    .line 74
    move-object v2, v1

    check-cast v2, Lo/GX;

    iput-object v2, p0, Lo/Id;->g:Lo/GX;

    .line 75
    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lo/Id;->h:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lo/Id;->i:I

    .line 77
    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lo/Id;->f:Z

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lo/Id;->c:Z

    .line 80
    iput-boolean v0, p0, Lo/Id;->e:Z

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$Fragment;II)I
    .locals 2

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1, p2, p3}, Lo/UnsupportedClassVersionError;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;II)I

    move-result p1

    .line 155
    iget-object p2, p0, Lo/Id;->j:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lo/Id;->c(I)Lo/GX;

    move-result-object v1

    goto :goto_1

    .line 159
    :cond_1
    iget-object v1, p0, Lo/Id;->g:Lo/GX;

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-lez p3, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/2addr v0, p2

    .line 161
    invoke-direct {p0, v0}, Lo/Id;->c(I)Lo/GX;

    move-result-object v1

    .line 163
    :goto_2
    sget-object p3, Lo/Id;->a:Lo/Id$StateListAnimator;

    move-object v0, p3

    check-cast v0, Lo/MessagePdu;

    .line 164
    check-cast p3, Lo/MessagePdu;

    if-eqz v1, :cond_6

    .line 167
    invoke-interface {v1}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_5

    .line 169
    sget-object p2, Lo/Id;->a:Lo/Id$StateListAnimator;

    check-cast p2, Lo/MessagePdu;

    .line 173
    invoke-interface {v1}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    .line 177
    :cond_5
    :goto_3
    invoke-interface {v1}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 181
    :cond_6
    :goto_4
    invoke-direct {p0, p1}, Lo/Id;->c(I)Lo/GX;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 184
    invoke-interface {p2}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 189
    :cond_7
    iput p1, p0, Lo/Id;->i:I

    .line 191
    invoke-direct {p0, p1}, Lo/Id;->c(I)Lo/GX;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Lo/GX;->o()Ljava/lang/Integer;

    move-result-object p2

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    :goto_5
    iput-object p2, p0, Lo/Id;->j:Ljava/lang/Integer;

    .line 193
    sget-object p2, Lo/Id;->a:Lo/Id$StateListAnimator;

    move-object p3, p2

    check-cast p3, Lo/MessagePdu;

    .line 194
    check-cast p2, Lo/MessagePdu;

    return p1
.end method

.method protected d(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;
    .locals 2

    .line 218
    new-instance p1, Lo/Id$TaskDescription;

    iget-object v0, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "attachedRecyclerView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lo/Id$TaskDescription;-><init>(Lo/Id;Landroid/content/Context;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2;

    return-object p1
.end method

.method public final e()Lo/alA;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/alA<",
            "Lo/GX;",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/Id;->m:Lo/alA;

    return-object v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 113
    iput-object p1, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    iget-object v0, p0, Lo/Id;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "attachedRecyclerView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lo/Id;->d:Lo/Id$ActionBar;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 115
    invoke-super {p0, p1}, Lo/UnsupportedClassVersionError;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 113
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
