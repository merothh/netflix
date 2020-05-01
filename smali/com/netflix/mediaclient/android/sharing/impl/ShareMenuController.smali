.class public Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;
.super Lcom/netflix/android/widgetry/widget/menu/MenuController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
        "Lo/AnalogClock<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private shareInProgress:Lo/AnalogClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalogClock<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final shareTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AnalogClock<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "shareTargets"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 66
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 14
    sget v1, Lo/WebViewProviderResponse$TaskDescription;->c:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareTargets:Ljava/util/List;

    .line 19
    new-instance p1, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$1;-><init>(Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;)V

    check-cast p1, Lo/OfPrimitive$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->addInterceptor(Lo/OfPrimitive$Application;)V

    return-void
.end method

.method public static final synthetic access$getShareInProgress$p(Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;)Lo/AnalogClock;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareInProgress:Lo/AnalogClock;

    return-object p0
.end method

.method public static final synthetic access$setShareInProgress$p(Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;Lo/AnalogClock;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareInProgress:Lo/AnalogClock;

    return-void
.end method


# virtual methods
.method public addItems()V
    .locals 8

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareTargets:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 60
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    .line 62
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/AnalogClock;

    .line 31
    instance-of v5, v4, Lo/ActivityChooserModel;

    if-nez v5, :cond_2

    instance-of v4, v4, Lo/AppSecurityPermissions;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lo/akz;->d()V

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v1, :cond_7

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareTargets:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/AnalogClock;

    instance-of v2, v2, Lo/AppSecurityPermissions;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    check-cast v1, Lo/AnalogClock;

    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 35
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->getDismissSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lo/akj;->a:Lo/akj;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareTargets:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AnalogClock;

    .line 40
    new-instance v4, Lo/SystemProperties;

    invoke-direct {v4}, Lo/SystemProperties;-><init>()V

    .line 41
    iget-object v5, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareInProgress:Lo/AnalogClock;

    if-eqz v5, :cond_8

    invoke-static {v1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    .line 42
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lo/AnalogClock;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/AnalogClock;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lo/SystemProperties;->d(Ljava/lang/CharSequence;)Lo/SystemProperties;

    .line 43
    invoke-virtual {v1}, Lo/AnalogClock;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/SystemProperties;->a(Landroid/graphics/drawable/Drawable;)Lo/SystemProperties;

    .line 44
    invoke-virtual {v1}, Lo/AnalogClock;->a()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/SystemProperties;->b(Ljava/lang/CharSequence;)Lo/SystemProperties;

    .line 45
    iget-object v6, p0, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->shareInProgress:Lo/AnalogClock;

    invoke-static {v1, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lo/SystemProperties;->a(Z)Lo/SystemProperties;

    if-eqz v5, :cond_9

    const v6, 0x3eb33333    # 0.35f

    goto :goto_6

    :cond_9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 46
    :goto_6
    invoke-virtual {v4, v6}, Lo/SystemProperties;->b(F)Lo/SystemProperties;

    if-nez v5, :cond_a

    .line 48
    new-instance v5, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;

    invoke-direct {v5, v1, p0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController$Application;-><init>(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lo/SystemProperties;->b(Landroid/view/View$OnClickListener;)Lo/SystemProperties;

    .line 54
    :cond_a
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->getDismissClickListener()Lo/alA;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v5, Lo/AbsoluteLayout;

    invoke-direct {v5, v1}, Lo/AbsoluteLayout;-><init>(Lo/alA;)V

    move-object v1, v5

    :cond_b
    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v1}, Lo/SystemProperties;->c(Landroid/view/View$OnClickListener;)Lo/SystemProperties;

    .line 40
    check-cast v4, Lo/BiConsumer;

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;->add(Lo/BiConsumer;)V

    goto :goto_4

    :cond_c
    return-void
.end method
