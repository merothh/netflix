.class public abstract Landroidx/preference/PreferenceGroup;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroup$SavedState;,
        Landroidx/preference/PreferenceGroup$Application;
    }
.end annotation


# instance fields
.field private a:I

.field final b:Lo/TextWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TextWatcher<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Landroidx/preference/PreferenceGroup$Application;

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->e:Z

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Landroidx/preference/PreferenceGroup;->a:I

    .line 70
    iput-boolean v1, p0, Landroidx/preference/PreferenceGroup;->d:Z

    const v1, 0x7fffffff

    .line 72
    iput v1, p0, Landroidx/preference/PreferenceGroup;->f:I

    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->g:Landroidx/preference/PreferenceGroup$Application;

    .line 76
    new-instance v2, Lo/TextWatcher;

    invoke-direct {v2}, Lo/TextWatcher;-><init>()V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->b:Lo/TextWatcher;

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->i:Landroid/os/Handler;

    .line 79
    new-instance v2, Landroidx/preference/PreferenceGroup$4;

    invoke-direct {v2, p0}, Landroidx/preference/PreferenceGroup$4;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->j:Ljava/lang/Runnable;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    .line 93
    sget-object v2, Lo/StackTraceElement$PendingIntent;->bb:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    sget p2, Lo/StackTraceElement$PendingIntent;->bd:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bd:I

    .line 97
    invoke-static {p1, p2, p3, v0}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/PreferenceGroup;->e:Z

    .line 100
    sget p2, Lo/StackTraceElement$PendingIntent;->bc:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    sget p2, Lo/StackTraceElement$PendingIntent;->bc:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bc:I

    invoke-static {p1, p2, p3, v1}, Lo/ViewParent;->d(Landroid/content/res/TypedArray;III)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->g(I)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private f(Landroidx/preference/Preference;)Z
    .locals 5

    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->Q()V

    .line 287
    invoke-virtual {p1}, Landroidx/preference/Preference;->P()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/PreferenceGroup;)V

    .line 290
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->b:Lo/TextWatcher;

    invoke-virtual {p1}, Landroidx/preference/Preference;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lo/TextWatcher;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->i:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->i:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_1
    iget-boolean v1, p0, Landroidx/preference/PreferenceGroup;->d:Z

    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {p1}, Landroidx/preference/Preference;->L()V

    .line 314
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 315
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public L()V
    .locals 3

    .line 444
    invoke-super {p0}, Landroidx/preference/Preference;->L()V

    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->d:Z

    .line 450
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->L()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M()V
    .locals 3

    .line 429
    invoke-super {p0}, Landroidx/preference/Preference;->M()V

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Landroidx/preference/PreferenceGroup;->d:Z

    .line 436
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 438
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->M()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    .line 174
    iget v0, p0, Landroidx/preference/PreferenceGroup;->f:I

    return v0
.end method

.method public a(Z)V
    .locals 3

    .line 458
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Z)V

    .line 462
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/preference/Preference;)Z
    .locals 6

    .line 210
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 215
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->P()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->P()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found duplicated key: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\". This can cause unintended behaviour,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " please use unique keys for every preference."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreferenceGroup"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->x()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_4

    .line 227
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->e:Z

    if-eqz v0, :cond_3

    .line 228
    iget v0, p0, Landroidx/preference/PreferenceGroup;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/preference/PreferenceGroup;->a:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->b(I)V

    .line 231
    :cond_3
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_4

    .line 234
    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroidx/preference/PreferenceGroup;->e:Z

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->e(Z)V

    .line 238
    :cond_4
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    mul-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 243
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->c(Landroidx/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 p1, 0x0

    return p1

    .line 247
    :cond_6
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->J()Lo/StackOverflowError;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 254
    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->b:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 255
    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->b:Lo/TextWatcher;

    invoke-virtual {v3, v2}, Lo/TextWatcher;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 256
    iget-object v5, p0, Landroidx/preference/PreferenceGroup;->b:Lo/TextWatcher;

    invoke-virtual {v5, v2}, Lo/TextWatcher;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    :cond_7
    invoke-virtual {v0}, Lo/StackOverflowError;->a()J

    move-result-wide v3

    .line 260
    :goto_1
    invoke-virtual {p1, v0, v3, v4}, Landroidx/preference/Preference;->d(Lo/StackOverflowError;J)V

    .line 261
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->a(Landroidx/preference/PreferenceGroup;)V

    .line 263
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->d:Z

    if-eqz v0, :cond_8

    .line 264
    invoke-virtual {p1}, Landroidx/preference/Preference;->M()V

    .line 267
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->K()V

    return v1

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 4

    .line 356
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 361
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 364
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 368
    :cond_1
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 369
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 370
    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    .line 476
    invoke-super {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Bundle;)V

    .line 479
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 481
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->b(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/PreferenceGroup$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    check-cast p1, Landroidx/preference/PreferenceGroup$SavedState;

    .line 510
    iget v0, p1, Landroidx/preference/PreferenceGroup$SavedState;->e:I

    iput v0, p0, Landroidx/preference/PreferenceGroup;->f:I

    .line 511
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    return-void

    .line 506
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    return-void
.end method

.method public c()Landroidx/preference/PreferenceGroup$Application;
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->g:Landroidx/preference/PreferenceGroup$Application;

    return-object v0
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 3

    .line 487
    invoke-super {p0, p1}, Landroidx/preference/Preference;->c(Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 492
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->c(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Landroidx/preference/Preference;)Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->o()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Landroidx/preference/Preference;)Z
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup;->f(Landroidx/preference/Preference;)Z

    move-result p1

    .line 280
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->K()V

    return p1
.end method

.method public e(Landroidx/preference/Preference;)V
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Landroidx/preference/PreferenceGroup;->e:Z

    return-void
.end method

.method public g(I)V
    .locals 2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should have a key defined if it contains an expandable preference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferenceGroup"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iput p1, p0, Landroidx/preference/PreferenceGroup;->f:I

    return-void
.end method

.method public h()V
    .locals 1

    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i(I)Landroidx/preference/Preference;
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1
.end method

.method protected l()Landroid/os/Parcelable;
    .locals 3

    .line 498
    invoke-super {p0}, Landroidx/preference/Preference;->l()Landroid/os/Parcelable;

    move-result-object v0

    .line 499
    new-instance v1, Landroidx/preference/PreferenceGroup$SavedState;

    iget v2, p0, Landroidx/preference/PreferenceGroup;->f:I

    invoke-direct {v1, v0, v2}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method
