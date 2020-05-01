.class public Lo/SecurityManager;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""

# interfaces
.implements Landroidx/preference/Preference$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SecurityManager$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/String;",
        ">;",
        "Landroidx/preference/Preference$TaskDescription;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SecurityManager$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/SecurityManager$Activity;

.field private d:Landroidx/preference/PreferenceGroup;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private i:Lo/Runnable;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/SecurityManager;-><init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    .line 74
    new-instance v0, Lo/SecurityManager$Activity;

    invoke-direct {v0}, Lo/SecurityManager$Activity;-><init>()V

    iput-object v0, p0, Lo/SecurityManager;->c:Lo/SecurityManager$Activity;

    .line 80
    new-instance v0, Lo/SecurityManager$1;

    invoke-direct {v0, p0}, Lo/SecurityManager$1;-><init>(Lo/SecurityManager;)V

    iput-object v0, p0, Lo/SecurityManager;->f:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lo/SecurityManager;->d:Landroidx/preference/PreferenceGroup;

    .line 127
    iput-object p2, p0, Lo/SecurityManager;->j:Landroid/os/Handler;

    .line 128
    new-instance p2, Lo/Runnable;

    invoke-direct {p2, p1, p0}, Lo/Runnable;-><init>(Landroidx/preference/PreferenceGroup;Lo/SecurityManager;)V

    iput-object p2, p0, Lo/SecurityManager;->i:Lo/Runnable;

    .line 131
    iget-object p1, p0, Lo/SecurityManager;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->d(Landroidx/preference/Preference$TaskDescription;)V

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/SecurityManager;->b:Ljava/util/List;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/SecurityManager;->e:Ljava/util/List;

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/SecurityManager;->a:Ljava/util/List;

    .line 137
    iget-object p1, p0, Lo/SecurityManager;->d:Landroidx/preference/PreferenceGroup;

    instance-of p2, p1, Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 138
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->i()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/SecurityManager;->setHasStableIds(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lo/SecurityManager;->setHasStableIds(Z)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lo/SecurityManager;->e()V

    return-void
.end method

.method private b(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, v0}, Lo/SecurityManager;->d(Landroidx/preference/Preference;Lo/SecurityManager$Activity;)Lo/SecurityManager$Activity;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lo/SecurityManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lo/SecurityManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private d(Landroidx/preference/Preference;Lo/SecurityManager$Activity;)Lo/SecurityManager$Activity;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance p2, Lo/SecurityManager$Activity;

    invoke-direct {p2}, Lo/SecurityManager$Activity;-><init>()V

    .line 239
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lo/SecurityManager$Activity;->c:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroidx/preference/Preference;->y()I

    move-result v0

    iput v0, p2, Lo/SecurityManager$Activity;->d:I

    .line 241
    invoke-virtual {p1}, Landroidx/preference/Preference;->v()I

    move-result p1

    iput p1, p2, Lo/SecurityManager$Activity;->a:I

    return-object p2
.end method

.method private d(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 211
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->h()V

    .line 213
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 215
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->i(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 217
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0, v2}, Lo/SecurityManager;->b(Landroidx/preference/Preference;)V

    .line 221
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 222
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 223
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    invoke-direct {p0, p1, v3}, Lo/SecurityManager;->d(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 228
    :cond_0
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->d(Landroidx/preference/Preference$TaskDescription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lo/String;
    .locals 4

    .line 349
    iget-object v0, p0, Lo/SecurityManager;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/SecurityManager$Activity;

    .line 350
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lo/StackTraceElement$PendingIntent;->t:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 353
    sget v2, Lo/StackTraceElement$PendingIntent;->s:I

    .line 354
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080062

    invoke-static {v2, v3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 359
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    iget v1, p2, Lo/SecurityManager$Activity;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 363
    invoke-static {p1, v2}, Lo/FilterWriter;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x1020018

    .line 366
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 368
    iget v2, p2, Lo/SecurityManager$Activity;->a:I

    if-eqz v2, :cond_2

    .line 369
    iget p2, p2, Lo/SecurityManager$Activity;->a:I

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 371
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 375
    :cond_3
    :goto_0
    new-instance p2, Lo/String;

    invoke-direct {p2, p1}, Lo/String;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lo/SecurityManager;->j:Landroid/os/Handler;

    iget-object v0, p0, Lo/SecurityManager;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object p1, p0, Lo/SecurityManager;->j:Landroid/os/Handler;

    iget-object v0, p0, Lo/SecurityManager;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lo/String;I)V
    .locals 0

    .line 380
    invoke-virtual {p0, p2}, Lo/SecurityManager;->e(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 381
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->c(Lo/String;)V

    return-void
.end method

.method public c(Landroidx/preference/Preference;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lo/SecurityManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0, p1}, Lo/SecurityManager;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(I)Landroidx/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    .line 258
    invoke-virtual {p0}, Lo/SecurityManager;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lo/SecurityManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method e()V
    .locals 5

    .line 154
    iget-object v0, p0, Lo/SecurityManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->d(Landroidx/preference/Preference$TaskDescription;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/SecurityManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    iget-object v1, p0, Lo/SecurityManager;->d:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lo/SecurityManager;->d(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 162
    iget-object v1, p0, Lo/SecurityManager;->i:Lo/Runnable;

    iget-object v2, p0, Lo/SecurityManager;->d:Landroidx/preference/PreferenceGroup;

    .line 163
    invoke-virtual {v1, v2}, Lo/Runnable;->c(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lo/SecurityManager;->b:Ljava/util/List;

    .line 166
    iput-object v1, p0, Lo/SecurityManager;->b:Ljava/util/List;

    .line 167
    iput-object v0, p0, Lo/SecurityManager;->e:Ljava/util/List;

    .line 169
    iget-object v3, p0, Lo/SecurityManager;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->J()Lo/StackOverflowError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v3}, Lo/StackOverflowError;->g()Lo/StackOverflowError$ActionBar;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v3}, Lo/StackOverflowError;->g()Lo/StackOverflowError$ActionBar;

    move-result-object v3

    .line 174
    new-instance v4, Lo/SecurityManager$3;

    invoke-direct {v4, p0, v2, v1, v3}, Lo/SecurityManager$3;-><init>(Lo/SecurityManager;Ljava/util/List;Ljava/util/List;Lo/StackOverflowError$ActionBar;)V

    invoke-static {v4}, Lo/State;->b(Lo/State$ActionBar;)Lo/State$Application;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p0}, Lo/State$Application;->b(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p0}, Lo/SecurityManager;->notifyDataSetChanged()V

    .line 205
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 206
    invoke-virtual {v1}, Landroidx/preference/Preference;->N()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 254
    iget-object v0, p0, Lo/SecurityManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 264
    invoke-virtual {p0}, Lo/SecurityManager;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lo/SecurityManager;->e(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 333
    invoke-virtual {p0, p1}, Lo/SecurityManager;->e(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 335
    iget-object v0, p0, Lo/SecurityManager;->c:Lo/SecurityManager$Activity;

    invoke-direct {p0, p1, v0}, Lo/SecurityManager;->d(Landroidx/preference/Preference;Lo/SecurityManager$Activity;)Lo/SecurityManager$Activity;

    move-result-object p1

    iput-object p1, p0, Lo/SecurityManager;->c:Lo/SecurityManager$Activity;

    .line 337
    iget-object p1, p0, Lo/SecurityManager;->a:Ljava/util/List;

    iget-object v0, p0, Lo/SecurityManager;->c:Lo/SecurityManager$Activity;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 341
    :cond_0
    iget-object p1, p0, Lo/SecurityManager;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 342
    iget-object v0, p0, Lo/SecurityManager;->a:Ljava/util/List;

    new-instance v1, Lo/SecurityManager$Activity;

    iget-object v2, p0, Lo/SecurityManager;->c:Lo/SecurityManager$Activity;

    invoke-direct {v1, v2}, Lo/SecurityManager$Activity;-><init>(Lo/SecurityManager$Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 45
    check-cast p1, Lo/String;

    invoke-virtual {p0, p1, p2}, Lo/SecurityManager;->a(Lo/String;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lo/SecurityManager;->a(Landroid/view/ViewGroup;I)Lo/String;

    move-result-object p1

    return-object p1
.end method
