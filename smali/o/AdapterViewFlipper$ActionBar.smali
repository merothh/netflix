.class public final Lo/AdapterViewFlipper$ActionBar;
.super Lo/AnalogClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterViewFlipper;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnalogClock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/AdapterViewFlipper;

.field private final b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/CharSequence;

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/AdapterViewFlipper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar;->a:Lo/AdapterViewFlipper;

    invoke-direct {p0}, Lo/AnalogClock;-><init>()V

    const-string p1, ""

    .line 70
    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar;->e:Ljava/lang/CharSequence;

    const-string p1, "ShareToSnapchat"

    .line 72
    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar;->d:Ljava/lang/String;

    .line 74
    sget-object p1, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {p1}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object p1

    invoke-virtual {p1}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar;->b:Ljava/lang/String;

    const-string p1, "snc"

    .line 76
    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/AdapterViewFlipper$ActionBar;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;
    .locals 7
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

    .line 82
    iget-object v1, p0, Lo/AdapterViewFlipper$ActionBar;->a:Lo/AdapterViewFlipper;

    .line 85
    move-object v4, p0

    check-cast v4, Lo/AnalogClock;

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adq;->g(Landroid/content/Context;)I

    move-result v5

    .line 87
    invoke-static {v0}, Lo/adq;->i(Landroid/content/Context;)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    .line 82
    invoke-virtual/range {v1 .. v6}, Lo/AdapterViewFlipper;->d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;

    move-result-object p2

    .line 88
    new-instance v0, Lo/AdapterViewFlipper$ActionBar$Activity;

    invoke-direct {v0, p0, p1}, Lo/AdapterViewFlipper$ActionBar$Activity;-><init>(Lo/AdapterViewFlipper$ActionBar;Lo/Serializable;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "buildSnapchatStory(\n    \u2026      }\n                }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/AdapterViewFlipper$ActionBar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lo/AdapterViewFlipper$ActionBar;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public b(Landroid/content/pm/PackageManager;Ljava/util/Map;)Z
    .locals 2
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

    const-string v0, "installedPackages"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v0}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_1

    .line 131
    iget-object p2, p0, Lo/AdapterViewFlipper$ActionBar;->a:Lo/AdapterViewFlipper;

    invoke-static {p2}, Lo/AdapterViewFlipper;->d(Lo/AdapterViewFlipper;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 133
    sget-object p1, Lo/AbsSeekBar;->b:Lo/AbsSeekBar$StateListAnimator;

    invoke-virtual {p1}, Lo/AbsSeekBar$StateListAnimator;->c()Lo/AbsSeekBar;

    move-result-object p1

    sget-object v1, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v1}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object v1

    invoke-virtual {v1}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/AbsSeekBar;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/AdapterViewFlipper$ActionBar;->b(Ljava/lang/CharSequence;)V

    .line 135
    sget-object p1, Lo/AbsSeekBar;->b:Lo/AbsSeekBar$StateListAnimator;

    invoke-virtual {p1}, Lo/AbsSeekBar$StateListAnimator;->c()Lo/AbsSeekBar;

    move-result-object p1

    sget-object v0, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v0}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/AbsSeekBar;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AdapterViewFlipper$ActionBar;->c(Landroid/graphics/drawable/Drawable;)V

    return p2

    :cond_1
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/AdapterViewFlipper$ActionBar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/AdapterViewFlipper$ActionBar;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lo/Serializable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lo/AdapterViewFlipper$ActionBar;->a:Lo/AdapterViewFlipper;

    invoke-virtual {v0, p1, p2}, Lo/AdapterViewFlipper;->b(Lo/Serializable;Ljava/lang/Object;)V

    return-void
.end method
