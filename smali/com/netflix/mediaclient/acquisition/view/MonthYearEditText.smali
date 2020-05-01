.class public final Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$Companion;

.field public static final MONTH_YEAR_DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private monthYearUpdateListener:Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;

.field private previousText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->Companion:Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$Companion;

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

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->previousText:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->attachMonthYearTextFormatter()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 11
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMonthYearValue(Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;)Lkotlin/Pair;
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getMonthYearValue()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateMonthYear(Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->updateMonthYear()V

    return-void
.end method

.method private final attachMonthYearTextFormatter()V
    .locals 2

    .line 30
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-static {v0}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object v0

    const-string v1, "RxTextView.textChanges(this)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText$attachMonthYearTextFormatter$textChangeDisposable$1;-><init>(Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final getMonthYearText()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v0, "/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 89
    :goto_0
    new-instance v2, Lkotlin/Pair;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_2
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final getMonthYearValue()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getMonthYearText()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v1}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 78
    invoke-static {v0}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    .line 84
    :goto_2
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final updateMonthYear()V
    .locals 3

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->getMonthYearValue()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->monthYearUpdateListener:Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;->onMonthAndYearUpdated(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMonthYearUpdateListener()Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->monthYearUpdateListener:Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;

    return-object v0
.end method

.method public final getPreviousText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->previousText:Ljava/lang/String;

    return-object v0
.end method

.method public final setMonthYearUpdateListener(Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->monthYearUpdateListener:Lcom/netflix/mediaclient/acquisition/view/MonthYearUpdateListener;

    return-void
.end method

.method public final setPreviousText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/MonthYearEditText;->previousText:Ljava/lang/String;

    return-void
.end method
