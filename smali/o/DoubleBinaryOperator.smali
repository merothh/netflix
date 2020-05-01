.class public Lo/DoubleBinaryOperator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DoubleBinaryOperator$ActionBar;,
        Lo/DoubleBinaryOperator$TaskDescription;
    }
.end annotation


# static fields
.field private static final e:I


# instance fields
.field private final a:Lo/DoubleBinaryOperator$TaskDescription;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Function;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/Function;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/DoubleBinaryOperator$ActionBar;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lo/DoubleBinaryOperator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroidx/recyclerview/widget/RecyclerView$Activity;

.field private i:Z

.field private j:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget v0, Lo/AppGlobals$Activity;->d:I

    sput v0, Lo/DoubleBinaryOperator;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/DoubleBinaryOperator;->c:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/DoubleBinaryOperator;->b:Ljava/util/List;

    .line 73
    new-instance v0, Lo/DoubleBinaryOperator$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/DoubleBinaryOperator$TaskDescription;-><init>(Lo/DoubleBinaryOperator;Lo/DoubleBinaryOperator$4;)V

    iput-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    .line 76
    new-instance v0, Lo/DoubleBinaryOperator$ActionBar;

    invoke-direct {v0, p0}, Lo/DoubleBinaryOperator$ActionBar;-><init>(Lo/DoubleBinaryOperator;)V

    iput-object v0, p0, Lo/DoubleBinaryOperator;->d:Lo/DoubleBinaryOperator$ActionBar;

    .line 78
    iput-object v1, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    iput-object v1, p0, Lo/DoubleBinaryOperator;->h:Landroidx/recyclerview/widget/RecyclerView$Activity;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lo/DoubleBinaryOperator;->i:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/DoubleBinaryOperator;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lo/DoubleBinaryOperator;->g:Z

    return-void
.end method

.method static synthetic a(Lo/DoubleBinaryOperator;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 216
    :goto_2
    instance-of v2, v1, Lo/Consumer;

    if-eqz v2, :cond_3

    .line 217
    check-cast v1, Lo/Consumer;

    invoke-direct {p0, v0, v1, p2, p3}, Lo/DoubleBinaryOperator;->a(Landroidx/recyclerview/widget/RecyclerView;Lo/Consumer;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 224
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_3

    .line 225
    iget-object p2, p0, Lo/DoubleBinaryOperator;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/DoubleBinaryOperator;

    if-eqz p1, :cond_3

    const-string p2, "parent"

    .line 228
    invoke-direct {p1, p2}, Lo/DoubleBinaryOperator;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 292
    invoke-static {p1}, Lo/DoubleBinaryOperator;->b(Landroidx/recyclerview/widget/RecyclerView;)Lo/DoubleBinaryOperator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lo/DoubleBinaryOperator;

    invoke-direct {v0}, Lo/DoubleBinaryOperator;-><init>()V

    .line 295
    invoke-virtual {v0, p1}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 297
    :cond_0
    iget-object v1, p0, Lo/DoubleBinaryOperator;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView;Lo/DoubleBinaryOperator;)V
    .locals 1

    .line 62
    sget v0, Lo/DoubleBinaryOperator;->e:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0, p1}, Lo/DoubleBinaryOperator;->e(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/DoubleBinaryOperator;Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lo/DoubleBinaryOperator;->a(Landroid/view/View;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;Lo/Consumer;ZLjava/lang/String;)Z
    .locals 3

    .line 263
    iget-object p4, p2, Lo/Consumer;->itemView:Landroid/view/View;

    .line 264
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lo/DoubleBinaryOperator;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Function;

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Lo/Function;

    invoke-virtual {p2}, Lo/Consumer;->getAdapterPosition()I

    move-result v2

    invoke-direct {v1, v2}, Lo/Function;-><init>(I)V

    .line 270
    iget-object v2, p0, Lo/DoubleBinaryOperator;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lo/DoubleBinaryOperator;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p2}, Lo/Consumer;->getAdapterPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 273
    invoke-virtual {v1}, Lo/Function;->d()I

    move-result v0

    invoke-virtual {p2}, Lo/Consumer;->getAdapterPosition()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 275
    invoke-virtual {p2}, Lo/Consumer;->getAdapterPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/Function;->e(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 279
    invoke-virtual {v1, p4, p1, p3}, Lo/Function;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    invoke-virtual {v1, p2, p3}, Lo/Function;->e(Lo/Consumer;Z)V

    .line 282
    invoke-virtual {v1, p2, p3}, Lo/Function;->a(Lo/Consumer;Z)V

    .line 283
    invoke-virtual {v1, p2, p3}, Lo/Function;->b(Lo/Consumer;Z)V

    .line 284
    iget-boolean p1, p0, Lo/DoubleBinaryOperator;->i:Z

    invoke-virtual {v1, p2, p1}, Lo/Function;->c(Lo/Consumer;Z)Z

    move-result v0

    :cond_2
    return v0
.end method

.method static synthetic b(Lo/DoubleBinaryOperator;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/DoubleBinaryOperator;->b:Ljava/util/List;

    return-object p0
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView;)Lo/DoubleBinaryOperator;
    .locals 1

    .line 51
    sget v0, Lo/DoubleBinaryOperator;->e:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/DoubleBinaryOperator;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 188
    iget-object v0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lo/DoubleBinaryOperator;->h:Landroidx/recyclerview/widget/RecyclerView$Activity;

    iget-object v1, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lo/DoubleBinaryOperator;->h:Landroidx/recyclerview/widget/RecyclerView$Activity;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lo/DoubleBinaryOperator;->d:Lo/DoubleBinaryOperator$ActionBar;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    iget-object v1, p0, Lo/DoubleBinaryOperator;->d:Lo/DoubleBinaryOperator$ActionBar;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    .line 196
    iget-object v0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    iput-object v0, p0, Lo/DoubleBinaryOperator;->h:Landroidx/recyclerview/widget/RecyclerView$Activity;

    :cond_1
    return-void
.end method

.method static synthetic b(Lo/DoubleBinaryOperator;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lo/DoubleBinaryOperator;->e(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/DoubleBinaryOperator;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lo/DoubleBinaryOperator;->g:Z

    return p1
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/DoubleBinaryOperator;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lo/DoubleBinaryOperator;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/DoubleBinaryOperator;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lo/DoubleBinaryOperator;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lo/DoubleBinaryOperator;->g:Z

    return p0
.end method

.method static synthetic d(Lo/DoubleBinaryOperator;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/DoubleBinaryOperator;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic e(Lo/DoubleBinaryOperator;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/DoubleBinaryOperator;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method private e(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 159
    iget-object v0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Lo/DoubleBinaryOperator;->b()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 167
    invoke-direct {p0, p1, v1, p2}, Lo/DoubleBinaryOperator;->a(Landroid/view/View;ZLjava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 172
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 173
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eq v3, p1, :cond_1

    .line 177
    invoke-direct {p0, v3, v1, p2}, Lo/DoubleBinaryOperator;->a(Landroid/view/View;ZLjava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic e(Lo/DoubleBinaryOperator;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/DoubleBinaryOperator;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 123
    iget-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 124
    iget-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$PictureInPictureParams;)V

    const/4 v0, 0x0

    .line 125
    invoke-static {p1, v0}, Lo/DoubleBinaryOperator;->a(Landroidx/recyclerview/widget/RecyclerView;Lo/DoubleBinaryOperator;)V

    .line 126
    iput-object v0, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lo/DoubleBinaryOperator;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    iget-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 111
    iget-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112
    iget-object v0, p0, Lo/DoubleBinaryOperator;->a:Lo/DoubleBinaryOperator$TaskDescription;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$PictureInPictureParams;)V

    .line 113
    invoke-static {p1, p0}, Lo/DoubleBinaryOperator;->a(Landroidx/recyclerview/widget/RecyclerView;Lo/DoubleBinaryOperator;)V

    return-void
.end method
