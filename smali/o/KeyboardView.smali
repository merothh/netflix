.class public final Lo/KeyboardView;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final c:[C


# instance fields
.field private a:[C

.field private b:I

.field private d:I

.field private final e:Lo/IInputMethodWrapper;

.field private f:[C

.field private g:I

.field private h:Z

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[C>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private n:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 29
    sput-object v0, Lo/KeyboardView;->c:[C

    return-void
.end method

.method public constructor <init>(Lo/IInputMethodWrapper;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lo/KeyboardView;->e:Lo/IInputMethodWrapper;

    return-void
.end method

.method private c(I)[C
    .locals 0

    .line 864
    new-array p1, p1, [C

    return-object p1
.end method

.method private d(I)[C
    .locals 2

    .line 282
    iget-object v0, p0, Lo/KeyboardView;->e:Lo/IInputMethodWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 283
    invoke-virtual {v0, v1, p1}, Lo/IInputMethodWrapper;->d(II)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x3e8

    .line 285
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    return-object p1
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lo/KeyboardView;->h:Z

    .line 298
    iget-object v1, p0, Lo/KeyboardView;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iput v0, p0, Lo/KeyboardView;->g:I

    iput v0, p0, Lo/KeyboardView;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lo/KeyboardView;->b:I

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lo/KeyboardView;->i:I

    .line 158
    iput v0, p0, Lo/KeyboardView;->d:I

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lo/KeyboardView;->a:[C

    .line 161
    iput-object v0, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lo/KeyboardView;->n:[C

    .line 165
    iget-boolean v0, p0, Lo/KeyboardView;->h:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lo/KeyboardView;->j()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 683
    iput p1, p0, Lo/KeyboardView;->i:I

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    .line 689
    iput p1, p0, Lo/KeyboardView;->i:I

    .line 691
    iget p1, p0, Lo/KeyboardView;->g:I

    if-lez p1, :cond_0

    .line 692
    invoke-virtual {p0}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 695
    :cond_0
    iget p1, p0, Lo/KeyboardView;->i:I

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/KeyboardView;->f:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    move-object p1, v0

    .line 697
    :goto_0
    iput-object p1, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    return-object p1
.end method

.method public b()[C
    .locals 2

    const/4 v0, -0x1

    .line 663
    iput v0, p0, Lo/KeyboardView;->b:I

    const/4 v0, 0x0

    .line 664
    iput v0, p0, Lo/KeyboardView;->i:I

    .line 665
    iput v0, p0, Lo/KeyboardView;->d:I

    const/4 v1, 0x0

    .line 667
    iput-object v1, p0, Lo/KeyboardView;->a:[C

    .line 668
    iput-object v1, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    .line 669
    iput-object v1, p0, Lo/KeyboardView;->n:[C

    .line 672
    iget-boolean v1, p0, Lo/KeyboardView;->h:Z

    if-eqz v1, :cond_0

    .line 673
    invoke-direct {p0}, Lo/KeyboardView;->j()V

    .line 675
    :cond_0
    iget-object v1, p0, Lo/KeyboardView;->f:[C

    if-nez v1, :cond_1

    .line 677
    invoke-direct {p0, v0}, Lo/KeyboardView;->d(I)[C

    move-result-object v1

    iput-object v1, p0, Lo/KeyboardView;->f:[C

    :cond_1
    return-object v1
.end method

.method public c()V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/KeyboardView;->e:Lo/IInputMethodWrapper;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lo/KeyboardView;->a()V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lo/KeyboardView;->f:[C

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lo/KeyboardView;->a()V

    .line 143
    iget-object v0, p0, Lo/KeyboardView;->f:[C

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lo/KeyboardView;->f:[C

    .line 145
    iget-object v1, p0, Lo/KeyboardView;->e:Lo/IInputMethodWrapper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lo/IInputMethodWrapper;->d(I[C)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()[C
    .locals 3

    .line 702
    iget-object v0, p0, Lo/KeyboardView;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/KeyboardView;->j:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lo/KeyboardView;->h:Z

    .line 706
    iget-object v0, p0, Lo/KeyboardView;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/KeyboardView;->f:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, p0, Lo/KeyboardView;->f:[C

    array-length v0, v0

    .line 708
    iget v1, p0, Lo/KeyboardView;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/KeyboardView;->g:I

    const/4 v1, 0x0

    .line 709
    iput v1, p0, Lo/KeyboardView;->i:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/high16 v0, 0x40000

    .line 718
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lo/KeyboardView;->c(I)[C

    move-result-object v0

    .line 719
    iput-object v0, p0, Lo/KeyboardView;->f:[C

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    .line 375
    iget-object v0, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 377
    iget-object v0, p0, Lo/KeyboardView;->n:[C

    if-eqz v0, :cond_0

    .line 378
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    goto :goto_2

    .line 381
    :cond_0
    iget v0, p0, Lo/KeyboardView;->b:I

    const-string v1, ""

    if-ltz v0, :cond_2

    .line 382
    iget v2, p0, Lo/KeyboardView;->d:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 383
    iput-object v1, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    return-object v1

    .line 385
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lo/KeyboardView;->a:[C

    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    goto :goto_2

    .line 388
    :cond_2
    iget v0, p0, Lo/KeyboardView;->g:I

    .line 389
    iget v2, p0, Lo/KeyboardView;->i:I

    const/4 v3, 0x0

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    .line 392
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lo/KeyboardView;->f:[C

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    iput-object v1, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    goto :goto_2

    .line 394
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 396
    iget-object v0, p0, Lo/KeyboardView;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 398
    iget-object v4, p0, Lo/KeyboardView;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 399
    array-length v5, v4

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    :cond_5
    iget-object v0, p0, Lo/KeyboardView;->f:[C

    iget v2, p0, Lo/KeyboardView;->i:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    .line 409
    :cond_6
    :goto_2
    iget-object v0, p0, Lo/KeyboardView;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)[C
    .locals 2

    .line 751
    iget-object v0, p0, Lo/KeyboardView;->f:[C

    .line 752
    array-length v1, v0

    if-lt v1, p1, :cond_0

    return-object v0

    .line 753
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lo/KeyboardView;->f:[C

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 768
    invoke-virtual {p0}, Lo/KeyboardView;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
