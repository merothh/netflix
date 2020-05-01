.class public Lo/QE;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method private final a(J)Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UIStringUtils.formatShor\u2026e(netflixActivity, space)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final a()V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 96
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/NetflixActionBar;",
            "Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lo/QA<",
            "*>;>;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lo/QE;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    const/4 v0, -0x1

    if-eqz p4, :cond_1

    .line 50
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lo/amj;->c:Lo/amj;

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    const/4 p3, 0x1

    .line 55
    check-cast p4, Ljava/lang/Iterable;

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p4, v4}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 121
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 122
    check-cast v4, Lo/QA;

    .line 55
    invoke-virtual {v4}, Lo/QA;->C()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 55
    invoke-static {v3}, Lo/akz;->l(Ljava/lang/Iterable;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lo/QE;->a(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, p3

    .line 51
    array-length p3, v2

    invoke-static {v2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string p4, "%d (%s)"

    invoke-static {v1, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "java.lang.String.format(locale, format, *args)"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p2, p3, v0}, Lo/QE;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;Ljava/lang/String;I)V

    .line 58
    sget-object p4, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {p2, p4}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    goto :goto_1

    .line 61
    :cond_1
    iget-object p3, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/netflix/mediaclient/ui/R$AssistContent;->iv:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-direct {p0, p2, p3, v0}, Lo/QE;->a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;Ljava/lang/String;I)V

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0, p2}, Lo/QE;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    move-object p3, v0

    :goto_1
    if-eqz p3, :cond_3

    .line 70
    iget-object p4, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p4, Landroid/content/Context;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p4, p3}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 73
    :cond_3
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 75
    invoke-direct {p0}, Lo/QE;->a()V

    return-void
.end method

.method public static synthetic b(Lo/QE;ZLjava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 22
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->fR:I

    invoke-static {p3}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/QE;->e(ZLjava/util/List;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateActionBar"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 85
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public static final synthetic d(Lo/QE;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;ZLjava/util/List;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lo/QE;->a(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/QE;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 106
    invoke-virtual {p0}, Lo/QE;->d()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public final e(ZLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lo/QA<",
            "*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    iput-object p3, p0, Lo/QE;->b:Ljava/lang/String;

    .line 25
    iget-object p3, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p3

    iget-object v0, p0, Lo/QE;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsActionBarManager$updateActionBar$1;-><init>(Lo/QE;ZLjava/util/List;)V

    check-cast v1, Lo/alN;

    invoke-static {p3, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method
