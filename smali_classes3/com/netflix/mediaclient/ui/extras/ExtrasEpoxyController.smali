.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;
.super Lcom/airbnb/epoxy/AsyncEpoxyController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

.field private static final DEBUG_INFORMATIONAL:Z = false

.field private static final FETCH_TRIGGER_LOOKAHEAD:I = 0x3

.field private static final SPACE_IF_INVALID:I

.field private static final SPACE_IF_NO_CTA:I


# instance fields
.field private final activity:Lo/GH;

.field private final ctaTextPaintHelper:Landroid/text/TextPaint;

.field private final eventBusFactory:Lo/UpdateEngine;

.field private final extrasFeedViewModel:Lo/GK;

.field private final extrasNotificationsViewModel:Lo/GN;

.field private final highlighter:Lo/Ic;

.field private final isKidsUser:Z

.field private final itemSpacing:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationsInExtrasEnabled:Z

.field private final notificationsSpacing:I

.field private requestInFlight:Z

.field private final sessionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    const/16 v0, 0xc

    int-to-float v0, v0

    .line 703
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 704
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    .line 703
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->SPACE_IF_NO_CTA:I

    const/16 v0, 0x8

    int-to-float v0, v0

    .line 705
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 706
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 705
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->SPACE_IF_INVALID:I

    return-void
.end method

.method public constructor <init>(ZLo/GK;Lo/GN;Lo/Ic;Lo/UpdateEngine;Lo/GH;)V
    .locals 1

    const-string v0, "extrasFeedViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/airbnb/epoxy/AsyncEpoxyController;-><init>()V

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->isKidsUser:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasNotificationsViewModel:Lo/GN;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->highlighter:Lo/Ic;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->eventBusFactory:Lo/UpdateEngine;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->activity:Lo/GH;

    .line 117
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->isKidsUser:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notificationsInExtrasEnabled:Z

    .line 119
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    .line 121
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    .line 125
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 700
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 125
    sget p3, Lo/GS$ActionBar;->d:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->itemSpacing:I

    .line 128
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 701
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 128
    sget p3, Lo/GS$ActionBar;->i:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notificationsSpacing:I

    .line 130
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 131
    sget-object p3, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 702
    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 132
    sget p4, Lo/GS$ActionBar;->j:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 133
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->activity:Lo/GH;

    check-cast p3, Landroid/app/Activity;

    invoke-static {p3}, Lo/TwoLineListItem;->e(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->ctaTextPaintHelper:Landroid/text/TextPaint;

    .line 140
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->sessionIdMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->setDebugLoggingEnabled(Z)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->setFilterDuplicates(Z)V

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->subscribeViewModels()V

    return-void
.end method

.method public static final synthetic access$fetchData(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->fetchData()V

    return-void
.end method

.method public static final synthetic access$getDEBUG_INFORMATIONAL$cp()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->DEBUG_INFORMATIONAL:Z

    return v0
.end method

.method public static final synthetic access$getExtrasNotificationsViewModel$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Lo/GN;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasNotificationsViewModel:Lo/GN;

    return-object p0
.end method

.method public static final synthetic access$getHighlighter$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Lo/Ic;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->highlighter:Lo/Ic;

    return-object p0
.end method

.method public static final synthetic access$getItems$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNotifications$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNotificationsInExtrasEnabled$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notificationsInExtrasEnabled:Z

    return p0
.end method

.method public static final synthetic access$getRequestInFlight$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestInFlight:Z

    return p0
.end method

.method public static final synthetic access$getSPACE_IF_INVALID$cp()I
    .locals 1

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->SPACE_IF_INVALID:I

    return v0
.end method

.method public static final synthetic access$setItems$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Ljava/util/List;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setNotifications$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Ljava/util/List;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setRequestInFlight$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestInFlight:Z

    return-void
.end method

.method private final doesCtaButtonLabelFit(II)Z
    .locals 1

    .line 595
    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.getLocalizedString(stringId)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->ctaTextPaintHelper:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final fetchData()V
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestInFlight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->t()V

    const/4 v0, 0x1

    .line 610
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->requestInFlight:Z

    :cond_0
    return-void
.end method

.method private final getMinusoneCtaText(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 623
    sget p1, Lo/GS$Fragment;->h:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.getLocalized\u2026xtras_minusone_more_info)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 625
    :cond_0
    sget p1, Lo/GS$Fragment;->g:I

    invoke-static {p1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.getLocalized\u2026as_minusone_open_netflix)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final shouldDisplayCtaButtonLabels()Z
    .locals 3

    .line 584
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 699
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 585
    sget v1, Lo/GS$ActionBar;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 586
    sget v2, Lo/GS$ActionBar;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 587
    sget v1, Lo/GS$Fragment;->k:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->doesCtaButtonLabelFit(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    sget v1, Lo/GS$Fragment;->b:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->doesCtaButtonLabelFit(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    sget v1, Lo/GS$Fragment;->o:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->doesCtaButtonLabelFit(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    sget v1, Lo/GS$Fragment;->m:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->doesCtaButtonLabelFit(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    sget v1, Lo/GS$Fragment;->l:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->doesCtaButtonLabelFit(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final subscribeViewModels()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->q()Lio/reactivex/Observable;

    move-result-object v1

    .line 151
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasNotificationsViewModel:Lo/GN;

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notificationsInExtrasEnabled:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lo/GN;->c()Lio/reactivex/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 160
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$subscribeViewModels$$inlined$let$lambda$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    move-object v5, v1

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 164
    invoke-virtual {v0}, Lo/GN;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addExtrasEpoxyModelWithHolder(Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    invoke-super {p0, p1}, Lcom/airbnb/epoxy/AsyncEpoxyController;->add(Lo/BiConsumer;)V

    return-void
.end method

.method public buildModels()V
    .locals 23

    move-object/from16 v7, p0

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->shouldDisplayCtaButtonLabels()Z

    move-result v8

    .line 173
    iget-object v9, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    .line 174
    iget-object v6, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasNotificationsViewModel:Lo/GN;

    .line 176
    new-instance v10, Lo/GU;

    .line 178
    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->eventBusFactory:Lo/UpdateEngine;

    .line 179
    iget v3, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->itemSpacing:I

    .line 180
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Dialog;

    invoke-direct {v0, v7}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Dialog;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    move-object v4, v0

    check-cast v4, Lo/EncryptedPrivateKeyInfo;

    .line 192
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasNotificationsViewModel:Lo/GN;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$PendingIntent;

    invoke-direct {v0, v7}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    check-cast v0, Lo/CipherSpi;

    move-object v5, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    move-object v0, v10

    move-object/from16 v1, p0

    .line 176
    invoke-direct/range {v0 .. v5}, Lo/GU;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lo/UpdateEngine;ILo/EncryptedPrivateKeyInfo;Lo/CipherSpi;)V

    const/4 v12, 0x0

    .line 209
    invoke-virtual {v10, v12}, Lo/GU;->b(I)V

    .line 212
    iget-boolean v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notificationsInExtrasEnabled:Z

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lo/GN;->b()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 215
    new-instance v0, Lo/HE;

    invoke-direct {v0}, Lo/HE;-><init>()V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationToolbar-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/HE;->b(Ljava/lang/CharSequence;)Lo/HE;

    .line 218
    sget v1, Lo/GS$Fragment;->f:I

    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/HE;->a(Ljava/lang/CharSequence;)Lo/HE;

    .line 219
    invoke-virtual {v6}, Lo/GN;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/HE;->h(I)Lo/HE;

    .line 220
    invoke-virtual {v6}, Lo/GN;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/HE;->f(I)Lo/HE;

    move-result-object v0

    const-string v1, "with(NotificationToolbar\u2026totalCount)\n            }"

    .line 215
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 223
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 630
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lo/akz;->c()V

    :cond_3
    check-cast v2, Lo/Pa;

    .line 224
    new-instance v4, Lo/HA;

    invoke-direct {v4}, Lo/HA;-><init>()V

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notificationItem-"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lo/HA;->a(Ljava/lang/CharSequence;)Lo/HA;

    .line 226
    invoke-virtual {v2}, Lo/Pa;->read()Z

    move-result v5

    invoke-virtual {v4, v5}, Lo/HA;->c(Z)Lo/HA;

    .line 227
    invoke-virtual {v2}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/HA;->a(Ljava/lang/String;)Lo/HA;

    .line 228
    invoke-virtual {v4, v2}, Lo/HA;->a(Lo/Pa;)Lo/HA;

    .line 229
    invoke-virtual {v4, v1}, Lo/HA;->b(I)Lo/HA;

    move-result-object v1

    const-string v2, "with(NotificationItemMod\u2026(index)\n                }"

    .line 224
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/GX;

    invoke-virtual {v10, v1}, Lo/GU;->d(Lo/GX;)V

    move v1, v3

    goto :goto_3

    .line 233
    :cond_4
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-eqz v0, :cond_8

    .line 235
    new-instance v0, Lo/Hd;

    invoke-direct {v0}, Lo/Hd;-><init>()V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationSpacer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Hd;->b(Ljava/lang/CharSequence;)Lo/Hd;

    .line 237
    sget-object v1, Lo/eq;->a:Lo/eq$Activity;

    invoke-virtual {v1}, Lo/eq$Activity;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    sget v1, Lo/GS$StateListAnimator;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Hd;->e(Ljava/lang/Integer;)Lo/Hd;

    .line 240
    :cond_5
    iget v1, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->notificationsSpacing:I

    invoke-virtual {v0, v1}, Lo/Hd;->b(I)Lo/Hd;

    move-result-object v0

    const-string v1, "with(EmptyModel_()) {\n  \u2026pacing)\n                }"

    .line 235
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    goto :goto_5

    .line 245
    :cond_6
    new-instance v0, Lo/Hd;

    invoke-direct {v0}, Lo/Hd;-><init>()V

    .line 249
    iget-object v1, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "empty"

    goto :goto_4

    :cond_7
    iget-object v1, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v1

    .line 250
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noNotificationSpacer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Hd;->b(Ljava/lang/CharSequence;)Lo/Hd;

    const/16 v1, 0x1c

    int-to-float v1, v1

    .line 632
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 633
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Lookup.get<Context>().resources"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 632
    invoke-static {v13, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 251
    invoke-virtual {v0, v1}, Lo/Hd;->b(I)Lo/Hd;

    move-result-object v0

    const-string v1, "with(EmptyModel_()) {\n  \u2026ight(28.dp)\n            }"

    .line 245
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 255
    :cond_8
    :goto_5
    invoke-virtual {v9}, Lo/GK;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    invoke-virtual {v10}, Lo/GU;->d()V

    .line 634
    new-instance v0, Lo/Hg;

    invoke-direct {v0}, Lo/Hg;-><init>()V

    .line 638
    move-object v1, v0

    check-cast v1, Lo/Hh;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Hh;->e(Ljava/lang/CharSequence;)Lo/Hh;

    .line 260
    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;

    invoke-direct {v2, v7, v6}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$$inlined$error$lambda$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lo/GN;)V

    check-cast v2, Lo/alA;

    invoke-interface {v1, v2}, Lo/Hh;->b(Lo/alA;)Lo/Hh;

    .line 639
    sget-object v1, Lo/akj;->a:Lo/akj;

    .line 637
    invoke-virtual {v0, v7}, Lo/Hg;->a(Lo/OfPrimitive;)V

    return-void

    .line 273
    :cond_9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v14, v0

    check-cast v14, Ljava/util/Set;

    .line 276
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_6
    if-ge v6, v15, :cond_33

    .line 277
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 282
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 286
    new-instance v0, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v1, "Two models have the same ID. ID\'s must be unique!"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/RuntimeException;

    .line 284
    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->onExceptionSwallowed(Ljava/lang/RuntimeException;)V

    add-int/lit8 v16, v16, 0x1

    :goto_7
    move/from16 v20, v6

    move-object/from16 v18, v9

    goto/16 :goto_1d

    .line 291
    :cond_a
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sub-int v3, v6, v16

    .line 296
    invoke-virtual {v10, v3}, Lo/GU;->b(I)V

    .line 298
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->v()Z

    move-result v0

    if-nez v0, :cond_b

    .line 308
    new-instance v0, Lo/Hd;

    invoke-direct {v0}, Lo/Hd;-><init>()V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Hd;->b(Ljava/lang/CharSequence;)Lo/Hd;

    .line 310
    sget v1, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->SPACE_IF_INVALID:I

    invoke-virtual {v0, v1}, Lo/Hd;->b(I)Lo/Hd;

    move-result-object v0

    const-string v1, "with(EmptyModel_()) {\n  \u2026ID)\n                    }"

    .line 308
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    const-string v0, "SPY-17610/SPY-17668 - Invalid feed item"

    .line 313
    invoke-interface {v5, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 318
    :cond_b
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->s()Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    move-result-object v0

    invoke-virtual {v10, v3, v5, v0}, Lo/GU;->d(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    .line 320
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;->PARTNER_EXCLUSIVE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostCategoryType;

    const-string v4, "posttext-"

    const-string v2, "title-"

    const-string v11, "with(VideoViewModel_()) \u2026or)\n                    }"

    const-string v12, "video-"

    if-ne v0, v1, :cond_11

    .line 323
    new-instance v0, Lo/Hw;

    invoke-direct {v0}, Lo/Hw;-><init>()V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 325
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 326
    new-instance v1, Lo/HU;

    invoke-direct {v1}, Lo/HU;-><init>()V

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/HU;->d(Ljava/lang/CharSequence;)Lo/HU;

    .line 328
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HU;->e(Ljava/lang/String;)Lo/HU;

    .line 329
    invoke-virtual {v1, v9}, Lo/HU;->c(Lo/GK;)Lo/HU;

    .line 330
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HU;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)Lo/HU;

    .line 331
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HU;->d(Ljava/lang/Integer;)Lo/HU;

    move-result-object v0

    .line 326
    invoke-static {v0, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 333
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_8

    :cond_c
    move-object v0, v7

    check-cast v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    .line 335
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 337
    :goto_8
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 338
    new-instance v1, Lo/HW;

    invoke-direct {v1}, Lo/HW;-><init>()V

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HW;->d(Ljava/lang/CharSequence;)Lo/HW;

    .line 340
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/HW;->e(Ljava/lang/CharSequence;)Lo/HW;

    move-result-object v0

    const-string v1, "with(TitleModel_()) {\n  \u2026it)\n                    }"

    .line 338
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 342
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 344
    :cond_d
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 642
    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v1, 0x1

    :goto_a
    if-nez v1, :cond_10

    .line 643
    check-cast v0, Ljava/lang/String;

    .line 345
    new-instance v1, Lo/HR;

    invoke-direct {v1}, Lo/HR;-><init>()V

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HR;->b(Ljava/lang/CharSequence;)Lo/HR;

    .line 347
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/HR;->a(Ljava/lang/CharSequence;)Lo/HR;

    move-result-object v0

    const-string v1, "with(TextModel_()) {\n   \u2026it)\n                    }"

    .line 345
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 351
    :cond_10
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->C()Z

    move-result v0

    invoke-direct {v7, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->getMinusoneCtaText(Z)Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Lo/Hx;

    invoke-direct {v1}, Lo/Hx;-><init>()V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minusone-cta-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/Hx;->d(Ljava/lang/CharSequence;)Lo/Hx;

    .line 354
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/Hx;->b(Ljava/lang/CharSequence;)Lo/Hx;

    move-result-object v0

    const-string v1, "with(MinusoneCtaModel_()\u2026it)\n                    }"

    .line 352
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 356
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto/16 :goto_7

    .line 361
    :cond_11
    sget-boolean v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->DEBUG_INFORMATIONAL:Z

    if-eqz v0, :cond_12

    .line 362
    new-instance v0, Lo/Hb;

    invoke-direct {v0}, Lo/Hb;-><init>()V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "debug-"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/Hb;->a(Ljava/lang/CharSequence;)Lo/Hb;

    move-result-object v0

    const-string v1, "with(DebugModel_()) {\n  \u2026index\")\n                }"

    .line 362
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 369
    :cond_12
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->x()Z

    move-result v0

    if-nez v0, :cond_13

    sget v0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->SPACE_IF_NO_CTA:I

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    .line 372
    :goto_b
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, 0x1

    if-le v1, v13, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 373
    :goto_c
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v13

    move-object/from16 v18, v2

    .line 376
    instance-of v2, v13, Lo/AK;

    if-eqz v2, :cond_15

    .line 377
    new-instance v1, Lo/HU;

    invoke-direct {v1}, Lo/HU;-><init>()V

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HU;->d(Ljava/lang/CharSequence;)Lo/HU;

    .line 379
    invoke-interface {v13}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HU;->e(Ljava/lang/String;)Lo/HU;

    .line 380
    invoke-virtual {v1, v9}, Lo/HU;->c(Lo/GK;)Lo/HU;

    .line 381
    invoke-virtual {v1, v0}, Lo/HU;->c(I)Lo/HU;

    .line 382
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HU;->c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)Lo/HU;

    .line 383
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HU;->d(Ljava/lang/Integer;)Lo/HU;

    move-result-object v0

    .line 377
    invoke-static {v0, v11}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    move-object/from16 v21, v4

    move/from16 v22, v6

    goto/16 :goto_f

    :cond_15
    const-string v2, "stillImage-"

    if-eqz v1, :cond_18

    .line 388
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 646
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v1, v12}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .line 648
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v12, 0x0

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v19, v12, 0x1

    if-gez v12, :cond_16

    .line 649
    invoke-static {}, Lo/akz;->c()V

    :cond_16
    check-cast v13, Lo/AG;

    move-object/from16 v20, v1

    .line 389
    new-instance v1, Lo/HJ;

    invoke-direct {v1}, Lo/HJ;-><init>()V

    move-object/from16 v21, v4

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v22, v6

    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lo/HJ;->e(Ljava/lang/CharSequence;)Lo/HJ;

    .line 391
    invoke-virtual {v13}, Lo/AG;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/HJ;->d(Ljava/lang/String;)Lo/HJ;

    .line 392
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo/HJ;->d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)Lo/HJ;

    .line 393
    new-instance v4, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;

    invoke-direct {v4, v1, v12, v13, v5}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;-><init>(Lo/HJ;ILo/AG;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    check-cast v4, Lo/CipherSpi;

    invoke-virtual {v1, v4}, Lo/HJ;->d(Lo/CipherSpi;)Lo/HJ;

    move-result-object v1

    .line 405
    invoke-interface {v11, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v12, v19

    move-object/from16 v1, v20

    move-object/from16 v4, v21

    move/from16 v6, v22

    goto :goto_d

    :cond_17
    move-object/from16 v21, v4

    move/from16 v22, v6

    .line 650
    check-cast v11, Ljava/util/List;

    .line 409
    new-instance v1, Lo/Hf;

    invoke-direct {v1}, Lo/Hf;-><init>()V

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageCarousel-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/Hf;->e(Ljava/lang/CharSequence;)Lo/Hf;

    .line 411
    invoke-virtual {v1, v11}, Lo/Hf;->b(Ljava/util/List;)Lo/Hf;

    .line 412
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Hf;->e(Ljava/lang/Integer;)Lo/Hf;

    .line 413
    invoke-virtual {v1, v0}, Lo/Hf;->c(I)Lo/Hf;

    move-result-object v0

    const-string v1, "with(ImageCarouselModel_\u2026ng)\n                    }"

    .line 409
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    goto :goto_f

    :cond_18
    move-object/from16 v21, v4

    move/from16 v22, v6

    .line 418
    new-instance v1, Lo/HJ;

    invoke-direct {v1}, Lo/HJ;-><init>()V

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HJ;->e(Ljava/lang/CharSequence;)Lo/HJ;

    .line 420
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lo/akz;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AG;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lo/AG;->a()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    :cond_19
    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v1, v11}, Lo/HJ;->d(Ljava/lang/String;)Lo/HJ;

    .line 421
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->l()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HJ;->d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)Lo/HJ;

    .line 422
    invoke-virtual {v1, v0}, Lo/HJ;->c(I)Lo/HJ;

    move-result-object v0

    const-string v1, "with(StillImageModel_())\u2026ng)\n                    }"

    .line 418
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    .line 374
    :goto_f
    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 430
    sget v6, Lo/GS$FragmentManager;->c:I

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 432
    new-instance v0, Lo/HT;

    invoke-direct {v0}, Lo/HT;-><init>()V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "titleTreatment-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/HT;->a(Ljava/lang/CharSequence;)Lo/HT;

    .line 434
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/HT;->b(Ljava/lang/String;)Lo/HT;

    .line 435
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v1

    invoke-interface {v1}, Lo/agg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/HT;->c(Ljava/lang/String;)Lo/HT;

    .line 436
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;

    invoke-direct {v1, v7, v5, v3, v8}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;IZ)V

    check-cast v1, Lo/AEADBadTagException;

    invoke-virtual {v0, v1}, Lo/HT;->e(Lo/AEADBadTagException;)Lo/HT;

    move-result-object v0

    const-string v1, "with(TitleTreatmentModel\u2026  }\n                    }"

    .line 432
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 447
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->B()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lo/eO;->e:Lo/eO$StateListAnimator;

    invoke-virtual {v1}, Lo/eO$StateListAnimator;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 448
    new-instance v1, Lo/HG;

    invoke-direct {v1}, Lo/HG;-><init>()V

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HG;->b(Ljava/lang/CharSequence;)Lo/HG;

    .line 450
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v2

    invoke-interface {v2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HG;->d(Ljava/lang/String;)Lo/HG;

    .line 451
    invoke-virtual {v1, v8}, Lo/HG;->e(Z)Lo/HG;

    .line 452
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->A()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HG;->d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;)Lo/HG;

    move-result-object v1

    const-string v2, "with(PlayButtonModel_())\u2026                        }"

    .line 448
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_1a
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->z()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 460
    new-instance v1, Lo/HL;

    invoke-direct {v1}, Lo/HL;-><init>()V

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remindMe-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HL;->d(Ljava/lang/CharSequence;)Lo/HL;

    .line 462
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/HL;->a(Z)Lo/HL;

    .line 466
    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v2}, Lo/GK;->j()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    :goto_10
    iget-object v4, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v4}, Lo/GK;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_11

    :cond_1c
    const/4 v2, 0x0

    .line 467
    :goto_11
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->n()Z

    move-result v4

    if-nez v4, :cond_1d

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    .line 468
    invoke-virtual {v1, v2}, Lo/HL;->h(Z)Lo/HL;

    .line 469
    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v2}, Lo/GK;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HL;->c(Ljava/lang/Integer;)Lo/HL;

    .line 470
    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lo/GK;->c(Z)V

    .line 472
    :cond_1d
    invoke-virtual {v1, v8}, Lo/HL;->d(Z)Lo/HL;

    .line 473
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v2

    invoke-interface {v2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HL;->d(Ljava/lang/String;)Lo/HL;

    .line 474
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HL;->e(Ljava/lang/Integer;)Lo/HL;

    move-result-object v1

    const-string v2, "with(RemindMeButtonModel\u2026                        }"

    .line 460
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 476
    :cond_1e
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->y()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 477
    new-instance v1, Lo/Hv;

    invoke-direct {v1}, Lo/Hv;-><init>()V

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myList-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/Hv;->e(Ljava/lang/CharSequence;)Lo/Hv;

    .line 479
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v2

    invoke-interface {v2}, Lo/agg;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Hv;->d(Ljava/lang/String;)Lo/Hv;

    .line 480
    invoke-virtual {v1, v8}, Lo/Hv;->a(Z)Lo/Hv;

    .line 481
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v2

    invoke-interface {v2}, Lo/agg;->aW()Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/Hv;->c(Z)Lo/Hv;

    .line 482
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Hv;->a(Ljava/lang/Integer;)Lo/Hv;

    move-result-object v1

    const-string v2, "with(MyListButtonModel_(\u2026                        }"

    .line 477
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_1f
    :goto_12
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->u()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 487
    sget-object v1, Lo/eO;->e:Lo/eO$StateListAnimator;

    invoke-virtual {v1}, Lo/eO$StateListAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 489
    new-instance v1, Lo/Hm;

    invoke-direct {v1}, Lo/Hm;-><init>()V

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/Hm;->a(Ljava/lang/CharSequence;)Lo/Hm;

    .line 491
    invoke-virtual {v1, v8}, Lo/Hm;->a(Z)Lo/Hm;

    move-result-object v1

    const-string v2, "with(InfoButtonModel_())\u2026                        }"

    .line 489
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 494
    :cond_20
    new-instance v1, Lo/HM;

    invoke-direct {v1}, Lo/HM;-><init>()V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/HM;->a(Ljava/lang/CharSequence;)Lo/HM;

    .line 496
    invoke-virtual {v1, v8}, Lo/HM;->c(Z)Lo/HM;

    move-result-object v1

    const-string v2, "with(ShareButtonModel_()\u2026                        }"

    .line 494
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_21
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_14
    const/4 v2, 0x3

    if-ge v1, v2, :cond_22

    .line 505
    new-instance v2, Lo/GZ;

    invoke-direct {v2}, Lo/GZ;-><init>()V

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cta-"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lo/GZ;->a(Ljava/lang/CharSequence;)Lo/GZ;

    move-result-object v2

    const-string v4, "with(CtaSpaceModel_()) {\u2026                        }"

    .line 505
    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-interface {v0, v12, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_22
    const/4 v12, 0x0

    .line 511
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 652
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v17, v4, 0x1

    if-gez v4, :cond_23

    invoke-static {}, Lo/akz;->c()V

    :cond_23
    check-cast v13, Lo/BiConsumer;

    if-ge v4, v2, :cond_24

    .line 513
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    move/from16 v4, v17

    goto :goto_15

    .line 516
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_26

    .line 517
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can only handle 3 CTAs, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 521
    :cond_26
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 431
    new-instance v13, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object v2, v5

    move-object/from16 v18, v9

    move-object/from16 v12, v21

    move-object v9, v4

    move v4, v8

    move-object/from16 v19, v5

    move v5, v6

    move/from16 v20, v22

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;IZILjava/util/List;)V

    check-cast v13, Lo/GX;

    .line 429
    invoke-virtual {v10, v13}, Lo/GU;->d(Lo/GX;)V

    .line 524
    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_28

    .line 654
    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_16

    :cond_27
    const/4 v1, 0x0

    goto :goto_17

    :cond_28
    :goto_16
    const/4 v1, 0x1

    :goto_17
    const-string v2, "with(TextModel_()) {\n   \u2026ext(it)\n                }"

    if-nez v1, :cond_29

    .line 655
    check-cast v0, Ljava/lang/String;

    .line 525
    new-instance v1, Lo/HR;

    invoke-direct {v1}, Lo/HR;-><init>()V

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtitle-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/HR;->b(Ljava/lang/CharSequence;)Lo/HR;

    .line 527
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/HR;->a(Ljava/lang/CharSequence;)Lo/HR;

    move-result-object v0

    .line 525
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 531
    :cond_29
    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->c()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    .line 658
    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_18

    :cond_2a
    const/4 v1, 0x0

    goto :goto_19

    :cond_2b
    :goto_18
    const/4 v1, 0x1

    :goto_19
    if-nez v1, :cond_2c

    .line 659
    check-cast v0, Ljava/lang/String;

    .line 532
    new-instance v1, Lo/HW;

    invoke-direct {v1}, Lo/HW;-><init>()V

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/HW;->d(Ljava/lang/CharSequence;)Lo/HW;

    .line 534
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/HW;->e(Ljava/lang/CharSequence;)Lo/HW;

    move-result-object v0

    const-string v1, "with(TitleModel_()) {\n  \u2026tle(it)\n                }"

    .line 532
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 538
    :cond_2c
    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 662
    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_1a

    :cond_2d
    const/4 v1, 0x0

    goto :goto_1b

    :cond_2e
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    if-nez v1, :cond_2f

    .line 663
    check-cast v0, Ljava/lang/String;

    .line 539
    new-instance v1, Lo/HR;

    invoke-direct {v1}, Lo/HR;-><init>()V

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/HR;->b(Ljava/lang/CharSequence;)Lo/HR;

    .line 541
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/HR;->a(Ljava/lang/CharSequence;)Lo/HR;

    move-result-object v0

    .line 539
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 545
    :cond_2f
    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    check-cast v0, Ljava/lang/Iterable;

    .line 666
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 675
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 674
    check-cast v2, Lcom/netflix/model/leafs/originals/ListOfTagSummary;

    .line 545
    invoke-interface {v2}, Lcom/netflix/model/leafs/originals/ListOfTagSummary;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 674
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 677
    :cond_31
    check-cast v1, Ljava/util/List;

    .line 546
    new-instance v0, Lo/HQ;

    invoke-direct {v0}, Lo/HQ;-><init>()V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tags-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/HQ;->b(Ljava/lang/CharSequence;)Lo/HQ;

    .line 548
    invoke-virtual {v0, v1}, Lo/HQ;->e(Ljava/util/List;)Lo/HQ;

    .line 549
    invoke-interface/range {v19 .. v19}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/HQ;->a(Ljava/lang/Integer;)Lo/HQ;

    move-result-object v0

    const-string v1, "with(TagsModel_()) {\n   \u2026tColor)\n                }"

    .line 546
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/GX;

    invoke-virtual {v10, v0}, Lo/GU;->d(Lo/GX;)V

    .line 551
    sget-object v0, Lo/akj;->a:Lo/akj;

    :cond_32
    :goto_1d
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v9, v18

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_6

    .line 554
    :cond_33
    invoke-virtual {v10}, Lo/GU;->d()V

    .line 556
    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->r()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v0}, Lo/GK;->f()Lo/GK$StateListAnimator;

    move-result-object v0

    sget-object v1, Lo/GK$StateListAnimator$TaskDescription;->d:Lo/GK$StateListAnimator$TaskDescription;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_36

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    check-cast v1, Lo/MessagePdu;

    .line 559
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$modelBound$1;

    invoke-direct {v1, v7}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$buildModels$modelBound$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V

    check-cast v1, Lo/alB;

    .line 565
    iget-object v2, v7, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->extrasFeedViewModel:Lo/GK;

    invoke-virtual {v2}, Lo/GK;->c()I

    move-result v2

    if-eqz v2, :cond_35

    const/4 v3, 0x1

    if-eq v2, v3, :cond_34

    goto :goto_1e

    .line 683
    :cond_34
    new-instance v2, Lo/Hq;

    invoke-direct {v2}, Lo/Hq;-><init>()V

    .line 687
    move-object v3, v2

    check-cast v3, Lo/Hj;

    .line 567
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/Hj;->a(Ljava/lang/CharSequence;)Lo/Hj;

    .line 568
    new-instance v4, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$TaskDescription;

    invoke-direct {v4, v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$TaskDescription;-><init>(Ljava/lang/String;Lo/alB;)V

    check-cast v4, Lo/AEADBadTagException;

    invoke-interface {v3, v4}, Lo/Hj;->c(Lo/AEADBadTagException;)Lo/Hj;

    .line 688
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 686
    invoke-virtual {v2, v7}, Lo/Hq;->a(Lo/OfPrimitive;)V

    goto :goto_1e

    .line 691
    :cond_35
    new-instance v2, Lo/Hs;

    invoke-direct {v2}, Lo/Hs;-><init>()V

    .line 695
    move-object v3, v2

    check-cast v3, Lo/Hp;

    .line 571
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lo/Hp;->e(Ljava/lang/CharSequence;)Lo/Hp;

    .line 572
    new-instance v4, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;

    invoke-direct {v4, v0, v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Activity;-><init>(Ljava/lang/String;Lo/alB;)V

    check-cast v4, Lo/AEADBadTagException;

    invoke-interface {v3, v4}, Lo/Hp;->d(Lo/AEADBadTagException;)Lo/Hp;

    .line 696
    sget-object v0, Lo/akj;->a:Lo/akj;

    .line 694
    invoke-virtual {v2, v7}, Lo/Hs;->a(Lo/OfPrimitive;)V

    :cond_36
    :goto_1e
    return-void
.end method

.method public final getSessionIdMap$impl_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->sessionIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public onExceptionSwallowed(Ljava/lang/RuntimeException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    return-void
.end method
