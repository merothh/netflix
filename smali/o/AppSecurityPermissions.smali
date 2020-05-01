.class public final Lo/AppSecurityPermissions;
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
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lo/AppSecurityPermissions;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lo/AnalogClock;-><init>()V

    iput-object p1, p0, Lo/AppSecurityPermissions;->b:Ljava/lang/CharSequence;

    const-string p1, "moreOptions"

    .line 22
    iput-object p1, p0, Lo/AppSecurityPermissions;->a:Ljava/lang/String;

    const-string p1, "more"

    .line 23
    iput-object p1, p0, Lo/AppSecurityPermissions;->e:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lo/AppSecurityPermissions;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p2}, Lo/AppSecurityPermissions;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 19
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->qa:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "Lookup.get(Context::clas\u2026tring.share_more_options)"

    invoke-static {p1, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-direct {p0, p1, p2}, Lo/AppSecurityPermissions;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/AppSecurityPermissions;->b:Ljava/lang/CharSequence;

    return-object v0
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

    const-string v0, "shareable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lo/AppSecurityPermissions$TaskDescription;

    invoke-direct {v0, p0, p2, p1}, Lo/AppSecurityPermissions$TaskDescription;-><init>(Lo/AppSecurityPermissions;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/Serializable;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.fromCallable {\n  \u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/AppSecurityPermissions;->e:Ljava/lang/String;

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

    .line 22
    iget-object v0, p0, Lo/AppSecurityPermissions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/AppSecurityPermissions;->d:Ljava/lang/String;

    return-object v0
.end method
