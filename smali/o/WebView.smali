.class public abstract Lo/WebView;
.super Lo/DESKeySpec;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebView$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/WebViewClient$Application;",
        ">",
        "Lo/DESKeySpec;"
    }
.end annotation


# static fields
.field public static final e:Lo/WebView$Activity;


# instance fields
.field private final a:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/WebStorage;

.field private f:I

.field private g:F

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/Map<",
            "TT;",
            "Lo/WebViewClient<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Lo/WebViewClient<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/animation/AnimatorListenerAdapter;

.field private o:Lo/WebViewClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WebViewClient<",
            "TT;>;"
        }
    .end annotation
.end field

.field private p:Lo/WebViewClient$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private t:Lo/WebViewDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WebViewDatabase<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/WebView$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WebView$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lo/WebViewClient$Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lo/WebViewClient<",
            "TT;>;>;TT;)V"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateTransitions"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialState"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lo/DESKeySpec;-><init>()V

    .line 42
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create<Boolean>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/WebView;->a:Lio/reactivex/subjects/BehaviorSubject;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lo/WebView;->g:F

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/WebView;->i:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/WebView;->k:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lo/WebView;->l:Ljava/util/Map;

    .line 56
    new-instance v0, Lo/WebView$StateListAnimator;

    invoke-direct {v0, p0}, Lo/WebView$StateListAnimator;-><init>(Lo/WebView;)V

    check-cast v0, Lo/WebViewDatabase;

    iput-object v0, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    .line 81
    iput-object p3, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    .line 95
    iget-object p3, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    invoke-direct {p0, p3}, Lo/WebView;->a(Lo/WebViewClient$Application;)V

    .line 97
    invoke-static {}, Lo/aek;->h()Z

    move-result p3

    if-nez p3, :cond_0

    .line 98
    sget-object p3, Lo/WebSettings;->d:Lo/WebSettings;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lo/WebSettings;->e(Ljava/lang/String;Z)Lio/reactivex/Single;

    move-result-object p3

    .line 99
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p3

    const-string v0, "NetflixLottieHelperV2.lo\u2026dSchedulers.mainThread())"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$1;-><init>(Lo/WebView;)V

    check-cast v0, Lo/alA;

    .line 109
    new-instance v1, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/lottie/drawables/StatefulLottieDrawable$2;-><init>(Lo/WebView;Ljava/lang/String;)V

    check-cast v1, Lo/alA;

    .line 100
    invoke-static {p3, v1, v0}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    .line 118
    invoke-direct {p0, p2}, Lo/WebView;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/WebViewClient<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 147
    check-cast p1, Ljava/lang/Iterable;

    .line 365
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WebViewClient;

    .line 148
    iget-object v1, p0, Lo/WebView;->i:Ljava/util/Map;

    invoke-interface {v0}, Lo/WebViewClient;->e()Lo/WebViewClient$Application;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 149
    iget-object v2, p0, Lo/WebView;->i:Ljava/util/Map;

    invoke-interface {v0}, Lo/WebViewClient;->e()Lo/WebViewClient$Application;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-interface {v0}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 152
    iget-object v1, p0, Lo/WebView;->k:Ljava/util/Map;

    invoke-interface {v0}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 153
    iget-object v2, p0, Lo/WebView;->k:Ljava/util/Map;

    invoke-interface {v0}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 151
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate from and to transition pair "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_4
    return-void
.end method

.method public static final synthetic a(Lo/WebView;Lo/WebViewClient$Application;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/WebView;->a(Lo/WebViewClient$Application;)V

    return-void
.end method

.method private final a(Lo/WebViewClient$Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 134
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 135
    iget-boolean v0, p0, Lo/WebView;->j:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lo/WebView;->e(Lo/WebViewClient$Application;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 136
    :goto_0
    iget-object v0, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 137
    iput-object p1, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object p1, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Lo/WebView;->setBounds(IIII)V

    .line 141
    :cond_1
    invoke-virtual {p0}, Lo/WebView;->invalidateSelf()V

    .line 143
    :cond_2
    invoke-direct {p0}, Lo/WebView;->w()V

    return-void
.end method

.method private final b(Lo/WebViewClient$Application;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 266
    invoke-interface {p1}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final c(II)V
    .locals 2

    .line 270
    invoke-virtual {p0}, Lo/WebView;->h()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 271
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    goto :goto_0

    .line 273
    :cond_0
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 275
    :goto_0
    invoke-virtual {p0, p1, p2}, Lo/WebView;->b(II)V

    .line 276
    invoke-virtual {p0}, Lo/WebView;->d()V

    return-void
.end method

.method public static final synthetic c(Lo/WebView;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lo/WebView;->j:Z

    return-void
.end method

.method public static final synthetic d(Lo/WebView;)Lo/WebViewClient;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/WebView;->o:Lo/WebViewClient;

    return-object p0
.end method

.method private final e(Lo/WebViewClient$Application;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lo/WebView;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 359
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 124
    invoke-interface {p1, v0}, Lo/WebViewClient$Application;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lo/WebView;->l:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final synthetic e(Lo/WebView;Lo/WebViewClient;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/WebView;->o:Lo/WebViewClient;

    return-void
.end method

.method public static synthetic e(Lo/WebView;Lo/WebViewClient;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 298
    invoke-interface {p1}, Lo/WebViewClient;->e()Lo/WebViewClient$Application;

    move-result-object p2

    invoke-interface {p2}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/WebView;->e(Lo/WebViewClient;Ljava/lang/Integer;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startTransition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final w()V
    .locals 6

    .line 280
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 281
    invoke-virtual {p0}, Lo/WebView;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 284
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 289
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 291
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 292
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lo/DESKeySpec;->a(F)V

    .line 220
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lo/WebView;->g:F

    return-void
.end method

.method public final c(Lo/WebViewClient$Application;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "newState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    move-object v1, v0

    check-cast v1, Lo/MessagePdu;

    .line 179
    iget-boolean v1, p0, Lo/WebView;->j:Z

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lo/WebView;->d(Lo/WebViewClient$Application;)V

    goto/16 :goto_2

    .line 182
    :cond_0
    iget-object v1, p0, Lo/WebView;->o:Lo/WebViewClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 183
    check-cast v0, Lo/MessagePdu;

    .line 184
    invoke-interface {v1}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 185
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 186
    invoke-virtual {p0}, Lo/WebView;->f()I

    move-result v0

    .line 187
    sget-object v1, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 188
    iget-object v1, p0, Lo/WebView;->k:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 189
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/WebViewClient;

    .line 190
    invoke-interface {v4, v0}, Lo/WebViewClient;->e(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 189
    :cond_2
    check-cast v2, Lo/WebViewClient;

    :cond_3
    if-eqz v2, :cond_4

    .line 194
    sget-object p1, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lo/WebView;->e(Lo/WebViewClient;Ljava/lang/Integer;)V

    goto :goto_0

    .line 197
    :cond_4
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 198
    invoke-virtual {p0, p1}, Lo/WebView;->d(Lo/WebViewClient$Application;)V

    :cond_5
    :goto_0
    return-void

    .line 203
    :cond_6
    iget-object v0, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lo/WebView;->i:Ljava/util/Map;

    iget-object v1, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 205
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WebViewClient;

    goto :goto_1

    :cond_7
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_8

    const/4 p1, 0x2

    .line 209
    invoke-static {p0, v0, v2, p1, v2}, Lo/WebView;->e(Lo/WebView;Lo/WebViewClient;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_2

    .line 211
    :cond_8
    invoke-virtual {p0, p1}, Lo/WebView;->d(Lo/WebViewClient$Application;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final d(Lo/WebStorage;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const-string v0, "netflixComposition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/WebView;->a(Lo/DESedeKeySpec;)Z

    .line 162
    invoke-virtual {p1}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Lo/DESedeKeySpec;->n()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    invoke-virtual {p1}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Lo/DESedeKeySpec;->a()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/WebView;->f:I

    .line 163
    invoke-virtual {p1}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Lo/DESedeKeySpec;->g()F

    move-result v0

    invoke-virtual {p1}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Lo/DESedeKeySpec;->f()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/WebView;->h:I

    .line 164
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 170
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 171
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 372
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "window"

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 172
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lo/WebView;->e(F)V

    .line 173
    iput-object p1, p0, Lo/WebView;->c:Lo/WebStorage;

    return-void

    .line 171
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lo/WebViewClient$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    .line 86
    check-cast v0, Lo/WebViewClient;

    iput-object v0, p0, Lo/WebView;->o:Lo/WebViewClient;

    .line 87
    invoke-virtual {p0}, Lo/WebView;->p()V

    .line 88
    iput-object p1, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    .line 89
    invoke-interface {p1}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/WebView;->a(I)V

    .line 90
    invoke-direct {p0, p1}, Lo/WebView;->a(Lo/WebViewClient$Application;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    invoke-direct {p0, v0}, Lo/WebView;->b(Lo/WebViewClient$Application;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-super {p0, p1}, Lo/DESKeySpec;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final e(Lo/WebViewClient;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WebViewClient<",
            "TT;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "transition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lo/WebView;->e:Lo/WebView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 301
    iget-object v0, p0, Lo/WebView;->n:Landroid/animation/AnimatorListenerAdapter;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lo/WebView;->e(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    invoke-interface {p1}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object v0

    invoke-interface {v0}, Lo/WebViewClient$Application;->e()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0, v2}, Lo/WebView;->a(I)V

    .line 307
    iget-object p2, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    invoke-interface {p2, p1}, Lo/WebViewDatabase;->e(Lo/WebViewClient;)V

    .line 308
    iget-object p2, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    invoke-interface {p2, p1}, Lo/WebViewDatabase;->a(Lo/WebViewClient;)V

    .line 309
    check-cast v1, Lo/WebViewClient;

    iput-object v1, p0, Lo/WebView;->o:Lo/WebViewClient;

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 312
    invoke-interface {p1}, Lo/WebViewClient;->c()Lo/WebViewClient$Application;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/WebView;->d(Lo/WebViewClient$Application;)V

    .line 313
    iget-object p2, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    invoke-interface {p2, p1}, Lo/WebViewDatabase;->e(Lo/WebViewClient;)V

    .line 314
    iget-object p2, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    invoke-interface {p2, p1}, Lo/WebViewDatabase;->a(Lo/WebViewClient;)V

    .line 315
    check-cast v1, Lo/WebViewClient;

    iput-object v1, p0, Lo/WebView;->o:Lo/WebViewClient;

    goto :goto_2

    .line 318
    :cond_1
    iput-object p1, p0, Lo/WebView;->o:Lo/WebViewClient;

    .line 319
    invoke-interface {p1}, Lo/WebViewClient;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lo/WebView;->d(I)V

    .line 320
    new-instance v1, Lo/WebView$TaskDescription;

    invoke-direct {v1, p0, p1}, Lo/WebView$TaskDescription;-><init>(Lo/WebView;Lo/WebViewClient;)V

    check-cast v1, Landroid/animation/AnimatorListenerAdapter;

    iput-object v1, p0, Lo/WebView;->n:Landroid/animation/AnimatorListenerAdapter;

    .line 336
    iget-object v1, p0, Lo/WebView;->n:Landroid/animation/AnimatorListenerAdapter;

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v1}, Lo/WebView;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lo/amh;->a(II)I

    move-result v1

    if-lez v1, :cond_3

    int-to-float v1, v2

    .line 339
    iget v2, p0, Lo/WebView;->g:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lo/WebView;->a(F)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lo/WebView;->c(II)V

    goto :goto_1

    .line 344
    :cond_3
    iget v1, p0, Lo/WebView;->g:F

    invoke-virtual {p0, v1}, Lo/WebView;->a(F)V

    .line 345
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lo/WebView;->c(II)V

    .line 348
    :goto_1
    iget-object p2, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    invoke-interface {p2, p1}, Lo/WebViewDatabase;->e(Lo/WebViewClient;)V

    :goto_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 235
    iget-object v0, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lo/DESKeySpec;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 233
    iget-object v0, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lo/DESKeySpec;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Lo/DESKeySpec;->setBounds(IIII)V

    .line 246
    iget-object v0, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Lo/DESKeySpec;->setBounds(Landroid/graphics/Rect;)V

    .line 240
    iget-object v0, p0, Lo/WebView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    if-nez p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lo/WebView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lo/WebView;->p()V

    .line 253
    :cond_0
    invoke-super {p0, p1, p2}, Lo/DESKeySpec;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final u()Lo/WebViewClient$Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/WebView;->p:Lo/WebViewClient$Application;

    return-object v0
.end method

.method public final v()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/WebView;->a:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public final y()Lo/WebViewDatabase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/WebViewDatabase<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/WebView;->t:Lo/WebViewDatabase;

    return-object v0
.end method
