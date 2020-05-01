.class public Lo/StringIndexOutOfBoundsException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Void$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StringIndexOutOfBoundsException$Application;,
        Lo/StringIndexOutOfBoundsException$Activity;
    }
.end annotation


# instance fields
.field final a:Lo/StringIndexOutOfBoundsException$Application;

.field b:Ljava/lang/Runnable;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/StringIndexOutOfBoundsException$Activity;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/StringIndexOutOfBoundsException$Activity;",
            ">;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Lo/Void;

.field private g:I

.field private j:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/StringIndexOutOfBoundsException$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/StringIndexOutOfBoundsException$Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lo/StringIndexOutOfBoundsException;-><init>(Lo/StringIndexOutOfBoundsException$Application;Z)V

    return-void
.end method

.method constructor <init>(Lo/StringIndexOutOfBoundsException$Application;Z)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lo/CharArrayReader$Application;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lo/CharArrayReader$Application;-><init>(I)V

    iput-object v0, p0, Lo/StringIndexOutOfBoundsException;->j:Lo/CharArrayReader$Activity;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lo/StringIndexOutOfBoundsException;->g:I

    .line 76
    iput-object p1, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    .line 77
    iput-boolean p2, p0, Lo/StringIndexOutOfBoundsException;->e:Z

    .line 78
    new-instance p1, Lo/Void;

    invoke-direct {p1, p0}, Lo/Void;-><init>(Lo/Void$TaskDescription;)V

    iput-object p1, p0, Lo/StringIndexOutOfBoundsException;->f:Lo/Void;

    return-void
.end method

.method private a(II)I
    .locals 6

    .line 330
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    .line 332
    iget-object v3, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/StringIndexOutOfBoundsException$Activity;

    .line 333
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    .line 335
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-ge v2, v4, :cond_0

    .line 336
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 337
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    goto :goto_1

    .line 339
    :cond_0
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    .line 340
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    .line 344
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ne v2, v4, :cond_3

    if-ne p2, v1, :cond_1

    .line 346
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    goto :goto_2

    :cond_1
    if-ne p2, v5, :cond_2

    .line 348
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v1, :cond_4

    .line 354
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    goto :goto_3

    :cond_4
    if-ne p2, v5, :cond_5

    .line 356
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 361
    :cond_6
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    .line 364
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 365
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    goto :goto_4

    :cond_7
    if-ne p2, v5, :cond_c

    .line 367
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 368
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    goto :goto_4

    .line 372
    :cond_8
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-gt v2, p1, :cond_a

    .line 373
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-ne v2, v1, :cond_9

    .line 374
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    sub-int/2addr p1, v2

    goto :goto_4

    .line 375
    :cond_9
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-ne v2, v5, :cond_c

    .line 376
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-ne p2, v1, :cond_b

    .line 380
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    add-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    goto :goto_4

    :cond_b
    if-ne p2, v5, :cond_c

    .line 382
    iget v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    sub-int/2addr v2, v1

    iput v2, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 395
    :cond_d
    iget-object p2, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    .line 396
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/StringIndexOutOfBoundsException$Activity;

    .line 397
    iget v1, v0, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-ne v1, v2, :cond_f

    .line 398
    iget v1, v0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget v3, v0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-eq v1, v3, :cond_e

    iget v1, v0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-gez v1, :cond_10

    .line 399
    :cond_e
    iget-object v1, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v0}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    goto :goto_6

    .line 402
    :cond_f
    iget v1, v0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-gtz v1, :cond_10

    .line 403
    iget-object v1, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v0}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method private a(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 10

    .line 134
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 136
    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v1, v2

    .line 138
    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v2, v1, :cond_5

    .line 140
    iget-object v8, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v8, v2}, Lo/StringIndexOutOfBoundsException$Application;->b(I)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    .line 141
    invoke-direct {p0, v2}, Lo/StringIndexOutOfBoundsException;->e(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v9, :cond_1

    .line 162
    invoke-virtual {p0, v7, v0, v4, v6}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object v5

    .line 163
    invoke-direct {p0, v5}, Lo/StringIndexOutOfBoundsException;->h(Lo/StringIndexOutOfBoundsException$Activity;)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 151
    invoke-virtual {p0, v7, v0, v4, v6}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object v5

    .line 152
    invoke-direct {p0, v5}, Lo/StringIndexOutOfBoundsException;->b(Lo/StringIndexOutOfBoundsException$Activity;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v5, :cond_4

    sub-int/2addr v2, v4

    sub-int/2addr v1, v4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/2addr v2, v9

    move v5, v6

    goto :goto_0

    .line 176
    :cond_5
    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-eq v4, v1, :cond_6

    .line 177
    invoke-virtual {p0, p1}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 178
    invoke-virtual {p0, v7, v0, v4, v6}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    :cond_6
    if-nez v5, :cond_7

    .line 181
    invoke-direct {p0, p1}, Lo/StringIndexOutOfBoundsException;->b(Lo/StringIndexOutOfBoundsException$Activity;)V

    goto :goto_6

    .line 183
    :cond_7
    invoke-direct {p0, p1}, Lo/StringIndexOutOfBoundsException;->h(Lo/StringIndexOutOfBoundsException$Activity;)V

    :goto_6
    return-void
.end method

.method private b(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 12

    .line 231
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    .line 245
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    invoke-direct {p0, v0, v2}, Lo/StringIndexOutOfBoundsException;->a(II)I

    move-result v0

    .line 250
    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 252
    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v7, v0

    move v8, v2

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 262
    :goto_1
    iget v9, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-ge v0, v9, :cond_7

    .line 263
    iget v9, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    .line 264
    iget v10, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    invoke-direct {p0, v9, v10}, Lo/StringIndexOutOfBoundsException;->a(II)I

    move-result v9

    .line 269
    iget v10, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-eq v10, v4, :cond_4

    if-eq v10, v5, :cond_3

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_2

    :goto_2
    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    if-ne v9, v7, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 281
    :cond_5
    iget v10, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    iget-object v11, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object v7

    .line 285
    invoke-virtual {p0, v7, v8}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;I)V

    .line 286
    invoke-virtual {p0, v7}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 287
    iget v7, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-ne v7, v5, :cond_6

    add-int/2addr v8, v2

    :cond_6
    move v7, v9

    const/4 v2, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_7
    iget-object v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    .line 295
    invoke-virtual {p0, p1}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    if-lez v2, :cond_8

    .line 297
    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    invoke-virtual {p0, p1, v7, v2, v0}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1, v8}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;I)V

    .line 302
    invoke-virtual {p0, p1}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    :cond_8
    return-void

    .line 232
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 9

    .line 188
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 190
    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v1, v2

    .line 192
    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v4, v0

    const/4 v0, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x4

    if-ge v2, v1, :cond_4

    .line 193
    iget-object v7, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v7, v2}, Lo/StringIndexOutOfBoundsException$Application;->b(I)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 194
    invoke-direct {p0, v2}, Lo/StringIndexOutOfBoundsException;->e(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    .line 205
    iget-object v5, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v0, v5}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Lo/StringIndexOutOfBoundsException;->h(Lo/StringIndexOutOfBoundsException$Activity;)V

    move v4, v2

    const/4 v0, 0x0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 196
    iget-object v5, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v0, v5}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lo/StringIndexOutOfBoundsException;->b(Lo/StringIndexOutOfBoundsException$Activity;)V

    move v4, v2

    const/4 v0, 0x0

    :cond_3
    const/4 v5, 0x1

    :goto_2
    add-int/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_4
    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-eq v0, v1, :cond_5

    .line 216
    iget-object v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, p1}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 218
    invoke-virtual {p0, v6, v4, v0, v1}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    :cond_5
    if-nez v5, :cond_6

    .line 221
    invoke-direct {p0, p1}, Lo/StringIndexOutOfBoundsException;->b(Lo/StringIndexOutOfBoundsException$Activity;)V

    goto :goto_3

    .line 223
    :cond_6
    invoke-direct {p0, p1}, Lo/StringIndexOutOfBoundsException;->h(Lo/StringIndexOutOfBoundsException$Activity;)V

    :goto_3
    return-void
.end method

.method private e(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lo/StringIndexOutOfBoundsException;->h(Lo/StringIndexOutOfBoundsException$Activity;)V

    return-void
.end method

.method private e(I)Z
    .locals 7

    .line 411
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 413
    iget-object v3, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/StringIndexOutOfBoundsException$Activity;

    .line 414
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 415
    iget v3, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lo/StringIndexOutOfBoundsException;->c(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    .line 418
    :cond_0
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    if-ne v4, v6, :cond_2

    .line 420
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v5, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v4, v5

    .line 421
    iget v3, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    :goto_1
    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 422
    invoke-virtual {p0, v3, v5}, Lo/StringIndexOutOfBoundsException;->c(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private f(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lo/StringIndexOutOfBoundsException;->h(Lo/StringIndexOutOfBoundsException$Activity;)V

    return-void
.end method

.method private h(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v0, v1, p1}, Lo/StringIndexOutOfBoundsException$Application;->a(II)V

    goto :goto_0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget-object p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lo/StringIndexOutOfBoundsException$Application;->e(IILjava/lang/Object;)V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v0, v1, p1}, Lo/StringIndexOutOfBoundsException$Application;->b(II)V

    goto :goto_0

    .line 442
    :cond_3
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v0, v1, p1}, Lo/StringIndexOutOfBoundsException$Application;->d(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 5

    .line 588
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 590
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/StringIndexOutOfBoundsException$Activity;

    .line 591
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ne v3, p1, :cond_1

    .line 608
    iget p1, v2, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    goto :goto_1

    .line 610
    :cond_1
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ge v3, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 613
    :cond_2
    iget v2, v2, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-gt v2, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 598
    :cond_3
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-gt v3, p1, :cond_6

    .line 599
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v4, v2, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_4

    const/4 p1, -0x1

    return p1

    .line 603
    :cond_4
    iget v2, v2, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    sub-int/2addr p1, v2

    goto :goto_1

    .line 593
    :cond_5
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-gt v3, p1, :cond_6

    .line 594
    iget v2, v2, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr p1, v2

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method public a()V
    .locals 5

    .line 93
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->f:Lo/Void;

    iget-object v1, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lo/Void;->e(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 96
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/StringIndexOutOfBoundsException$Activity;

    .line 97
    iget v3, v2, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    invoke-direct {p0, v2}, Lo/StringIndexOutOfBoundsException;->e(Lo/StringIndexOutOfBoundsException$Activity;)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-direct {p0, v2}, Lo/StringIndexOutOfBoundsException;->d(Lo/StringIndexOutOfBoundsException$Activity;)V

    goto :goto_1

    .line 102
    :cond_2
    invoke-direct {p0, v2}, Lo/StringIndexOutOfBoundsException;->a(Lo/StringIndexOutOfBoundsException$Activity;)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-direct {p0, v2}, Lo/StringIndexOutOfBoundsException;->f(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 111
    :goto_1
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException;->b:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 112
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_5
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(I)I
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Lo/StringIndexOutOfBoundsException;->c(II)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(IILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    .line 507
    :cond_0
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    or-int/2addr p1, v3

    iput p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    .line 509
    iget-object p1, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method c(II)I
    .locals 4

    .line 472
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    .line 474
    iget-object v1, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/StringIndexOutOfBoundsException$Activity;

    .line 475
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 476
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ne v2, p1, :cond_0

    .line 477
    iget p1, v1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    goto :goto_1

    .line 479
    :cond_0
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 482
    :cond_1
    iget v1, v1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 486
    :cond_2
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    if-gt v2, p1, :cond_5

    .line 487
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 488
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, v1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    .line 491
    :cond_3
    iget v1, v1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 492
    :cond_4
    iget v2, v1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 493
    iget v1, v1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public c()V
    .locals 5

    .line 119
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 121
    iget-object v3, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/StringIndexOutOfBoundsException$Activity;

    invoke-interface {v3, v4}, Lo/StringIndexOutOfBoundsException$Application;->e(Lo/StringIndexOutOfBoundsException$Activity;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/StringIndexOutOfBoundsException;->c(Ljava/util/List;)V

    .line 124
    iput v1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    return-void
.end method

.method c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/StringIndexOutOfBoundsException$Activity;",
            ">;)V"
        }
    .end annotation

    .line 748
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 750
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/StringIndexOutOfBoundsException$Activity;

    invoke-virtual {p0, v2}, Lo/StringIndexOutOfBoundsException;->c(Lo/StringIndexOutOfBoundsException$Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 1

    .line 741
    iget-boolean v0, p0, Lo/StringIndexOutOfBoundsException;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 742
    iput-object v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->j:Lo/CharArrayReader$Activity;

    invoke-interface {v0, p1}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method c(Lo/StringIndexOutOfBoundsException$Activity;I)V
    .locals 2

    .line 315
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v0, p1}, Lo/StringIndexOutOfBoundsException$Application;->a(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 316
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget-object p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Lo/StringIndexOutOfBoundsException$Application;->e(IILjava/lang/Object;)V

    goto :goto_0

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v0, p2, p1}, Lo/StringIndexOutOfBoundsException$Application;->e(II)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 7

    .line 557
    invoke-virtual {p0}, Lo/StringIndexOutOfBoundsException;->c()V

    .line 558
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 560
    iget-object v3, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/StringIndexOutOfBoundsException$Activity;

    .line 561
    iget v4, v3, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v4, v3}, Lo/StringIndexOutOfBoundsException$Application;->e(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 576
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v5, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v4, v5, v3}, Lo/StringIndexOutOfBoundsException$Application;->a(II)V

    goto :goto_1

    .line 571
    :cond_1
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v4, v3}, Lo/StringIndexOutOfBoundsException$Application;->e(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 572
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v5, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v6, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget-object v3, v3, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lo/StringIndexOutOfBoundsException$Application;->e(IILjava/lang/Object;)V

    goto :goto_1

    .line 567
    :cond_2
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v4, v3}, Lo/StringIndexOutOfBoundsException$Application;->e(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 568
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v5, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v4, v5, v3}, Lo/StringIndexOutOfBoundsException$Application;->e(II)V

    goto :goto_1

    .line 563
    :cond_3
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    invoke-interface {v4, v3}, Lo/StringIndexOutOfBoundsException$Application;->e(Lo/StringIndexOutOfBoundsException$Activity;)V

    .line 564
    iget-object v4, p0, Lo/StringIndexOutOfBoundsException;->a:Lo/StringIndexOutOfBoundsException$Application;

    iget v5, v3, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, v3, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-interface {v4, v5, v3}, Lo/StringIndexOutOfBoundsException$Application;->d(II)V

    .line 579
    :goto_1
    iget-object v3, p0, Lo/StringIndexOutOfBoundsException;->b:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 580
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    :cond_5
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/StringIndexOutOfBoundsException;->c(Ljava/util/List;)V

    .line 584
    iput v1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    return-void
.end method

.method public d(I)Z
    .locals 1

    .line 464
    iget v0, p0, Lo/StringIndexOutOfBoundsException;->g:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    .line 519
    :cond_0
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    or-int/2addr p1, v1

    iput p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    .line 521
    iget-object p1, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;
    .locals 1

    .line 727
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->j:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/StringIndexOutOfBoundsException$Activity;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lo/StringIndexOutOfBoundsException$Activity;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/StringIndexOutOfBoundsException$Activity;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    .line 731
    :cond_0
    iput p1, v0, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    .line 732
    iput p2, v0, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    .line 733
    iput p3, v0, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    .line 734
    iput-object p4, v0, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/StringIndexOutOfBoundsException;->c(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/StringIndexOutOfBoundsException;->c(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lo/StringIndexOutOfBoundsException;->g:I

    return-void
.end method

.method public e(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    .line 531
    :cond_0
    iget-object v2, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    or-int/2addr p1, v4

    iput p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    .line 533
    iget-object p1, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public e(III)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 546
    iget-object p3, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Lo/StringIndexOutOfBoundsException;->e(IIILjava/lang/Object;)Lo/StringIndexOutOfBoundsException$Activity;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    or-int/2addr p1, v3

    iput p1, p0, Lo/StringIndexOutOfBoundsException;->g:I

    .line 548
    iget-object p1, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 544
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Z
    .locals 1

    .line 624
    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/StringIndexOutOfBoundsException;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
