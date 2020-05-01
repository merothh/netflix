.class public abstract Lo/RuntimeException;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/StackOverflowError$Activity;
.implements Lo/StackOverflowError$Application;
.implements Lo/StackOverflowError$TaskDescription;
.implements Landroidx/preference/DialogPreference$Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RuntimeException$Application;,
        Lo/RuntimeException$TaskDescription;,
        Lo/RuntimeException$StateListAnimator;,
        Lo/RuntimeException$ActionBar;
    }
.end annotation


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lo/StackOverflowError;

.field private final f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/os/Handler;

.field private i:I

.field private final j:Lo/RuntimeException$Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 135
    sget v0, Lo/StackTraceElement$Activity;->b:I

    iput v0, p0, Lo/RuntimeException;->i:I

    .line 137
    new-instance v0, Lo/RuntimeException$Application;

    invoke-direct {v0, p0}, Lo/RuntimeException$Application;-><init>(Lo/RuntimeException;)V

    iput-object v0, p0, Lo/RuntimeException;->j:Lo/RuntimeException$Application;

    .line 140
    new-instance v0, Lo/RuntimeException$3;

    invoke-direct {v0, p0}, Lo/RuntimeException$3;-><init>(Lo/RuntimeException;)V

    iput-object v0, p0, Lo/RuntimeException;->h:Landroid/os/Handler;

    .line 152
    new-instance v0, Lo/RuntimeException$5;

    invoke-direct {v0, p0}, Lo/RuntimeException$5;-><init>(Lo/RuntimeException;)V

    iput-object v0, p0, Lo/RuntimeException;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private g()V
    .locals 2

    .line 527
    iget-object v0, p0, Lo/RuntimeException;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lo/RuntimeException;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 521
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o()V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lo/RuntimeException;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->L()V

    .line 546
    :cond_0
    invoke-virtual {p0}, Lo/RuntimeException;->d()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 417
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    invoke-virtual {v0}, Lo/StackOverflowError;->b()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .line 427
    invoke-direct {p0}, Lo/RuntimeException;->h()V

    .line 429
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    iget-object v1, p0, Lo/RuntimeException;->c:Landroid/content/Context;

    .line 430
    invoke-virtual {p0}, Lo/RuntimeException;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, p1, v2}, Lo/StackOverflowError;->a(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/RuntimeException;->b(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 3

    .line 628
    invoke-virtual {p0}, Lo/RuntimeException;->j()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/RuntimeException$TaskDescription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lo/RuntimeException;->j()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/RuntimeException$TaskDescription;

    .line 630
    invoke-interface {v0, p0, p1}, Lo/RuntimeException$TaskDescription;->b(Lo/RuntimeException;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 632
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v2

    instance-of v2, v2, Lo/RuntimeException$TaskDescription;

    if-eqz v2, :cond_1

    .line 633
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lo/RuntimeException$TaskDescription;

    .line 634
    invoke-interface {v0, p0, p1}, Lo/RuntimeException$TaskDescription;->b(Lo/RuntimeException;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 642
    :cond_2
    invoke-virtual {p0}, Lo/RuntimeException;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 647
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 648
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/Type;->c(Ljava/lang/String;)Lo/Type;

    move-result-object p1

    goto :goto_1

    .line 649
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 650
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/Runtime;->a(Ljava/lang/String;)Lo/Runtime;

    move-result-object p1

    goto :goto_1

    .line 651
    :cond_5
    instance-of v0, p1, Landroidx/preference/internal/AbstractMultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 652
    invoke-virtual {p1}, Landroidx/preference/Preference;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ReflectiveOperationException;->b(Ljava/lang/String;)Lo/ReflectiveOperationException;

    move-result-object p1

    .line 657
    :goto_1
    invoke-virtual {p1, p0, v1}, Lo/PushbackReader;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 658
    invoke-virtual {p0}, Lo/RuntimeException;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lo/PushbackReader;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    return-void

    .line 654
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    .line 514
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 517
    :cond_0
    invoke-virtual {v0, p1}, Lo/StackOverflowError;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 580
    iget-object p3, p0, Lo/RuntimeException;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 582
    sget p3, Lo/StackTraceElement$Application;->b:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 587
    :cond_0
    sget p3, Lo/StackTraceElement$Activity;->c:I

    const/4 v0, 0x0

    .line 588
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    invoke-virtual {p0}, Lo/RuntimeException;->f()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 591
    new-instance p2, Lo/Short;

    invoke-direct {p2, p1}, Lo/Short;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lo/Constructor;)V

    return-object p1
.end method

.method public b()Lo/StackOverflowError;
    .locals 1

    .line 392
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lo/RuntimeException;->j:Lo/RuntimeException$Application;

    invoke-virtual {v0, p1}, Lo/RuntimeException$Application;->d(I)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lo/RuntimeException;->j:Lo/RuntimeException$Application;

    invoke-virtual {v0, p1}, Lo/RuntimeException$Application;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    invoke-virtual {v0, p1}, Lo/StackOverflowError;->e(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lo/RuntimeException;->d()V

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lo/RuntimeException;->b:Z

    .line 404
    iget-boolean p1, p0, Lo/RuntimeException;->d:Z

    if-eqz p1, :cond_0

    .line 405
    invoke-direct {p0}, Lo/RuntimeException;->g()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 3

    .line 533
    invoke-virtual {p0}, Lo/RuntimeException;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lo/RuntimeException;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lo/RuntimeException;->e(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 536
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->M()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lo/RuntimeException;->e()V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public abstract d(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public d(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 495
    invoke-virtual {p0}, Lo/RuntimeException;->j()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/RuntimeException$StateListAnimator;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lo/RuntimeException;->j()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/RuntimeException$StateListAnimator;

    .line 497
    invoke-interface {v0, p0, p1}, Lo/RuntimeException$StateListAnimator;->c(Lo/RuntimeException;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lo/RuntimeException$StateListAnimator;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lo/RuntimeException$StateListAnimator;

    .line 501
    invoke-interface {v0, p0, p1}, Lo/RuntimeException$StateListAnimator;->c(Lo/RuntimeException;Landroidx/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public d(Landroidx/preference/Preference;)Z
    .locals 2

    .line 467
    invoke-virtual {p1}, Landroidx/preference/Preference;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lo/RuntimeException;->j()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/RuntimeException$ActionBar;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lo/RuntimeException;->j()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/RuntimeException$ActionBar;

    .line 471
    invoke-interface {v0, p0, p1}, Lo/RuntimeException$ActionBar;->b(Lo/RuntimeException;Landroidx/preference/Preference;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 473
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lo/RuntimeException$ActionBar;

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lo/RuntimeException$ActionBar;

    .line 475
    invoke-interface {v0, p0, p1}, Lo/RuntimeException$ActionBar;->b(Lo/RuntimeException;Landroidx/preference/Preference;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method protected e(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Activity;
    .locals 1

    .line 614
    new-instance v0, Lo/SecurityManager;

    invoke-direct {v0, p1}, Lo/SecurityManager;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()Landroidx/recyclerview/widget/RecyclerView$Fragment;
    .locals 2

    .line 604
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final i()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 560
    iget-object v0, p0, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public j()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 209
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 211
    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v1}, Lo/Serializable;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lo/StackTraceElement$ActionBar;->i:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 212
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 215
    sget v0, Lo/StackTraceElement$LoaderManager;->c:I

    .line 217
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lo/RuntimeException;->getActivity()Lo/Serializable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lo/RuntimeException;->c:Landroid/content/Context;

    .line 219
    new-instance v0, Lo/StackOverflowError;

    iget-object v1, p0, Lo/RuntimeException;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/StackOverflowError;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    .line 220
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    invoke-virtual {v0, p0}, Lo/StackOverflowError;->a(Lo/StackOverflowError$TaskDescription;)V

    .line 221
    invoke-virtual {p0}, Lo/RuntimeException;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lo/RuntimeException;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo/RuntimeException;->d(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 247
    iget-object v0, p0, Lo/RuntimeException;->c:Landroid/content/Context;

    sget-object v1, Lo/StackTraceElement$PendingIntent;->ba:[I

    sget v2, Lo/StackTraceElement$ActionBar;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 252
    sget v1, Lo/StackTraceElement$PendingIntent;->aX:I

    iget v2, p0, Lo/RuntimeException;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lo/RuntimeException;->i:I

    .line 255
    sget v1, Lo/StackTraceElement$PendingIntent;->aZ:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    sget v2, Lo/StackTraceElement$PendingIntent;->be:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 259
    sget v5, Lo/StackTraceElement$PendingIntent;->bf:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    iget-object v0, p0, Lo/RuntimeException;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 266
    iget v0, p0, Lo/RuntimeException;->i:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 269
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 274
    check-cast v0, Landroid/view/ViewGroup;

    .line 276
    invoke-virtual {p0, p1, v0, p3}, Lo/RuntimeException;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 282
    iput-object p1, p0, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    iget-object p3, p0, Lo/RuntimeException;->j:Lo/RuntimeException$Application;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 285
    invoke-virtual {p0, v1}, Lo/RuntimeException;->b(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v4, :cond_0

    .line 287
    invoke-virtual {p0, v2}, Lo/RuntimeException;->b(I)V

    .line 289
    :cond_0
    iget-object p1, p0, Lo/RuntimeException;->j:Lo/RuntimeException$Application;

    invoke-virtual {p1, v5}, Lo/RuntimeException$Application;->b(Z)V

    .line 293
    iget-object p1, p0, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 294
    iget-object p1, p0, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    :cond_1
    iget-object p1, p0, Lo/RuntimeException;->h:Landroid/os/Handler;

    iget-object p3, p0, Lo/RuntimeException;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 279
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 366
    iget-object v0, p0, Lo/RuntimeException;->h:Landroid/os/Handler;

    iget-object v1, p0, Lo/RuntimeException;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lo/RuntimeException;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-boolean v0, p0, Lo/RuntimeException;->b:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lo/RuntimeException;->o()V

    :cond_0
    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lo/RuntimeException;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 372
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    invoke-virtual {p0}, Lo/RuntimeException;->a()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 382
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->d(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 383
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 352
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 353
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    invoke-virtual {v0, p0}, Lo/StackOverflowError;->b(Lo/StackOverflowError$Activity;)V

    .line 354
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    invoke-virtual {v0, p0}, Lo/StackOverflowError;->b(Lo/StackOverflowError$Application;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 360
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/StackOverflowError;->b(Lo/StackOverflowError$Activity;)V

    .line 361
    iget-object v0, p0, Lo/RuntimeException;->e:Lo/StackOverflowError;

    invoke-virtual {v0, v1}, Lo/StackOverflowError;->b(Lo/StackOverflowError$Application;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 327
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 330
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lo/RuntimeException;->a()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->e(Landroid/os/Bundle;)V

    .line 339
    :cond_0
    iget-boolean p1, p0, Lo/RuntimeException;->b:Z

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p0}, Lo/RuntimeException;->c()V

    .line 341
    iget-object p1, p0, Lo/RuntimeException;->g:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 342
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lo/RuntimeException;->g:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lo/RuntimeException;->d:Z

    return-void
.end method
