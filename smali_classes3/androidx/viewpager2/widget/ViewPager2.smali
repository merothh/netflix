.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$Activity;,
        Landroidx/viewpager2/widget/ViewPager2$FragmentManager;,
        Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;,
        Landroidx/viewpager2/widget/ViewPager2$Application;,
        Landroidx/viewpager2/widget/ViewPager2$LoaderManager;,
        Landroidx/viewpager2/widget/ViewPager2$ActionBar;,
        Landroidx/viewpager2/widget/ViewPager2$Dialog;,
        Landroidx/viewpager2/widget/ViewPager2$Fragment;,
        Landroidx/viewpager2/widget/ViewPager2$TaskDescription;,
        Landroidx/viewpager2/widget/ViewPager2$PendingIntent;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;
    }
.end annotation


# static fields
.field static c:Z = true


# instance fields
.field a:Z

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field d:I

.field e:Lo/ArrayList;

.field private final f:Landroid/graphics/Rect;

.field g:Landroidx/viewpager2/widget/ViewPager2$Application;

.field private h:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

.field private i:Lo/X509EncodedKeySpec;

.field private final j:Landroid/graphics/Rect;

.field private k:Landroid/os/Parcelable;

.field private l:I

.field private m:Lo/X509EncodedKeySpec;

.field private n:Lo/AnnotatedElement;

.field private o:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private p:Lo/RSAPrivateKeySpec;

.field private q:Lo/Arrays;

.field private r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

.field private s:Z

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Lo/X509EncodedKeySpec;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lo/X509EncodedKeySpec;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lo/X509EncodedKeySpec;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 158
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Lo/X509EncodedKeySpec;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lo/X509EncodedKeySpec;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lo/X509EncodedKeySpec;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    .line 125
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Lo/X509EncodedKeySpec;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Lo/X509EncodedKeySpec;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lo/X509EncodedKeySpec;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    .line 132
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    const/4 p3, 0x1

    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 153
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 168
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 292
    sget-object v0, Lo/PSSParameterSpec$StateListAnimator;->g:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 294
    sget-object v3, Lo/PSSParameterSpec$StateListAnimator;->g:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/viewpager2/widget/ViewPager2;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 297
    :cond_0
    :try_start_0
    sget p1, Lo/PSSParameterSpec$StateListAnimator;->i:I

    const/4 p2, 0x0

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 297
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    throw p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Activity<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 179
    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$FragmentManager;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$StateListAnimator;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    .line 183
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$PendingIntent;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$PendingIntent;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lo/FilterWriter;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 185
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 187
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$TaskDescription;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$TaskDescription;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 189
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 190
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->l()Landroidx/recyclerview/widget/RecyclerView$PictureInPictureParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$PictureInPictureParams;)V

    .line 198
    new-instance p1, Lo/ArrayList;

    invoke-direct {p1, p0}, Lo/ArrayList;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    .line 200
    new-instance p1, Lo/RSAPrivateKeySpec;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0, p2, v0}, Lo/RSAPrivateKeySpec;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lo/ArrayList;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lo/RSAPrivateKeySpec;

    .line 201
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$Fragment;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$Fragment;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lo/AnnotatedElement;

    .line 202
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lo/AnnotatedElement;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lo/AnnotatedElement;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 207
    new-instance p1, Lo/X509EncodedKeySpec;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lo/X509EncodedKeySpec;-><init>(I)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    .line 208
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    invoke-virtual {p1, p2}, Lo/ArrayList;->a(Landroidx/viewpager2/widget/ViewPager2$ActionBar;)V

    .line 212
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$5;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$5;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 230
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 242
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    invoke-virtual {v0, p1}, Lo/X509EncodedKeySpec;->e(Landroidx/viewpager2/widget/ViewPager2$ActionBar;)V

    .line 243
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    invoke-virtual {p1, p2}, Lo/X509EncodedKeySpec;->e(Landroidx/viewpager2/widget/ViewPager2$ActionBar;)V

    .line 246
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2$Application;->a(Lo/X509EncodedKeySpec;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 247
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lo/X509EncodedKeySpec;

    invoke-virtual {p1, p2}, Lo/X509EncodedKeySpec;->e(Landroidx/viewpager2/widget/ViewPager2$ActionBar;)V

    .line 251
    new-instance p1, Lo/Arrays;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Lo/Arrays;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Lo/Arrays;

    .line 252
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Lo/Arrays;

    invoke-virtual {p1, p2}, Lo/X509EncodedKeySpec;->e(Landroidx/viewpager2/widget/ViewPager2$ActionBar;)V

    .line 254
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l()Landroidx/recyclerview/widget/RecyclerView$PictureInPictureParams;
    .locals 1

    .line 263
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$3;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private n()V
    .locals 4

    .line 340
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 349
    instance-of v3, v0, Lo/AbstractCollection;

    if-eqz v3, :cond_2

    .line 350
    move-object v3, v0

    check-cast v3, Lo/AbstractCollection;

    invoke-interface {v3, v2}, Lo/AbstractCollection;->b(Landroid/os/Parcelable;)V

    :cond_2
    const/4 v2, 0x0

    .line 352
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/os/Parcelable;

    :cond_3
    const/4 v2, 0x0

    .line 355
    iget v3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 356
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    .line 357
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 358
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$Application;->e()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    .line 556
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 557
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->d()I

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1
.end method

.method b()V
    .locals 2

    .line 537
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lo/AnnotatedElement;

    if-eqz v0, :cond_2

    .line 541
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lo/AnnotatedElement;->a(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 547
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->h()I

    move-result v1

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lo/X509EncodedKeySpec;

    invoke-virtual {v1, v0}, Lo/X509EncodedKeySpec;->c(I)V

    :cond_1
    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    return-void

    .line 538
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(IZ)V
    .locals 8

    .line 614
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->e()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 617
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 618
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    :cond_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    .line 626
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 627
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 629
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v0}, Lo/ArrayList;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 633
    :cond_3
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    return-void

    .line 641
    :cond_4
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    int-to-double v0, v0

    .line 642
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 643
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$Application;->a()V

    .line 645
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v2}, Lo/ArrayList;->e()Z

    move-result v2

    if-nez v2, :cond_5

    .line 647
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v0}, Lo/ArrayList;->c()D

    move-result-wide v0

    .line 652
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v2, p1, p2}, Lo/ArrayList;->e(IZ)V

    if-nez p2, :cond_6

    .line 654
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_6
    int-to-double v2, p1

    sub-double v4, v2, v0

    .line 659
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_8

    .line 660
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    cmpl-double v4, v2, v0

    if-lez v4, :cond_7

    add-int/lit8 v0, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p1, 0x3

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 662
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$Dialog;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$Dialog;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 664
    :cond_8
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method

.method public c()Z
    .locals 2

    .line 577
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    .line 855
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 860
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    .line 573
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()I

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 365
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    .line 367
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v1

    .line 368
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 375
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->n()V

    return-void
.end method

.method public e()Landroidx/recyclerview/widget/RecyclerView$Activity;
    .locals 1

    .line 482
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 761
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Lo/RSAPrivateKeySpec;

    invoke-virtual {v0}, Lo/RSAPrivateKeySpec;->a()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 850
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 285
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$Application;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 687
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v0}, Lo/ArrayList;->b()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 675
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    return v0
.end method

.method public k()V
    .locals 5

    .line 930
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Lo/Arrays;

    invoke-virtual {v0}, Lo/Arrays;->c()Landroidx/viewpager2/widget/ViewPager2$LoaderManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lo/ArrayList;

    invoke-virtual {v0}, Lo/ArrayList;->c()D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    sub-double/2addr v0, v3

    double-to-float v0, v0

    .line 936
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 937
    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Lo/Arrays;

    invoke-virtual {v3, v2, v0, v1}, Lo/Arrays;->c(IFI)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 950
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$Application;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 516
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    .line 517
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 521
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 523
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 524
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 526
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 527
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 530
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 498
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    .line 499
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 500
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 501
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 503
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 504
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 506
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    invoke-static {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 510
    invoke-static {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p2

    .line 509
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 328
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 333
    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 334
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->e:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    .line 336
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/os/Parcelable;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 309
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 311
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->a:I

    .line 312
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->e:I

    .line 314
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 315
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    .line 318
    instance-of v2, v0, Lo/AbstractCollection;

    if-eqz v2, :cond_2

    .line 319
    check-cast v0, Lo/AbstractCollection;

    invoke-interface {v0}, Lo/AbstractCollection;->d()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->c:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 488
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support direct child views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 956
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$Application;->b(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$Application;->d(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 959
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 2

    .line 458
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    .line 459
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$Application;->c(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 460
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 461
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    const/4 v0, 0x0

    .line 462
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 463
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->n()V

    .line 464
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$Application;->e(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 465
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 603
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(IZ)V

    return-void

    .line 604
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 944
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$Application;->h()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    .line 838
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 568
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(I)V

    .line 569
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$Application;->c()V

    return-void
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$LoaderManager;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 901
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-nez v1, :cond_0

    .line 902
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    const/4 v1, 0x1

    .line 903
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 905
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 909
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    const/4 v0, 0x0

    .line 910
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    .line 916
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Lo/Arrays;

    invoke-virtual {v0}, Lo/Arrays;->c()Landroidx/viewpager2/widget/ViewPager2$LoaderManager;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-void

    .line 919
    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Lo/Arrays;

    invoke-virtual {v0, p1}, Lo/Arrays;->c(Landroidx/viewpager2/widget/ViewPager2$LoaderManager;)V

    .line 920
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->k()V

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 793
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/ViewPager2$Application;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$Application;->i()V

    return-void
.end method
