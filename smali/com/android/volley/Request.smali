.class public abstract Lcom/android/volley/Request;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Request$Priority;,
        Lcom/android/volley/Request$ResourceLocationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/volley/Request<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field protected final a:J

.field private b:Lcom/android/volley/Request$ResourceLocationType;

.field protected c:I

.field private d:Z

.field private final e:Lo/FragmentContainer$Application;

.field private final f:Lo/FragmentManagerNonConfig$Activity;

.field private g:I

.field private final h:I

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lo/FragmentHostCallback;

.field private o:Z

.field private p:Lo/FragmentController;

.field private q:Ljava/lang/Object;

.field private r:Ljava/net/HttpURLConnection;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lo/ContextImpl$StateListAnimator;

.field private u:Lo/FragmentTransition;

.field private v:I

.field private w:J

.field private x:Lo/GrantedUriPermission;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lo/FragmentManagerNonConfig$Activity;)V
    .locals 3

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/volley/Request;->d:Z

    .line 59
    sget-object v1, Lcom/android/volley/Request$ResourceLocationType;->d:Lcom/android/volley/Request$ResourceLocationType;

    iput-object v1, p0, Lcom/android/volley/Request;->b:Lcom/android/volley/Request$ResourceLocationType;

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/android/volley/Request;->e:Lo/FragmentContainer$Application;

    .line 115
    iput-boolean v0, p0, Lcom/android/volley/Request;->m:Z

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/android/volley/Request;->o:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    .line 130
    iput v0, p0, Lcom/android/volley/Request;->c:I

    .line 135
    iput-boolean v0, p0, Lcom/android/volley/Request;->k:Z

    .line 161
    iput-object v1, p0, Lcom/android/volley/Request;->t:Lo/ContextImpl$StateListAnimator;

    .line 220
    iput p1, p0, Lcom/android/volley/Request;->h:I

    .line 221
    iput-object p2, p0, Lcom/android/volley/Request;->j:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/android/volley/Request;->f:Lo/FragmentManagerNonConfig$Activity;

    .line 223
    new-instance p1, Lo/ContentProviderHolder;

    invoke-direct {p1}, Lo/ContentProviderHolder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->d(Lo/FragmentController;)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/volley/Request;->a:J

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/volley/Request;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 397
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 398
    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 399
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Redirect: oldUrl %s, newUrl %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object v3, v5, v0

    .line 400
    invoke-static {v4, v5}, Lo/FragmentContainer;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p0, v2, v0

    const-string p1, "failed in build redirected url redirectedHost %s, oldUrl %s"

    .line 403
    invoke-static {v3, p1, v2}, Lo/FragmentContainer;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 589
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 590
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 603
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public A()Lo/FragmentController;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/volley/Request;->p:Lo/FragmentController;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/android/volley/Request;->m:Z

    return v0
.end method

.method public final C()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/volley/Request;->p:Lo/FragmentController;

    invoke-interface {v0}, Lo/FragmentController;->c()I

    move-result v0

    return v0
.end method

.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 636
    sget-object v0, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 736
    iget-boolean v0, p0, Lcom/android/volley/Request;->k:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    return v0
.end method

.method public G()Lo/FragmentTransition;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/android/volley/Request;->u:Lo/FragmentTransition;

    return-object v0
.end method

.method public H()Lo/GrantedUriPermission;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/volley/Request;->x:Lo/GrantedUriPermission;

    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public I_()V
    .locals 5

    .line 243
    invoke-virtual {p0}, Lcom/android/volley/Request;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "Request::releaseResources: Cronet:: HTTP disconnect! connected: %b, class: %s, to: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 245
    iget-boolean v2, p0, Lcom/android/volley/Request;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/volley/Request;->r:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/volley/Request;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-boolean v0, p0, Lcom/android/volley/Request;->d:Z

    if-eqz v0, :cond_1

    .line 247
    iput-boolean v3, p0, Lcom/android/volley/Request;->d:Z

    .line 248
    iget-object v0, p0, Lcom/android/volley/Request;->r:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public L()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/android/volley/Request;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/Request;->v:I

    return v0
.end method

.method public a(Lcom/android/volley/Request$ResourceLocationType;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/volley/Request;->b:Lcom/android/volley/Request$ResourceLocationType;

    sget-object v1, Lcom/android/volley/Request$ResourceLocationType;->d:Lcom/android/volley/Request$ResourceLocationType;

    if-ne v0, v1, :cond_0

    .line 189
    iput-object p1, p0, Lcom/android/volley/Request;->b:Lcom/android/volley/Request$ResourceLocationType;

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 327
    iget-object p1, p0, Lcom/android/volley/Request;->n:Lo/FragmentHostCallback;

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1, p0}, Lo/FragmentHostCallback;->b(Lcom/android/volley/Request;)V

    .line 349
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-wide v0, p0, Lcom/android/volley/Request;->a:J

    return-void
.end method

.method public a(Lo/FragmentHostCallback;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/volley/Request;->n:Lo/FragmentHostCallback;

    return-void
.end method

.method public a(Lo/FragmentTransition;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/android/volley/Request;->u:Lo/FragmentTransition;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 611
    iput-boolean p1, p0, Lcom/android/volley/Request;->m:Z

    return-void
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 2

    .line 763
    invoke-virtual {p0}, Lcom/android/volley/Request;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 764
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a_(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0

    return-object p1
.end method

.method public b(Lcom/android/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Lcom/android/volley/Request;->D()Lcom/android/volley/Request$Priority;

    move-result-object v0

    .line 830
    invoke-virtual {p1}, Lcom/android/volley/Request;->D()Lcom/android/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/volley/Request;->i:Ljava/lang/Integer;

    .line 835
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/android/volley/Request;->i:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    .line 836
    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/android/volley/Request;->d:Z

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/Request;->i:Ljava/lang/Integer;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/volley/Request;->q:Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/volley/Request;->j:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/volley/Request;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Request;->j:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/volley/Request;->g:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 729
    iput-boolean p1, p0, Lcom/android/volley/Request;->k:Z

    return-void
.end method

.method public c()J
    .locals 4

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/volley/Request;->w:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized c(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/Request;->s:Ljava/util/List;

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/volley/Request;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/volley/Request;->r:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->b(Lcom/android/volley/Request;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/android/volley/Request$ResourceLocationType;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/volley/Request;->b:Lcom/android/volley/Request$ResourceLocationType;

    return-object v0
.end method

.method public d(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/android/volley/Request;->f:Lo/FragmentManagerNonConfig$Activity;

    if-eqz v0, :cond_0

    .line 721
    invoke-interface {v0, p1}, Lo/FragmentManagerNonConfig$Activity;->b(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/android/volley/Request;->j:Ljava/lang/String;

    return-void
.end method

.method public d(Lo/ContextImpl$StateListAnimator;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/volley/Request;->t:Lo/ContextImpl$StateListAnimator;

    return-void
.end method

.method public d(Lo/FragmentController;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/volley/Request;->p:Lo/FragmentController;

    return-void
.end method

.method public abstract e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "TT;>;"
        }
    .end annotation
.end method

.method public e()V
    .locals 2

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/volley/Request;->w:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Lo/GrantedUriPermission;)V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/android/volley/Request;->x:Lo/GrantedUriPermission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 793
    iput v0, p0, Lcom/android/volley/Request;->v:I

    .line 797
    invoke-interface {p1}, Lo/GrantedUriPermission;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 800
    :cond_0
    iput-object p1, p0, Lcom/android/volley/Request;->x:Lo/GrantedUriPermission;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/volley/Request;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/android/volley/Request;->h:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/volley/Request;->r:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.chromium.net.urlconnection.CronetHttpURLConnection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 278
    iget v0, p0, Lcom/android/volley/Request;->h:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/volley/Request;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/android/volley/Request;->o:Z

    .line 454
    iget-object v0, p0, Lcom/android/volley/Request;->r:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/volley/Request;->n:Lo/FragmentHostCallback;

    invoke-virtual {v0, p0}, Lo/FragmentHostCallback;->e(Lcom/android/volley/Request;)V

    return-void
.end method

.method public m()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/android/volley/Request;->g:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Lo/ContextImpl$StateListAnimator;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/volley/Request;->t:Lo/ContextImpl$StateListAnimator;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/android/volley/Request;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/android/volley/Request;->o:Z

    return v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lcom/android/volley/Request;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/android/volley/Request;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/volley/Request;->o:Z

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Lcom/android/volley/Request;->D()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/volley/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()[B
    .locals 2

    .line 575
    invoke-virtual {p0}, Lcom/android/volley/Request;->u()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/volley/Request;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->b(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()[B
    .locals 2

    .line 530
    invoke-virtual {p0}, Lcom/android/volley/Request;->t()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/volley/Request;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/volley/Request;->b(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/android/volley/Request;->l:Z

    return-void
.end method
