.class public final Lo/YC$TaskDescription;
.super Lo/ShellCommand$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field final synthetic c:Lo/YC;

.field private final d:Lo/ams;

.field private e:J

.field private g:Lio/reactivex/disposables/Disposable;

.field private h:Lo/Lw;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/YC$TaskDescription;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleImg"

    const-string v5, "getTitleImg()Lcom/netflix/mediaclient/android/widget/FitCenterTopImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "currProgress"

    const-string v4, "getCurrProgress()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/YC$TaskDescription;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lo/YC;Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/ShellCommand$StateListAnimator;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lo/YC$TaskDescription;->c:Lo/YC;

    .line 57
    invoke-direct {p0, p2, p3}, Lo/ShellCommand$ActionBar;-><init>(Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V

    .line 59
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pa:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$TaskDescription;->b:Lo/ams;

    .line 61
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->df:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$TaskDescription;->d:Lo/ams;

    const-wide/16 p1, 0x7530

    .line 64
    iput-wide p1, p0, Lo/YC$TaskDescription;->e:J

    .line 73
    invoke-virtual {p0}, Lo/YC$TaskDescription;->f()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lo/YC$TaskDescription$1;

    invoke-direct {p2, p0}, Lo/YC$TaskDescription$1;-><init>(Lo/YC$TaskDescription;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic c(Lo/YC$TaskDescription;J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lo/YC$TaskDescription;->i:J

    return-void
.end method

.method public static final synthetic d(Lo/YC$TaskDescription;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lo/YC$TaskDescription;->e:J

    return-wide v0
.end method

.method public static final synthetic e(Lo/YC$TaskDescription;)Lo/Lw;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/YC$TaskDescription;->h:Lo/Lw;

    return-object p0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/YC$TaskDescription;->d:Lo/ams;

    sget-object v1, Lo/YC$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final j()Lo/DayPickerPagerAdapter;
    .locals 3

    iget-object v0, p0, Lo/YC$TaskDescription;->b:Lo/ams;

    sget-object v1, Lo/YC$TaskDescription;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DayPickerPagerAdapter;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 141
    invoke-super {p0}, Lo/ShellCommand$ActionBar;->a()V

    .line 142
    iget-object v0, p0, Lo/YC$TaskDescription;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 7

    .line 115
    invoke-super {p0, p1}, Lo/ShellCommand$ActionBar;->b(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lo/YC$TaskDescription;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lo/YC$TaskDescription;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 118
    instance-of v0, p1, Lo/Yn;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lo/YC$TaskDescription;->e:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 119
    check-cast p1, Lo/Yn;

    invoke-virtual {p1}, Lo/Yn;->c()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    .line 120
    iget-wide v0, p0, Lo/YC$TaskDescription;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 121
    new-instance v0, Lo/YC$TaskDescription$TaskDescription;

    invoke-direct {v0, p0}, Lo/YC$TaskDescription$TaskDescription;-><init>(Lo/YC$TaskDescription;)V

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 122
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "previewItem.playProgress\u2026dSchedulers.mainThread())"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$2;-><init>(Lo/YC$TaskDescription;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 129
    sget-object p1, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$3;->d:Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolder$onAttach$3;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 123
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/YC$TaskDescription;->g:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lo/YC$TaskDescription;->h:Lo/Lw;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Lw;->c(F)V

    .line 135
    :cond_1
    iput-wide v1, p0, Lo/YC$TaskDescription;->i:J

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    instance-of v0, p1, Lo/Yn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lo/Yn;

    if-eqz v0, :cond_4

    .line 85
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/DayPickerPagerAdapter;->setVisibility(I)V

    .line 86
    invoke-virtual {v0}, Lo/Yn;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lo/DayPickerPagerAdapter;->setPassActualScaleTypeToParent(Z)V

    .line 88
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v3

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Lo/DayPickerPagerAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/DayPickerPagerAdapter;->setTransitionName(Ljava/lang/String;)V

    .line 91
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 92
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v3, "image url is empty, PreviewsTitleBarAdapter.onBind"

    .line 93
    invoke-interface {v1, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 95
    :cond_3
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v3

    .line 96
    new-instance v5, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v5}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 97
    invoke-virtual {v5, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 99
    sget-object v4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v1, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 95
    invoke-virtual {v3, v1}, Lo/DayPickerPagerAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 102
    :goto_3
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/DayPickerPagerAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0}, Lo/YC$TaskDescription;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    check-cast p1, Lo/Yn;

    invoke-virtual {p1}, Lo/Yn;->getSupplementalVideoDuration()J

    move-result-wide v1

    const/16 p1, 0x3e8

    int-to-long v3, p1

    mul-long v1, v1, v3

    iput-wide v1, p0, Lo/YC$TaskDescription;->e:J

    .line 107
    new-instance p1, Lo/Lw;

    .line 108
    invoke-virtual {v0}, Lo/Yn;->getForegroundColor()I

    move-result v4

    .line 109
    invoke-virtual {p0}, Lo/YC$TaskDescription;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->q:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    .line 107
    invoke-direct/range {v3 .. v8}, Lo/Lw;-><init>(IIFILo/amc;)V

    iput-object p1, p0, Lo/YC$TaskDescription;->h:Lo/Lw;

    .line 111
    invoke-direct {p0}, Lo/YC$TaskDescription;->i()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/YC$TaskDescription;->h:Lo/Lw;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public d()V
    .locals 2

    .line 146
    invoke-direct {p0}, Lo/YC$TaskDescription;->j()Lo/DayPickerPagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DayPickerPagerAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    invoke-virtual {p0}, Lo/YC$TaskDescription;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/YC$TaskDescription;->c()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lo/YC$TaskDescription;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lo/YC$TaskDescription;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/Yn;

    invoke-virtual {v0}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.previews.PreviewsFeedItemModel"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, ""

    .line 80
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/YC$TaskDescription;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " x = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$TaskDescription;->e()Lo/ShellCommand$Application;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$Application;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$TaskDescription;->e()Lo/ShellCommand$Application;

    move-result-object v0

    iget v0, v0, Lo/ShellCommand$Application;->width:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$TaskDescription;->e()Lo/ShellCommand$Application;

    move-result-object v0

    iget v0, v0, Lo/ShellCommand$Application;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", visible = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$TaskDescription;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
