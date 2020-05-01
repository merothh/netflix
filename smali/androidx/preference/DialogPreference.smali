.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$Activity;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    sget v0, Lo/StackTraceElement$ActionBar;->a:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lo/ViewParent;->e(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    sget-object v0, Lo/StackTraceElement$PendingIntent;->C:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lo/StackTraceElement$PendingIntent;->L:I

    sget p3, Lo/StackTraceElement$PendingIntent;->E:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    .line 62
    iget-object p2, p0, Landroidx/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->w()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    .line 68
    :cond_0
    sget p2, Lo/StackTraceElement$PendingIntent;->J:I

    sget p3, Lo/StackTraceElement$PendingIntent;->F:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    .line 71
    sget p2, Lo/StackTraceElement$PendingIntent;->M:I

    sget p3, Lo/StackTraceElement$PendingIntent;->I:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->c(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->d:Landroid/graphics/drawable/Drawable;

    .line 74
    sget p2, Lo/StackTraceElement$PendingIntent;->S:I

    sget p3, Lo/StackTraceElement$PendingIntent;->H:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 78
    sget p2, Lo/StackTraceElement$PendingIntent;->P:I

    sget p3, Lo/StackTraceElement$PendingIntent;->G:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    .line 82
    sget p2, Lo/StackTraceElement$PendingIntent;->K:I

    sget p3, Lo/StackTraceElement$PendingIntent;->N:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/DialogPreference;->h:I

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/preference/DialogPreference;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/preference/DialogPreference;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected f()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->J()Lo/StackOverflowError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/StackOverflowError;->d(Landroidx/preference/Preference;)V

    return-void
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 237
    iget-object v0, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 258
    iget v0, p0, Landroidx/preference/DialogPreference;->h:I

    return v0
.end method
