.class public final Lo/WebViewClient$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# static fields
.field static final synthetic c:Lo/WebViewClient$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lo/WebViewClient$StateListAnimator;

    invoke-direct {v0}, Lo/WebViewClient$StateListAnimator;-><init>()V

    sput-object v0, Lo/WebViewClient$StateListAnimator;->c:Lo/WebViewClient$StateListAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e(Lo/WebViewClient$StateListAnimator;Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;ILjava/lang/Object;)Lo/WebViewClient;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 38
    check-cast p4, Lo/WebViewClient;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/WebViewClient$StateListAnimator;->b(Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;)Lo/WebViewClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;)Lo/WebViewClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/WebViewClient$Application;",
            ">(TT;TT;Z",
            "Lo/WebViewClient<",
            "TT;>;)",
            "Lo/WebViewClient<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fromState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toState"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lo/WebViewDelegate;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/WebViewDelegate;-><init>(Lo/WebViewClient$Application;Lo/WebViewClient$Application;ZLo/WebViewClient;)V

    check-cast v0, Lo/WebViewClient;

    return-object v0
.end method
