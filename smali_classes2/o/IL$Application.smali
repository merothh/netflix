.class public Lo/IL$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field private final a:Lio/reactivex/disposables/CompositeDisposable;

.field private final b:Landroid/os/Handler;

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lo/IL;

.field private final f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private g:Lo/BaseAdapter;

.field private h:Z

.field private i:Lo/BaseAdapter;

.field private j:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;

.field private m:Z

.field private n:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/IL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lo/IL$Application;->e:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/IL$Application;->b:Landroid/os/Handler;

    .line 953
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/IL$Application;->d:Ljava/util/List;

    .line 954
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/IL$Application;->a:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x1

    .line 965
    iput-boolean p1, p0, Lo/IL$Application;->m:Z

    .line 971
    new-instance p1, Lo/IL$Application$2;

    invoke-direct {p1, p0}, Lo/IL$Application$2;-><init>(Lo/IL$Application;)V

    iput-object p1, p0, Lo/IL$Application;->l:Ljava/lang/Runnable;

    .line 968
    iput-object p2, p0, Lo/IL$Application;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method synthetic constructor <init>(Lo/IL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/IL$4;)V
    .locals 0

    .line 947
    invoke-direct {p0, p1, p2}, Lo/IL$Application;-><init>(Lo/IL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1071
    iput p1, p0, Lo/IL$Application;->c:I

    return-void
.end method

.method private b()V
    .locals 4

    .line 1035
    iget-object v0, p0, Lo/IL$Application;->g:Lo/BaseAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/IL$Application;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/IL$Application;->e:Lo/IL;

    invoke-virtual {v0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1038
    :cond_0
    iget v0, p0, Lo/IL$Application;->c:I

    iget-object v1, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lo/IL$Application;->d:Ljava/util/List;

    iget v1, p0, Lo/IL$Application;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1042
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1043
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "image url is empty, animateSlideshow"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 1047
    :cond_2
    iget-object v1, p0, Lo/IL$Application;->e:Lo/IL;

    .line 1048
    invoke-static {v1}, Lo/IL;->a(Lo/IL;)Lo/Jj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v1

    .line 1049
    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v1

    iget-object v2, p0, Lo/IL$Application;->g:Lo/BaseAdapter;

    .line 1050
    invoke-virtual {v2}, Lo/BaseAdapter;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v1

    iget-object v2, p0, Lo/IL$Application;->g:Lo/BaseAdapter;

    .line 1051
    invoke-virtual {v2}, Lo/BaseAdapter;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/GetImageRequest;->b(I)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v1

    .line 1052
    invoke-virtual {v1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object v1

    .line 1053
    sget-object v2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    iget-object v3, p0, Lo/IL$Application;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2, v3}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lo/Jd;

    invoke-direct {v2, p0, v0}, Lo/Jd;-><init>(Lo/IL$Application;Ljava/lang/String;)V

    new-instance v0, Lo/Jc;

    invoke-direct {v0, p0}, Lo/Jc;-><init>(Lo/IL$Application;)V

    invoke-virtual {v1, v2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1077
    iget-object v1, p0, Lo/IL$Application;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 1079
    iget v0, p0, Lo/IL$Application;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/IL$Application;->c:I

    .line 1080
    iget v0, p0, Lo/IL$Application;->c:I

    iget-object v1, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1081
    iput v0, p0, Lo/IL$Application;->c:I

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;Lo/BaseAdapter;Lo/BaseAdapter;)V
    .locals 1

    .line 1021
    invoke-virtual {p4}, Lo/BaseAdapter;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    .line 1026
    :cond_0
    invoke-virtual {p3, p1}, Lo/BaseAdapter;->setTag(Ljava/lang/Object;)V

    .line 1027
    invoke-virtual {p3, p2}, Lo/BaseAdapter;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1028
    invoke-virtual {p3}, Lo/BaseAdapter;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1029
    invoke-virtual {p4}, Lo/BaseAdapter;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1031
    iget-boolean p1, p0, Lo/IL$Application;->m:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lo/IL$Application;->m:Z

    return-void
.end method

.method static synthetic b(Lo/IL$Application;)V
    .locals 0

    .line 947
    invoke-direct {p0}, Lo/IL$Application;->b()V

    return-void
.end method

.method static synthetic c(Lo/IL$Application;)Landroid/os/Handler;
    .locals 0

    .line 947
    iget-object p0, p0, Lo/IL$Application;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lo/IL$Application;Ljava/lang/String;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/IL$Application;->e(Ljava/lang/String;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method static synthetic e(Lo/IL$Application;)Ljava/lang/Runnable;
    .locals 0

    .line 947
    iget-object p0, p0, Lo/IL$Application;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic e(Ljava/lang/String;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 3

    .line 1055
    iget-boolean v0, p0, Lo/IL$Application;->m:Z

    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lo/IL$Application;->i:Lo/BaseAdapter;

    iget-object v2, p0, Lo/IL$Application;->g:Lo/BaseAdapter;

    invoke-direct {p0, p1, v0, v1, v2}, Lo/IL$Application;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Lo/BaseAdapter;Lo/BaseAdapter;)V

    .line 1057
    iget-object p1, p0, Lo/IL$Application;->n:Lo/CompatibilityInfo;

    if-eqz p1, :cond_0

    .line 1058
    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    .line 1060
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lo/IL$Application;->n:Lo/CompatibilityInfo;

    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lo/IL$Application;->g:Lo/BaseAdapter;

    iget-object v2, p0, Lo/IL$Application;->i:Lo/BaseAdapter;

    invoke-direct {p0, p1, v0, v1, v2}, Lo/IL$Application;->b(Ljava/lang/String;Landroid/graphics/Bitmap;Lo/BaseAdapter;Lo/BaseAdapter;)V

    .line 1063
    iget-object p1, p0, Lo/IL$Application;->j:Lo/CompatibilityInfo;

    if-eqz p1, :cond_2

    .line 1064
    invoke-virtual {p1}, Lo/CompatibilityInfo;->close()V

    .line 1066
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lo/IL$Application;->j:Lo/CompatibilityInfo;

    :goto_0
    return-void
.end method

.method static synthetic e(Lo/IL$Application;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL$Application;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 981
    iget-object v0, p0, Lo/IL$Application;->e:Lo/IL;

    invoke-static {v0}, Lo/IL;->h(Lo/IL;)Lo/Bb;

    move-result-object v0

    instance-of v0, v0, Lo/AV;

    if-eqz v0, :cond_2

    .line 983
    iget-object v0, p0, Lo/IL$Application;->e:Lo/IL;

    invoke-static {v0}, Lo/IL;->a(Lo/IL;)Lo/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lo/Jj;->m()Lo/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/IL$Application;->g:Lo/BaseAdapter;

    .line 984
    iget-object v0, p0, Lo/IL$Application;->e:Lo/IL;

    invoke-static {v0}, Lo/IL;->a(Lo/IL;)Lo/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lo/Jj;->e()Lo/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/IL$Application;->i:Lo/BaseAdapter;

    const/4 v0, 0x0

    .line 986
    iput-boolean v0, p0, Lo/IL$Application;->h:Z

    .line 987
    iget-object v1, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 988
    iget-object v1, p0, Lo/IL$Application;->e:Lo/IL;

    invoke-static {v1}, Lo/IL;->h(Lo/IL;)Lo/Bb;

    move-result-object v1

    check-cast v1, Lo/AV;

    .line 990
    invoke-interface {v1}, Lo/AV;->w()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 991
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 992
    iget-object v3, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 995
    :cond_0
    invoke-interface {v1}, Lo/AV;->aX()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 998
    iget-object v2, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    :cond_1
    iget-object v1, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1002
    iput v0, p0, Lo/IL$Application;->c:I

    .line 1003
    iget-object v0, p0, Lo/IL$Application;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/IL$Application;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    iget-object v0, p0, Lo/IL$Application;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/IL$Application;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1010
    iget-boolean v0, p0, Lo/IL$Application;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1011
    iput-boolean v0, p0, Lo/IL$Application;->h:Z

    .line 1012
    iget-object v0, p0, Lo/IL$Application;->b:Landroid/os/Handler;

    iget-object v1, p0, Lo/IL$Application;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 1014
    iget-object p1, p0, Lo/IL$Application;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1016
    :cond_0
    iget-object p1, p0, Lo/IL$Application;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lo/IL$Application;->j:Lo/CompatibilityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 1088
    iput-object v1, p0, Lo/IL$Application;->j:Lo/CompatibilityInfo;

    .line 1090
    :cond_0
    iget-object v0, p0, Lo/IL$Application;->n:Lo/CompatibilityInfo;

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 1092
    iput-object v1, p0, Lo/IL$Application;->n:Lo/CompatibilityInfo;

    :cond_1
    return-void
.end method
