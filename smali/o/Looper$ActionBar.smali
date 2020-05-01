.class abstract Lo/Looper$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/Looper$FragmentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lo/Looper$FragmentManager<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lo/Looper$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lo/Looper$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/Looper$StateListAnimator;Lo/Looper$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lo/Looper$ActionBar;->a:Lo/Looper$StateListAnimator;

    .line 236
    iput-object p1, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    return-void
.end method

.method private b()Lo/Looper$StateListAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    iget-object v1, p0, Lo/Looper$ActionBar;->a:Lo/Looper$StateListAnimator;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, v0}, Lo/Looper$ActionBar;->b(Lo/Looper$StateListAnimator;)Lo/Looper$StateListAnimator;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method abstract a(Lo/Looper$StateListAnimator;)Lo/Looper$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract b(Lo/Looper$StateListAnimator;)Lo/Looper$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public c(Lo/Looper$StateListAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lo/Looper$ActionBar;->a:Lo/Looper$StateListAnimator;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    .line 249
    iput-object v0, p0, Lo/Looper$ActionBar;->a:Lo/Looper$StateListAnimator;

    .line 252
    :cond_0
    iget-object v0, p0, Lo/Looper$ActionBar;->a:Lo/Looper$StateListAnimator;

    if-ne v0, p1, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Lo/Looper$ActionBar;->a(Lo/Looper$StateListAnimator;)Lo/Looper$StateListAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/Looper$ActionBar;->a:Lo/Looper$StateListAnimator;

    .line 256
    :cond_1
    iget-object v0, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    if-ne v0, p1, :cond_2

    .line 257
    invoke-direct {p0}, Lo/Looper$ActionBar;->b()Lo/Looper$StateListAnimator;

    move-result-object p1

    iput-object p1, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    :cond_2
    return-void
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    .line 272
    invoke-direct {p0}, Lo/Looper$ActionBar;->b()Lo/Looper$StateListAnimator;

    move-result-object v1

    iput-object v1, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lo/Looper$ActionBar;->b:Lo/Looper$StateListAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lo/Looper$ActionBar;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
