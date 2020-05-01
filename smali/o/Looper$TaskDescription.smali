.class public Lo/Looper$TaskDescription;
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
    accessFlags = 0x1
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lo/Looper$FragmentManager<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:Lo/Looper$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Looper$StateListAnimator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lo/Looper;

.field private e:Z


# direct methods
.method constructor <init>(Lo/Looper;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lo/Looper$TaskDescription;->d:Lo/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lo/Looper$TaskDescription;->e:Z

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 340
    iget-boolean v0, p0, Lo/Looper$TaskDescription;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lo/Looper$TaskDescription;->e:Z

    .line 342
    iget-object v0, p0, Lo/Looper$TaskDescription;->d:Lo/Looper;

    iget-object v0, v0, Lo/Looper;->d:Lo/Looper$StateListAnimator;

    iput-object v0, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    goto :goto_1

    .line 344
    :cond_0
    iget-object v0, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/Looper$StateListAnimator;->c:Lo/Looper$StateListAnimator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    .line 346
    :goto_1
    iget-object v0, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    return-object v0
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

    .line 324
    iget-object v0, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    if-ne p1, v0, :cond_1

    .line 325
    iget-object p1, v0, Lo/Looper$StateListAnimator;->e:Lo/Looper$StateListAnimator;

    iput-object p1, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    .line 326
    iget-object p1, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/Looper$TaskDescription;->e:Z

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 332
    iget-boolean v0, p0, Lo/Looper$TaskDescription;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lo/Looper$TaskDescription;->d:Lo/Looper;

    iget-object v0, v0, Lo/Looper;->d:Lo/Looper$StateListAnimator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 335
    :cond_1
    iget-object v0, p0, Lo/Looper$TaskDescription;->a:Lo/Looper$StateListAnimator;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/Looper$StateListAnimator;->c:Lo/Looper$StateListAnimator;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lo/Looper$TaskDescription;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
