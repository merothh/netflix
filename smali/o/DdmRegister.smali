.class public Lo/DdmRegister;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SQLiteQueryBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lo/DdmHandleHeap;",
        ">",
        "Ljava/lang/Object;",
        "Lo/SQLiteQueryBuilder;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lo/DdmHandleHeap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private d:Lo/DdmHandleExit;

.field private e:Z

.field private final j:Lcom/facebook/drawee/components/DraweeEventTracker;


# direct methods
.method public constructor <init>(Lo/DdmHandleHeap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lo/DdmRegister;->a:Z

    .line 46
    iput-boolean v0, p0, Lo/DdmRegister;->b:Z

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lo/DdmRegister;->e:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    .line 52
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->d()Lcom/facebook/drawee/components/DraweeEventTracker;

    move-result-object v0

    iput-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lo/DdmRegister;->c(Lo/DdmHandleHeap;)V

    :cond_0
    return-void
.end method

.method public static c(Lo/DdmHandleHeap;Landroid/content/Context;)Lo/DdmRegister;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DH::",
            "Lo/DdmHandleHeap;",
            ">(TDH;",
            "Landroid/content/Context;",
            ")",
            "Lo/DdmRegister<",
            "TDH;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lo/DdmRegister;

    invoke-direct {v0, p0}, Lo/DdmRegister;-><init>(Lo/DdmHandleHeap;)V

    .line 62
    invoke-virtual {v0, p1}, Lo/DdmRegister;->e(Landroid/content/Context;)V

    return-object v0
.end method

.method private e(Lo/SQLiteQueryBuilder;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    instance-of v1, v0, Lo/SQLiteStatement;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Lo/SQLiteStatement;

    invoke-interface {v0, p1}, Lo/SQLiteStatement;->e(Lo/SQLiteQueryBuilder;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 259
    iget-boolean v0, p0, Lo/DdmRegister;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->j:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lo/DdmRegister;->a:Z

    .line 264
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Lo/DdmHandleExit;->o()Lo/DdmHandleHeap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    invoke-interface {v0}, Lo/DdmHandleExit;->l()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lo/DdmRegister;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/DdmRegister;->e:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Lo/DdmRegister;->f()V

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0}, Lo/DdmRegister;->i()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lo/DdmRegister;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->f:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lo/DdmRegister;->a:Z

    .line 276
    invoke-virtual {p0}, Lo/DdmRegister;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    invoke-interface {v0}, Lo/DdmHandleExit;->n()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lo/DdmHandleExit;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lo/DdmRegister;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    invoke-interface {v0, p1}, Lo/DdmHandleExit;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 111
    iget-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->t:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lo/DdmRegister;->b:Z

    .line 113
    invoke-direct {p0}, Lo/DdmRegister;->g()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->o:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/DdmRegister;->b:Z

    .line 89
    invoke-direct {p0}, Lo/DdmRegister;->g()V

    return-void
.end method

.method public c(Lo/DdmHandleHeap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->b:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 214
    invoke-virtual {p0}, Lo/DdmRegister;->j()Z

    move-result v0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, v1}, Lo/DdmRegister;->e(Lo/SQLiteQueryBuilder;)V

    .line 217
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DdmHandleHeap;

    iput-object v1, p0, Lo/DdmRegister;->c:Lo/DdmHandleHeap;

    .line 218
    iget-object v1, p0, Lo/DdmRegister;->c:Lo/DdmHandleHeap;

    invoke-interface {v1}, Lo/DdmHandleHeap;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lo/DdmRegister;->c(Z)V

    .line 220
    invoke-direct {p0, p0}, Lo/DdmRegister;->e(Lo/SQLiteQueryBuilder;)V

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    invoke-interface {v0, p1}, Lo/DdmHandleExit;->e(Lo/DdmHandleHeap;)V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lo/DdmRegister;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->s:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->q:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 137
    iput-boolean p1, p0, Lo/DdmRegister;->e:Z

    .line 138
    invoke-direct {p0}, Lo/DdmRegister;->g()V

    return-void
.end method

.method public d()V
    .locals 5

    .line 147
    iget-boolean v0, p0, Lo/DdmRegister;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 156
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    .line 157
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 158
    invoke-virtual {p0}, Lo/DdmRegister;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "%x: Draw requested for a non-attached controller %x. %s"

    .line 153
    invoke-static {v0, v2, v1}, Lo/DexMetadataHelper;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput-boolean v3, p0, Lo/DdmRegister;->b:Z

    .line 161
    iput-boolean v3, p0, Lo/DdmRegister;->e:Z

    .line 162
    invoke-direct {p0}, Lo/DdmRegister;->g()V

    return-void
.end method

.method public e()Lo/DdmHandleHeap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lo/DdmRegister;->c:Lo/DdmHandleHeap;

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DdmHandleHeap;

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public e(Lo/DdmHandleExit;)V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lo/DdmRegister;->a:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lo/DdmRegister;->i()V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lo/DdmRegister;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->d:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 187
    iget-object v1, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lo/DdmHandleExit;->e(Lo/DdmHandleHeap;)V

    .line 189
    :cond_1
    iput-object p1, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    .line 190
    iget-object p1, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    if-eqz p1, :cond_2

    .line 191
    iget-object p1, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->e:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 192
    iget-object p1, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    iget-object v1, p0, Lo/DdmRegister;->c:Lo/DdmHandleHeap;

    invoke-interface {p1, v1}, Lo/DdmHandleExit;->e(Lo/DdmHandleHeap;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object p1, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->c:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {p1, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    :goto_0
    if-eqz v0, :cond_3

    .line 198
    invoke-direct {p0}, Lo/DdmRegister;->f()V

    :cond_3
    return-void
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 243
    iget-object v0, p0, Lo/DdmRegister;->c:Lo/DdmHandleHeap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lo/DdmHandleHeap;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Z
    .locals 2

    .line 251
    iget-object v0, p0, Lo/DdmRegister;->d:Lo/DdmHandleExit;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/DdmHandleExit;->o()Lo/DdmHandleHeap;

    move-result-object v0

    iget-object v1, p0, Lo/DdmRegister;->c:Lo/DdmHandleHeap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 291
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lo/DdmRegister;->a:Z

    const-string v2, "controllerAttached"

    .line 292
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->a(Ljava/lang/String;Z)Lo/Signature$ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lo/DdmRegister;->b:Z

    const-string v2, "holderAttached"

    .line 293
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->a(Ljava/lang/String;Z)Lo/Signature$ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lo/DdmRegister;->e:Z

    const-string v2, "drawableVisible"

    .line 294
    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->a(Ljava/lang/String;Z)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/DdmRegister;->j:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 295
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
