.class public Lo/Watchable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Watchable$Activity;
    }
.end annotation


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/Spanned<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lo/CharsetDecoder;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static c:Lo/CharsetDecoder;


# instance fields
.field private d:Lo/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Spanned<",
            "Lo/GatheringByteChannel;",
            "Lo/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Spanned<",
            "Lo/GatheringByteChannel;",
            "Lo/Spanned<",
            "Lo/GatheringByteChannel;",
            "Lo/CharsetDecoder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lo/BigInteger;

    invoke-direct {v0}, Lo/BigInteger;-><init>()V

    sput-object v0, Lo/Watchable;->c:Lo/CharsetDecoder;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/Watchable;->b:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/Watchable;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    iput-object v0, p0, Lo/Watchable;->d:Lo/Spanned;

    .line 86
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    iput-object v0, p0, Lo/Watchable;->e:Lo/Spanned;

    return-void
.end method

.method static a()Lo/Spanned;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Spanned<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lo/CharsetDecoder;",
            ">;>;"
        }
    .end annotation

    .line 195
    sget-object v0, Lo/Watchable;->b:Ljava/lang/ThreadLocal;

    .line 196
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Spanned;

    if-eqz v0, :cond_0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    .line 204
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 205
    sget-object v2, Lo/Watchable;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static c(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V
    .locals 2

    .line 303
    invoke-static {}, Lo/Watchable;->a()Lo/Spanned;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/Spanned;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CharsetDecoder;

    .line 307
    invoke-virtual {v1, p0}, Lo/CharsetDecoder;->pause(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p1, p0, v0}, Lo/CharsetDecoder;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 316
    :cond_1
    invoke-static {p0}, Lo/GatheringByteChannel;->b(Landroid/view/View;)Lo/GatheringByteChannel;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 318
    invoke-virtual {p0}, Lo/GatheringByteChannel;->a()V

    :cond_2
    return-void
.end method

.method public static d(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V
    .locals 1

    .line 402
    sget-object v0, Lo/Watchable;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object v0, Lo/Watchable;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 409
    sget-object p1, Lo/Watchable;->c:Lo/CharsetDecoder;

    .line 411
    :cond_0
    invoke-virtual {p1}, Lo/CharsetDecoder;->clone()Lo/CharsetDecoder;

    move-result-object p1

    .line 412
    invoke-static {p0, p1}, Lo/Watchable;->c(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V

    const/4 v0, 0x0

    .line 413
    invoke-static {p0, v0}, Lo/GatheringByteChannel;->d(Landroid/view/View;Lo/GatheringByteChannel;)V

    .line 414
    invoke-static {p0, p1}, Lo/Watchable;->e(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V

    :cond_1
    return-void
.end method

.method private static e(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Lo/Watchable$Activity;

    invoke-direct {v0, p1, p0}, Lo/Watchable$Activity;-><init>(Lo/CharsetDecoder;Landroid/view/ViewGroup;)V

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method
