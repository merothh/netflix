.class public final Lo/ImageView;
.super Lo/ImageSwitcher;
.source ""

# interfaces
.implements Lo/aor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ImageView$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/ImageView$Activity;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/RegistrantList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RegistrantList<",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private g:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/AttributeSet;

.field private i:I

.field private final j:Lo/apg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ImageView$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ImageView$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ImageView;->e:Lo/ImageView$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lo/ImageView;->h:Landroid/util/AttributeSet;

    iput p3, p0, Lo/ImageView;->f:I

    .line 46
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lo/ImageView;->b:Ljava/util/List;

    .line 48
    new-instance p2, Lo/RegistrantList;

    invoke-direct {p2}, Lo/RegistrantList;-><init>()V

    iput-object p2, p0, Lo/ImageView;->c:Lo/RegistrantList;

    .line 64
    invoke-static {}, Lo/aoz;->b()Lo/apg;

    move-result-object p2

    iput-object p2, p0, Lo/ImageView;->j:Lo/apg;

    const-string p2, "NetflixTagsTextView.init"

    .line 67
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 71
    new-instance p2, Lo/ImageView$5;

    invoke-direct {p2}, Lo/ImageView$5;-><init>()V

    check-cast p2, Landroid/text/Spannable$Factory;

    invoke-virtual {p0, p2}, Lo/ImageView;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    const/4 p2, 0x1

    .line 77
    invoke-virtual {p0, p2}, Lo/ImageView;->setMaxLines(I)V

    .line 79
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lo/IHwInterface$ActionBar;->p:I

    invoke-virtual {p1, v0, p3, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 81
    iget p1, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1}, Lo/ImageView;->setSeparatorColor(I)V

    .line 83
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 42
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 43
    sget p3, Lo/IHwInterface$ActionBar;->s:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic c(Lo/ImageView;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/ImageView;->g:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic d(Lo/ImageView;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/ImageView;->b:Ljava/util/List;

    return-object p0
.end method

.method private final d(I)V
    .locals 7

    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lo/ImageView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$measureAndSetTagsAsync$1;-><init>(Lo/ImageView;ILo/ale;)V

    move-object v4, v0

    check-cast v4, Lo/alN;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/anM;->b(Lo/aor;Lo/alj;Lkotlinx/coroutines/CoroutineStart;Lo/alN;ILjava/lang/Object;)Lo/aoU;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lo/apg;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/ImageView;->j:Lo/apg;

    return-object v0
.end method

.method public synthetic b()Lo/alj;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/ImageView;->a()Lo/apg;

    move-result-object v0

    check-cast v0, Lo/alj;

    return-object v0
.end method

.method public final c(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "newTags"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NetflixTagsTextView.setTags"

    .line 98
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lo/ImageView;->g:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 101
    :cond_0
    iget-object v0, p0, Lo/ImageView;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 102
    iput-object p1, p0, Lo/ImageView;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 103
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/ImageView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lo/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lo/ImageView;->d(I)V

    .line 106
    :cond_1
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<Int>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lo/ImageView;->g:Lio/reactivex/subjects/PublishSubject;

    .line 108
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 109
    check-cast p1, Lio/reactivex/Observable;

    return-object p1
.end method

.method public final synthetic c(ILo/ale;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/ale<",
            "-",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lo/ImageView;->c:Lo/RegistrantList;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixTagsTextView$getMeasuredTagsSpannable$2;-><init>(Lo/ImageView;ILo/ale;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1, p2}, Lo/RegistrantList;->d(Lo/alA;Lo/ale;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    .line 51
    iget v0, p0, Lo/ImageView;->i:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const-string v0, "NetflixTagsTextView.onSizeChanged"

    .line 113
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Lo/ImageSwitcher;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lo/ImageView;->d(I)V

    .line 118
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lo/ImageSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setSeparatorColor(I)V
    .locals 1

    .line 53
    iget v0, p0, Lo/ImageView;->i:I

    if-eq v0, p1, :cond_0

    .line 54
    iput p1, p0, Lo/ImageView;->i:I

    .line 56
    iget-object p1, p0, Lo/ImageView;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lo/ImageView;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lo/ImageView;->c(Ljava/util/List;)Lio/reactivex/Observable;

    :cond_0
    return-void
.end method
