.class public final Lo/ActivityChooserView$Activity;
.super Lo/AnalogClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ActivityChooserView;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
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
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/String;

.field final synthetic d:Lo/ActivityChooserView;

.field private final e:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ActivityChooserView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lo/ActivityChooserView$Activity;->d:Lo/ActivityChooserView;

    invoke-direct {p0}, Lo/AnalogClock;-><init>()V

    const-string p1, "ShareToInstagramStories"

    .line 62
    iput-object p1, p0, Lo/ActivityChooserView$Activity;->b:Ljava/lang/String;

    .line 64
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lo/WebViewProviderResponse$TaskDescription;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "Lookup.get(Context::clas\u2026.share_instagram_stories)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/ActivityChooserView$Activity;->a:Ljava/lang/CharSequence;

    .line 66
    sget-object p1, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {p1}, Lo/WebViewFactoryProvider$TaskDescription;->f()Lo/WebViewFactoryProvider;

    move-result-object p1

    invoke-virtual {p1}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ActivityChooserView$Activity;->e:Ljava/lang/String;

    const-string p1, "igs"

    .line 68
    iput-object p1, p0, Lo/ActivityChooserView$Activity;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/ActivityChooserView$Activity;->a:Ljava/lang/CharSequence;

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

    .line 74
    iget-object v1, p0, Lo/ActivityChooserView$Activity;->d:Lo/ActivityChooserView;

    move-object v4, p0

    check-cast v4, Lo/AnalogClock;

    const/16 v5, 0x2d0

    const/16 v6, 0x500

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lo/ActivityChooserView;->a(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;

    move-result-object p2

    .line 75
    new-instance v0, Lo/ActivityChooserView$Activity$Activity;

    invoke-direct {v0, p1}, Lo/ActivityChooserView$Activity$Activity;-><init>(Lo/Serializable;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "buildInstagramStory(netf\u2026      }\n                }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/ActivityChooserView$Activity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/pm/PackageManager;Ljava/util/Map;)Z
    .locals 3
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

    .line 113
    sget-object v0, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v0}, Lo/WebViewFactoryProvider$TaskDescription;->f()Lo/WebViewFactoryProvider;

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

    .line 114
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "content://com.netflix.mediaclient/anything"

    .line 115
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 120
    sget-object p1, Lo/AbsSeekBar;->b:Lo/AbsSeekBar$StateListAnimator;

    invoke-virtual {p1}, Lo/AbsSeekBar$StateListAnimator;->c()Lo/AbsSeekBar;

    move-result-object p1

    sget-object p2, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {p2}, Lo/WebViewFactoryProvider$TaskDescription;->f()Lo/WebViewFactoryProvider;

    move-result-object p2

    invoke-virtual {p2}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/AbsSeekBar;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ActivityChooserView$Activity;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/ActivityChooserView$Activity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ActivityChooserView$Activity;->i:Ljava/lang/String;

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

    .line 129
    iget-object v0, p0, Lo/ActivityChooserView$Activity;->d:Lo/ActivityChooserView;

    invoke-virtual {v0, p1, p2}, Lo/ActivityChooserView;->c(Lo/Serializable;Ljava/lang/Object;)V

    return-void
.end method
