.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Landroid/widget/SeekBar;

.field d:I

.field e:Z

.field private f:I

.field private g:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:Z

.field private o:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Lo/StackTraceElement$ActionBar;->j:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance v0, Landroidx/preference/SeekBarPreference$3;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$3;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 93
    new-instance v0, Landroidx/preference/SeekBarPreference$5;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$5;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->o:Landroid/view/View$OnKeyListener;

    .line 124
    sget-object v0, Lo/StackTraceElement$PendingIntent;->bm:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget p2, Lo/StackTraceElement$PendingIntent;->bq:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 133
    sget p2, Lo/StackTraceElement$PendingIntent;->bp:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->h(I)V

    .line 134
    sget p2, Lo/StackTraceElement$PendingIntent;->bu:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->i(I)V

    .line 135
    sget p2, Lo/StackTraceElement$PendingIntent;->bo:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->b:Z

    .line 136
    sget p2, Lo/StackTraceElement$PendingIntent;->bt:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->j:Z

    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(IZ)V
    .locals 2

    .line 264
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 267
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->i:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 271
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eq p1, v0, :cond_3

    .line 272
    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 273
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 274
    iget v1, p0, Landroidx/preference/SeekBarPreference;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->f(I)Z

    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->g()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/Parcelable;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    return-void

    .line 328
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 329
    invoke-virtual {p1}, Landroidx/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    .line 330
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 331
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->e:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 332
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->i:I

    .line 333
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->g()V

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 193
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->j(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->g(I)V

    return-void
.end method

.method public c(Lo/String;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroidx/preference/Preference;->c(Lo/String;)V

    .line 155
    iget-object v0, p1, Lo/String;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->o:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    sget v0, Lo/StackTraceElement$Application;->e:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    .line 157
    sget v0, Lo/StackTraceElement$Application;->d:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    .line 158
    iget-boolean p1, p0, Landroidx/preference/SeekBarPreference;->j:Z

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    .line 165
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->i:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 175
    iget p1, p0, Landroidx/preference/SeekBarPreference;->f:I

    if-eqz p1, :cond_2

    .line 176
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->f:I

    .line 181
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 183
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method e(Landroid/widget/SeekBar;)V
    .locals 2

    .line 293
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    iget v1, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eq v0, v1, :cond_1

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/SeekBarPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->b(IZ)V

    goto :goto_0

    .line 298
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 1

    const/4 v0, 0x1

    .line 260
    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->b(IZ)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 216
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 219
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->i:I

    if-eq p1, v0, :cond_1

    .line 220
    iput p1, p0, Landroidx/preference/SeekBarPreference;->i:I

    .line 221
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->g()V

    :cond_1
    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 241
    iget v0, p0, Landroidx/preference/SeekBarPreference;->f:I

    if-eq p1, v0, :cond_0

    .line 242
    iget v0, p0, Landroidx/preference/SeekBarPreference;->i:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->f:I

    .line 243
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->g()V

    :cond_0
    return-void
.end method

.method protected l()Landroid/os/Parcelable;
    .locals 2

    .line 305
    invoke-super {p0}, Landroidx/preference/Preference;->l()Landroid/os/Parcelable;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 312
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 313
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    .line 314
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->e:I

    .line 315
    iget v0, p0, Landroidx/preference/SeekBarPreference;->i:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    return-object v1
.end method
