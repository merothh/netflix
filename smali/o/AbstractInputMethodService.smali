.class public Lo/AbstractInputMethodService;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:[B

.field protected b:[B

.field protected final c:Z

.field protected final d:Ljava/lang/Object;

.field protected final e:Lo/IInputMethodWrapper;

.field protected f:[C

.field protected j:[C


# direct methods
.method public constructor <init>(Lo/IInputMethodWrapper;Ljava/lang/Object;Z)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    .line 104
    iput-object p2, p0, Lo/AbstractInputMethodService;->d:Ljava/lang/Object;

    .line 105
    iput-boolean p3, p0, Lo/AbstractInputMethodService;->c:Z

    return-void
.end method

.method private i()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer smaller than original"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lo/AbstractInputMethodService;->a:[B

    invoke-virtual {p0, p1, v0}, Lo/AbstractInputMethodService;->a([B[B)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lo/AbstractInputMethodService;->a:[B

    .line 221
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lo/IInputMethodWrapper;->b(I[B)V

    :cond_0
    return-void
.end method

.method protected final a([B[B)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 282
    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/AbstractInputMethodService;->i()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lo/AbstractInputMethodService;->j:[C

    invoke-virtual {p0, p1, v0}, Lo/AbstractInputMethodService;->b([C[C)V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lo/AbstractInputMethodService;->j:[C

    .line 257
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo/IInputMethodWrapper;->d(I[C)V

    :cond_0
    return-void
.end method

.method public a(I)[B
    .locals 2

    .line 167
    iget-object v0, p0, Lo/AbstractInputMethodService;->b:[B

    invoke-virtual {p0, v0}, Lo/AbstractInputMethodService;->e(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo/IInputMethodWrapper;->e(II)[B

    move-result-object p1

    iput-object p1, p0, Lo/AbstractInputMethodService;->b:[B

    return-object p1
.end method

.method public a()[C
    .locals 2

    .line 201
    iget-object v0, p0, Lo/AbstractInputMethodService;->j:[C

    invoke-virtual {p0, v0}, Lo/AbstractInputMethodService;->e(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/IInputMethodWrapper;->e(I)[C

    move-result-object v0

    iput-object v0, p0, Lo/AbstractInputMethodService;->j:[C

    return-object v0
.end method

.method public b()Lo/KeyboardView;
    .locals 2

    .line 137
    new-instance v0, Lo/KeyboardView;

    iget-object v1, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    invoke-direct {v0, v1}, Lo/KeyboardView;-><init>(Lo/IInputMethodWrapper;)V

    return-object v0
.end method

.method protected final b([C[C)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 287
    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo/AbstractInputMethodService;->i()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lo/AbstractInputMethodService;->c:Z

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/AbstractInputMethodService;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public d([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lo/AbstractInputMethodService;->b:[B

    invoke-virtual {p0, p1, v0}, Lo/AbstractInputMethodService;->a([B[B)V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lo/AbstractInputMethodService;->b:[B

    .line 232
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo/IInputMethodWrapper;->b(I[B)V

    :cond_0
    return-void
.end method

.method public d([C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lo/AbstractInputMethodService;->f:[C

    invoke-virtual {p0, p1, v0}, Lo/AbstractInputMethodService;->b([C[C)V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lo/AbstractInputMethodService;->f:[C

    .line 266
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lo/IInputMethodWrapper;->d(I[C)V

    :cond_0
    return-void
.end method

.method protected final e(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()[B
    .locals 2

    .line 146
    iget-object v0, p0, Lo/AbstractInputMethodService;->a:[B

    invoke-virtual {p0, v0}, Lo/AbstractInputMethodService;->e(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lo/AbstractInputMethodService;->e:Lo/IInputMethodWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/IInputMethodWrapper;->d(I)[B

    move-result-object v0

    iput-object v0, p0, Lo/AbstractInputMethodService;->a:[B

    return-object v0
.end method
