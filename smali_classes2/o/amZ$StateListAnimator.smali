.class public final Lo/amZ$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/amZ;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/amZ;

.field private b:I

.field private final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/amZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lo/amZ$StateListAnimator;->a:Lo/amZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Lo/amZ;->d(Lo/amZ;)Lo/anb;

    move-result-object p1

    invoke-interface {p1}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/amZ$StateListAnimator;->d:Ljava/util/Iterator;

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lo/amZ$StateListAnimator;->b:I

    return-void
.end method

.method private final d()V
    .locals 3

    .line 131
    :cond_0
    iget-object v0, p0, Lo/amZ$StateListAnimator;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lo/amZ$StateListAnimator;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lo/amZ$StateListAnimator;->a:Lo/amZ;

    invoke-static {v1}, Lo/amZ;->c(Lo/amZ;)Lo/alA;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lo/amZ$StateListAnimator;->a:Lo/amZ;

    invoke-static {v2}, Lo/amZ;->a(Lo/amZ;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 134
    iput-object v0, p0, Lo/amZ$StateListAnimator;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 135
    iput v0, p0, Lo/amZ$StateListAnimator;->b:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lo/amZ$StateListAnimator;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 155
    iget v0, p0, Lo/amZ$StateListAnimator;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    invoke-direct {p0}, Lo/amZ$StateListAnimator;->d()V

    .line 157
    :cond_0
    iget v0, p0, Lo/amZ$StateListAnimator;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget v0, p0, Lo/amZ$StateListAnimator;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lo/amZ$StateListAnimator;->d()V

    .line 145
    :cond_0
    iget v0, p0, Lo/amZ$StateListAnimator;->b:I

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lo/amZ$StateListAnimator;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 148
    iput-object v2, p0, Lo/amZ$StateListAnimator;->e:Ljava/lang/Object;

    .line 149
    iput v1, p0, Lo/amZ$StateListAnimator;->b:I

    return-object v0

    .line 146
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
