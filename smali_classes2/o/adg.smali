.class public final Lo/adg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "com.ironsource"

    const-string v1, "com.aura"

    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.tmobile.pr.adapt"

    const-string v4, "com.sprint.ce.updater"

    const-string v5, "com.orange.aura.oobe"

    const-string v6, "com.orange.update"

    const-string v7, "com.warranteer.helper.blu"

    .line 31
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/adg;->c:Ljava/util/List;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 78
    invoke-static {}, Lo/adg;->b()Z

    move-result v0

    const-string v1, "App Update Source is Amazon App Store"

    const-string v2, "nf_appstorehelper"

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lo/adg;->c()Landroid/content/Intent;

    move-result-object v0

    .line 80
    invoke-static {p0, v0}, Lo/adk;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lo/adg;->d()Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lo/adk;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string p0, "App Update Source is Google Play Store"

    .line 88
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v0, "Google Play Store is not installed or was not setup."

    .line 92
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lo/adg;->e()Landroid/content/Intent;

    move-result-object v0

    .line 96
    invoke-static {p0, v0}, Lo/adk;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string p0, "App Update Source is Nook App Store"

    .line 97
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 101
    :cond_2
    invoke-static {}, Lo/adg;->c()Landroid/content/Intent;

    move-result-object v0

    .line 102
    invoke-static {p0, v0}, Lo/adk;->c(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 103
    invoke-static {v2, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android."

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google."

    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "nf_appstorehelper"

    const-string v0, "Installation source is Google Play Store."

    .line 140
    invoke-static {p0, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static final b()Z
    .locals 2

    .line 130
    invoke-static {}, Lo/aek;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nf_appstorehelper"

    const-string v1, "Installation source is Amazon App Store."

    .line 131
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final c()Landroid/content/Intent;
    .locals 2

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "amzn://apps/android?p=com.netflix.mediaclient"

    .line 118
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 176
    invoke-static {}, Lo/adg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "amazon"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 183
    invoke-static {}, Lo/adi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_1
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "sideload"

    return-object p0

    .line 193
    :cond_2
    invoke-static {v0}, Lo/adg;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "google"

    return-object p0

    .line 196
    :cond_3
    invoke-static {v0}, Lo/adg;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "ironsource"

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static final d()Landroid/content/Intent;
    .locals 2

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.netflix.mediaclient"

    .line 112
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    .line 147
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    sget-object v0, Lo/adg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 152
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "nf_appstorehelper"

    const-string v0, "Installation source is ironSource"

    .line 154
    invoke-static {p0, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static final e()Landroid/content/Intent;
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.bn.sdk.shop.details"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "product_details_ean"

    const-string v2, "2940043872739"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    invoke-static {}, Lo/adi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
