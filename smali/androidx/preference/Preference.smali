.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$TaskDescription;,
        Landroidx/preference/Preference$ActionBar;,
        Landroidx/preference/Preference$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:Z

.field private H:I

.field private I:Landroidx/preference/Preference$TaskDescription;

.field private J:Landroidx/preference/PreferenceGroup;

.field private K:Z

.field private L:Z

.field private final M:Landroid/view/View$OnClickListener;

.field private a:Z

.field private b:J

.field private c:Lo/StackOverflowError;

.field private d:Landroid/content/Context;

.field private e:Lo/SafeVarargs;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:I

.field private i:Landroidx/preference/Preference$Application;

.field private j:Landroidx/preference/Preference$ActionBar;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/Intent;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Landroid/os/Bundle;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 373
    sget v0, Lo/StackTraceElement$ActionBar;->g:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Lo/ViewParent;->e(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 124
    iput v0, p0, Landroidx/preference/Preference;->g:I

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Landroidx/preference/Preference;->h:I

    const/4 v2, 0x1

    .line 137
    iput-boolean v2, p0, Landroidx/preference/Preference;->r:Z

    .line 138
    iput-boolean v2, p0, Landroidx/preference/Preference;->t:Z

    .line 140
    iput-boolean v2, p0, Landroidx/preference/Preference;->p:Z

    .line 143
    iput-boolean v2, p0, Landroidx/preference/Preference;->y:Z

    .line 144
    iput-boolean v2, p0, Landroidx/preference/Preference;->u:Z

    .line 145
    iput-boolean v2, p0, Landroidx/preference/Preference;->x:Z

    .line 147
    iput-boolean v2, p0, Landroidx/preference/Preference;->C:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->z:Z

    .line 150
    iput-boolean v2, p0, Landroidx/preference/Preference;->A:Z

    .line 156
    iput-boolean v2, p0, Landroidx/preference/Preference;->G:Z

    .line 158
    sget v3, Lo/StackTraceElement$Activity;->d:I

    iput v3, p0, Landroidx/preference/Preference;->F:I

    .line 169
    new-instance v3, Landroidx/preference/Preference$3;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$3;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->M:Landroid/view/View$OnClickListener;

    .line 262
    iput-object p1, p0, Landroidx/preference/Preference;->d:Landroid/content/Context;

    .line 264
    sget-object v3, Lo/StackTraceElement$PendingIntent;->an:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 267
    sget p2, Lo/StackTraceElement$PendingIntent;->aL:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aq:I

    invoke-static {p1, p2, p3, v1}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->o:I

    .line 270
    sget p2, Lo/StackTraceElement$PendingIntent;->aN:I

    sget p3, Lo/StackTraceElement$PendingIntent;->at:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    .line 273
    sget p2, Lo/StackTraceElement$PendingIntent;->aS:I

    sget p3, Lo/StackTraceElement$PendingIntent;->au:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->d(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    .line 276
    sget p2, Lo/StackTraceElement$PendingIntent;->aU:I

    sget p3, Lo/StackTraceElement$PendingIntent;->as:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->d(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 279
    sget p2, Lo/StackTraceElement$PendingIntent;->aP:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aw:I

    invoke-static {p1, p2, p3, v0}, Lo/ViewParent;->d(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->g:I

    .line 282
    sget p2, Lo/StackTraceElement$PendingIntent;->aJ:I

    sget p3, Lo/StackTraceElement$PendingIntent;->az:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    .line 285
    sget p2, Lo/StackTraceElement$PendingIntent;->aM:I

    sget p3, Lo/StackTraceElement$PendingIntent;->ao:I

    sget p4, Lo/StackTraceElement$Activity;->d:I

    invoke-static {p1, p2, p3, p4}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->F:I

    .line 288
    sget p2, Lo/StackTraceElement$PendingIntent;->aW:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aA:I

    invoke-static {p1, p2, p3, v1}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->H:I

    .line 291
    sget p2, Lo/StackTraceElement$PendingIntent;->aI:I

    sget p3, Lo/StackTraceElement$PendingIntent;->ap:I

    invoke-static {p1, p2, p3, v2}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->r:Z

    .line 294
    sget p2, Lo/StackTraceElement$PendingIntent;->aV:I

    sget p3, Lo/StackTraceElement$PendingIntent;->av:I

    invoke-static {p1, p2, p3, v2}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->t:Z

    .line 297
    sget p2, Lo/StackTraceElement$PendingIntent;->aQ:I

    sget p3, Lo/StackTraceElement$PendingIntent;->ar:I

    invoke-static {p1, p2, p3, v2}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->p:Z

    .line 300
    sget p2, Lo/StackTraceElement$PendingIntent;->aK:I

    sget p3, Lo/StackTraceElement$PendingIntent;->ay:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->w:Ljava/lang/String;

    .line 303
    sget p2, Lo/StackTraceElement$PendingIntent;->aC:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aC:I

    iget-boolean p4, p0, Landroidx/preference/Preference;->t:Z

    invoke-static {p1, p2, p3, p4}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->C:Z

    .line 306
    sget p2, Lo/StackTraceElement$PendingIntent;->aF:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aF:I

    iget-boolean p4, p0, Landroidx/preference/Preference;->t:Z

    invoke-static {p1, p2, p3, p4}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->z:Z

    .line 309
    sget p2, Lo/StackTraceElement$PendingIntent;->aD:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 310
    sget p2, Lo/StackTraceElement$PendingIntent;->aD:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_0
    sget p2, Lo/StackTraceElement$PendingIntent;->aB:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 312
    sget p2, Lo/StackTraceElement$PendingIntent;->aB:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    .line 315
    :cond_1
    :goto_0
    sget p2, Lo/StackTraceElement$PendingIntent;->aT:I

    sget p3, Lo/StackTraceElement$PendingIntent;->ax:I

    .line 316
    invoke-static {p1, p2, p3, v2}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->G:Z

    .line 319
    sget p2, Lo/StackTraceElement$PendingIntent;->aR:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->D:Z

    .line 320
    iget-boolean p2, p0, Landroidx/preference/Preference;->D:Z

    if-eqz p2, :cond_2

    .line 321
    sget p2, Lo/StackTraceElement$PendingIntent;->aR:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aE:I

    invoke-static {p1, p2, p3, v2}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->A:Z

    .line 325
    :cond_2
    sget p2, Lo/StackTraceElement$PendingIntent;->aH:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aG:I

    invoke-static {p1, p2, p3, v1}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->B:Z

    .line 328
    sget p2, Lo/StackTraceElement$PendingIntent;->aO:I

    sget p3, Lo/StackTraceElement$PendingIntent;->aO:I

    invoke-static {p1, p2, p3, v2}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->x:Z

    .line 331
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1365
    iget-object v0, p0, Landroidx/preference/Preference;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->b(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1369
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->e(Landroidx/preference/Preference;)V

    return-void

    .line 1371
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 3

    .line 1554
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    return-void

    .line 1560
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1561
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1566
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1562
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1563
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private c()V
    .locals 1

    .line 1377
    iget-object v0, p0, Landroidx/preference/Preference;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->b(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->d(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 1612
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private d(Landroidx/preference/Preference;)V
    .locals 1

    .line 1429
    iget-object v0, p0, Landroidx/preference/Preference;->E:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1430
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;Z)V
    .locals 2

    .line 640
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 643
    check-cast p1, Landroid/view/ViewGroup;

    .line 644
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->e(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Landroidx/preference/Preference;)V
    .locals 1

    .line 1413
    iget-object v0, p0, Landroidx/preference/Preference;->E:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->E:Ljava/util/List;

    .line 1417
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->d(Landroidx/preference/Preference;Z)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final B()Z
    .locals 1

    .line 906
    iget-boolean v0, p0, Landroidx/preference/Preference;->x:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Landroidx/preference/Preference;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 981
    iget-object v0, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    return-object v0
.end method

.method public E()V
    .locals 2

    .line 1159
    invoke-virtual {p0}, Landroidx/preference/Preference;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->f()V

    .line 1165
    iget-object v0, p0, Landroidx/preference/Preference;->j:Landroidx/preference/Preference$ActionBar;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$ActionBar;->a(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1169
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Lo/StackOverflowError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1172
    invoke-virtual {v0}, Lo/StackOverflowError;->h()Lo/StackOverflowError$Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1173
    invoke-interface {v0, p0}, Lo/StackOverflowError$Activity;->d(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1178
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Landroid/content/Context;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Landroidx/preference/Preference;->m:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public F()Landroid/content/SharedPreferences;
    .locals 1

    .line 1209
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1213
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public G()Landroid/content/Context;
    .locals 1

    .line 1193
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroid/content/Context;

    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 1015
    iget-boolean v0, p0, Landroidx/preference/Preference;->p:Z

    return v0
.end method

.method protected I()Z
    .locals 1

    .line 1027
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Lo/StackOverflowError;
    .locals 1

    .line 1277
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    return-object v0
.end method

.method protected K()V
    .locals 1

    .line 1266
    iget-object v0, p0, Landroidx/preference/Preference;->I:Landroidx/preference/Preference$TaskDescription;

    if-eqz v0, :cond_0

    .line 1267
    invoke-interface {v0, p0}, Landroidx/preference/Preference$TaskDescription;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 1

    .line 1340
    invoke-direct {p0}, Landroidx/preference/Preference;->c()V

    const/4 v0, 0x1

    .line 1341
    iput-boolean v0, p0, Landroidx/preference/Preference;->L:Z

    return-void
.end method

.method public M()V
    .locals 0

    .line 1330
    invoke-direct {p0}, Landroidx/preference/Preference;->a()V

    return-void
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x0

    .line 1360
    iput-boolean v0, p0, Landroidx/preference/Preference;->L:Z

    return-void
.end method

.method O()Ljava/lang/StringBuilder;
    .locals 4

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1962
    invoke-virtual {p0}, Landroidx/preference/Preference;->w()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1963
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1967
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1970
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public P()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1531
    iget-object v0, p0, Landroidx/preference/Preference;->J:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method protected Q()V
    .locals 0

    .line 1540
    invoke-direct {p0}, Landroidx/preference/Preference;->c()V

    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 751
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iput p1, p0, Landroidx/preference/Preference;->o:I

    return-void
.end method

.method public a(Landroidx/preference/Preference$Application;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$Application;

    return-void
.end method

.method a(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Landroidx/preference/Preference;->J:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 784
    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 787
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 1442
    iget-object v0, p0, Landroidx/preference/Preference;->E:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1448
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1450
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->d(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1594
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroidx/preference/Preference;)I
    .locals 2

    .line 1225
    iget v0, p0, Landroidx/preference/Preference;->g:I

    iget v1, p1, Landroidx/preference/Preference;->g:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 1228
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 1237
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 1396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    invoke-virtual {v0, p1}, Lo/StackOverflowError;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 664
    iget v0, p0, Landroidx/preference/Preference;->g:I

    if-eq p1, v0, :cond_0

    .line 665
    iput p1, p0, Landroidx/preference/Preference;->g:I

    .line 668
    invoke-virtual {p0}, Landroidx/preference/Preference;->K()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 737
    iget-object v0, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 738
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 739
    iput p1, p0, Landroidx/preference/Preference;->o:I

    .line 740
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    :cond_2
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2

    .line 2000
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2001
    iput-boolean v0, p0, Landroidx/preference/Preference;->K:Z

    .line 2002
    invoke-virtual {p0}, Landroidx/preference/Preference;->l()Landroid/os/Parcelable;

    move-result-object v0

    .line 2003
    iget-boolean v1, p0, Landroidx/preference/Preference;->K:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 2008
    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2004
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected b(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2077
    iput-boolean v0, p0, Landroidx/preference/Preference;->K:Z

    .line 2078
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2079
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroidx/preference/Preference$ActionBar;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Landroidx/preference/Preference;->j:Landroidx/preference/Preference$ActionBar;

    return-void
.end method

.method public b(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1478
    iget-boolean p1, p0, Landroidx/preference/Preference;->u:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1479
    iput-boolean p1, p0, Landroidx/preference/Preference;->u:Z

    .line 1482
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Z)V

    .line 1484
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1101
    iget-object v0, p0, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$Application;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$Application;->e(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(Z)Z
    .locals 3

    .line 1901
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 1905
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->d(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1910
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1912
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lo/SafeVarargs;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1915
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1916
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->d(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public c(I)V
    .locals 0

    .line 515
    iput p1, p0, Landroidx/preference/Preference;->F:I

    return-void
.end method

.method c(Landroid/os/Bundle;)V
    .locals 1

    .line 2053
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2054
    iget-object v0, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2056
    iput-boolean v0, p0, Landroidx/preference/Preference;->K:Z

    .line 2057
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    .line 2058
    iget-boolean p1, p0, Landroidx/preference/Preference;->K:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2059
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 0

    .line 1148
    invoke-virtual {p0}, Landroidx/preference/Preference;->E()V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 702
    iget-object v0, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    .line 704
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    :cond_2
    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Lo/LineNumberInputStream;)V
    .locals 0

    return-void
.end method

.method public c(Lo/String;)V
    .locals 6

    .line 565
    iget-object v0, p1, Lo/String;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/Preference;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p1, Lo/String;->itemView:Landroid/view/View;

    iget v1, p0, Landroidx/preference/Preference;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x1020016

    .line 568
    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Landroidx/preference/Preference;->w()Ljava/lang/CharSequence;

    move-result-object v3

    .line 571
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 572
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-boolean v3, p0, Landroidx/preference/Preference;->D:Z

    if-eqz v3, :cond_1

    .line 575
    iget-boolean v3, p0, Landroidx/preference/Preference;->A:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    .line 582
    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v3

    .line 585
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 586
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 593
    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    .line 595
    iget v4, p0, Landroidx/preference/Preference;->o:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 596
    :cond_4
    iget-object v4, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 597
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/preference/Preference;->o:I

    invoke-static {v4, v5}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_5
    iget-object v4, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 600
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_6
    iget-object v4, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 604
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 606
    :cond_7
    iget-boolean v4, p0, Landroidx/preference/Preference;->B:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_2

    :cond_8
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    :cond_9
    :goto_3
    sget v0, Lo/StackTraceElement$Application;->c:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const v0, 0x102003e

    .line 612
    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_d

    .line 615
    iget-object v4, p0, Landroidx/preference/Preference;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 616
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 618
    :cond_b
    iget-boolean v1, p0, Landroidx/preference/Preference;->B:Z

    if-eqz v1, :cond_c

    const/4 v2, 0x4

    :cond_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :cond_d
    :goto_4
    iget-boolean v0, p0, Landroidx/preference/Preference;->G:Z

    if-eqz v0, :cond_e

    .line 623
    iget-object v0, p1, Lo/String;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->C()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->e(Landroid/view/View;Z)V

    goto :goto_5

    .line 625
    :cond_e
    iget-object v0, p1, Lo/String;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->e(Landroid/view/View;Z)V

    .line 628
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->z()Z

    move-result v0

    .line 629
    iget-object v1, p1, Lo/String;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 630
    iget-object v1, p1, Lo/String;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 632
    iget-boolean v0, p0, Landroidx/preference/Preference;->C:Z

    invoke-virtual {p1, v0}, Lo/String;->b(Z)V

    .line 633
    iget-boolean v0, p0, Landroidx/preference/Preference;->z:Z

    invoke-virtual {p1, v0}, Lo/String;->e(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1038
    iput-boolean p1, p0, Landroidx/preference/Preference;->p:Z

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 90
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1712
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1716
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1718
    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/SafeVarargs;->e(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1721
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 798
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 0

    .line 410
    iput-object p1, p0, Landroidx/preference/Preference;->m:Landroid/content/Intent;

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    .line 1986
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Landroidx/preference/Preference$TaskDescription;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Landroidx/preference/Preference;->I:Landroidx/preference/Preference$TaskDescription;

    return-void
.end method

.method public d(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1461
    iget-boolean p1, p0, Landroidx/preference/Preference;->y:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1462
    iput-boolean p1, p0, Landroidx/preference/Preference;->y:Z

    .line 1465
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Z)V

    .line 1467
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    :cond_0
    return-void
.end method

.method public d(Lo/StackOverflowError;)V
    .locals 2

    .line 1287
    iput-object p1, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    .line 1289
    iget-boolean v0, p0, Landroidx/preference/Preference;->a:Z

    if-nez v0, :cond_0

    .line 1290
    invoke-virtual {p1}, Lo/StackOverflowError;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->b:J

    .line 1293
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->b()V

    return-void
.end method

.method protected d(Lo/StackOverflowError;J)V
    .locals 0

    .line 1302
    iput-wide p2, p0, Landroidx/preference/Preference;->b:J

    const/4 p2, 0x1

    .line 1303
    iput-boolean p2, p0, Landroidx/preference/Preference;->a:Z

    const/4 p2, 0x0

    .line 1305
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->d(Lo/StackOverflowError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    iput-boolean p2, p0, Landroidx/preference/Preference;->a:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->a:Z

    throw p1
.end method

.method protected d(Z)Z
    .locals 2

    .line 1932
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1936
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1938
    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/SafeVarargs;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1941
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public e()J
    .locals 2

    .line 948
    iget-wide v0, p0, Landroidx/preference/Preference;->b:J

    return-wide v0
.end method

.method public e(I)V
    .locals 1

    .line 715
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    .line 2039
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1682
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1687
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->d(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1692
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1694
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lo/SafeVarargs;->a(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1696
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1697
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1698
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->d(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected f(I)Z
    .locals 3

    .line 1736
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-int v0, p1

    .line 1740
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->j(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1745
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1747
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lo/SafeVarargs;->d(Ljava/lang/String;I)V

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1750
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1751
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->d(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1659
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1663
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1665
    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/SafeVarargs;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1668
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected g()V
    .locals 1

    .line 1255
    iget-object v0, p0, Landroidx/preference/Preference;->I:Landroidx/preference/Preference$TaskDescription;

    if-eqz v0, :cond_0

    .line 1256
    invoke-interface {v0, p0}, Landroidx/preference/Preference$TaskDescription;->c(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;)Z
    .locals 3

    .line 1628
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1633
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1638
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1640
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lo/SafeVarargs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1642
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1643
    iget-object v2, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1644
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->d(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected j(I)I
    .locals 2

    .line 1767
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1771
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lo/SafeVarargs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1773
    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/SafeVarargs;->e(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1776
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected l()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 2026
    iput-boolean v0, p0, Landroidx/preference/Preference;->K:Z

    .line 2027
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 1

    .line 775
    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1495
    invoke-virtual {p0}, Landroidx/preference/Preference;->C()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public p()Lo/SafeVarargs;
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/preference/Preference;->e:Lo/SafeVarargs;

    if-eqz v0, :cond_0

    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lo/StackOverflowError;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {v0}, Lo/StackOverflowError;->c()Lo/SafeVarargs;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    return-object v0
.end method

.method public s()Landroid/content/Intent;
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/content/Intent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1946
    invoke-virtual {p0}, Landroidx/preference/Preference;->O()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/os/Bundle;
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/preference/Preference;->s:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->s:Landroid/os/Bundle;

    .line 487
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->s:Landroid/os/Bundle;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 549
    iget v0, p0, Landroidx/preference/Preference;->H:I

    return v0
.end method

.method public w()Ljava/lang/CharSequence;
    .locals 1

    .line 725
    iget-object v0, p0, Landroidx/preference/Preference;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 680
    iget v0, p0, Landroidx/preference/Preference;->g:I

    return v0
.end method

.method public final y()I
    .locals 1

    .line 524
    iget v0, p0, Landroidx/preference/Preference;->F:I

    return v0
.end method

.method public z()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Landroidx/preference/Preference;->t:Z

    return v0
.end method
