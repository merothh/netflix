.class Lo/add$StateListAnimator;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/add;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic d:Lo/add;


# direct methods
.method private constructor <init>(Lo/add;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lo/add$StateListAnimator;->d:Lo/add;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/add;Lo/add$2;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lo/add$StateListAnimator;-><init>(Lo/add;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
