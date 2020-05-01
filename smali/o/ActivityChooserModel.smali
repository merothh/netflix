.class public final Lo/ActivityChooserModel;
.super Lo/AnalogClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/AnalogClock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final i:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/ActivityChooserModel;-><init>(ZILo/amc;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/AnalogClock;-><init>()V

    iput-boolean p1, p0, Lo/ActivityChooserModel;->i:Z

    const-string p1, "copyToClipboard"

    .line 20
    iput-object p1, p0, Lo/ActivityChooserModel;->d:Ljava/lang/String;

    .line 21
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lo/WebViewProviderResponse$TaskDescription;->d:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Lookup.get(Context::clas\u2026R.string.share_copy_link)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lo/ActivityChooserModel;->b:Ljava/lang/CharSequence;

    const-string p1, "copy"

    .line 22
    iput-object p1, p0, Lo/ActivityChooserModel;->a:Ljava/lang/String;

    const-string p1, "cp"

    .line 23
    iput-object p1, p0, Lo/ActivityChooserModel;->e:Ljava/lang/String;

    .line 26
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 51
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 26
    sget v0, Lo/WebViewProviderResponse$ActionBar;->e:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ActivityChooserModel;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(ZILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lo/ActivityChooserModel;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ActivityChooserModel;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final a(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "TT;>;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "shareable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lo/ActivityChooserModel;->i:Z

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p0

    check-cast v0, Lo/AnalogClock;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    .line 47
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/AnalogClock;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->e(Lo/AnalogClock;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "TT;>;)",
            "Lio/reactivex/Single<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "shareable"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance p1, Lo/ActivityChooserModel$Application;

    invoke-direct {p1, p0, p2}, Lo/ActivityChooserModel$Application;-><init>(Lo/ActivityChooserModel;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    check-cast p1, Ljava/util/concurrent/Callable;

    invoke-static {p1}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.fromCallable {\n  \u2026O_ACTION_INTENT\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/ActivityChooserModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/pm/PackageManager;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/pm/PackageInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "pm"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "installedPackages"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/ActivityChooserModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/ActivityChooserModel;->e:Ljava/lang/String;

    return-object v0
.end method
