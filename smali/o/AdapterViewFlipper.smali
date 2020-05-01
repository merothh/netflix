.class public abstract Lo/AdapterViewFlipper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AdapterViewFlipper$StateListAnimator;,
        Lo/AdapterViewFlipper$Activity;,
        Lo/AdapterViewFlipper$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lo/AdapterViewFlipper$TaskDescription;

.field private static final e:Landroid/net/Uri;

.field private static final j:Landroid/net/Uri;


# instance fields
.field private final a:Lo/AbsSpinner;

.field private final c:Lo/WebViewUpdateService;

.field private final d:Lo/AnalogClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AnalogClock<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/AdapterViewFlipper$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AdapterViewFlipper$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    const-string v0, "snapchat://creativekit/camera/1"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/AdapterViewFlipper;->e:Landroid/net/Uri;

    const-string v0, "snapchat://creativekit/preview/1"

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lo/AdapterViewFlipper;->j:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lo/AbsSpinner;Lo/WebViewUpdateService;)V
    .locals 1

    const-string v0, "shareUtils"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUtils"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AdapterViewFlipper;->a:Lo/AbsSpinner;

    iput-object p2, p0, Lo/AdapterViewFlipper;->c:Lo/WebViewUpdateService;

    .line 69
    new-instance p1, Lo/AdapterViewFlipper$ActionBar;

    invoke-direct {p1, p0}, Lo/AdapterViewFlipper$ActionBar;-><init>(Lo/AdapterViewFlipper;)V

    check-cast p1, Lo/AnalogClock;

    iput-object p1, p0, Lo/AdapterViewFlipper;->d:Lo/AnalogClock;

    return-void
.end method

.method private final b()Landroid/content/Intent;
    .locals 3

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    sget-object v1, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v1}, Lo/WebViewFactoryProvider$TaskDescription;->h()Lo/WebViewFactoryProvider;

    move-result-object v1

    invoke-virtual {v1}, Lo/WebViewFactoryProvider;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    sget-object v1, Lo/AdapterViewFlipper;->j:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_ID"

    const-string v2, "bf76174f-ae0f-4f8f-a3ab-dec7512bee83"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final synthetic d(Lo/AdapterViewFlipper;)Landroid/content/Intent;
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/AdapterViewFlipper;->b()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lo/AnalogClock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AnalogClock<",
            "TT;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/AdapterViewFlipper;->d:Lo/AnalogClock;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "contentUrl"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "preventIntent"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri.parse(contentUrl).bu\u2026true\").build().toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract b(Lo/Serializable;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected final c()Lo/WebViewUpdateService;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/AdapterViewFlipper;->c:Lo/WebViewUpdateService;

    return-object v0
.end method

.method public abstract d(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lo/AnalogClock;II)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Serializable;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "TT;>;",
            "Lo/AnalogClock<",
            "TT;>;II)",
            "Lio/reactivex/Single<",
            "Lo/AdapterViewFlipper$StateListAnimator;",
            ">;"
        }
    .end annotation
.end method

.method protected final d()Lo/AbsSpinner;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/AdapterViewFlipper;->a:Lo/AbsSpinner;

    return-object v0
.end method
