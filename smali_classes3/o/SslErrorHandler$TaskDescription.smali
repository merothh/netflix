.class final Lo/SslErrorHandler$TaskDescription;
.super Lo/WebBackForwardList$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SslErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private d:Lo/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/WebBackForwardList$StateListAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/WebBackForwardList;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/WebBackForwardList$StateListAnimator;-><init>()V

    .line 62
    invoke-virtual {p1}, Lo/WebBackForwardList;->a()Lo/ValueCallback;

    move-result-object p1

    iput-object p1, p0, Lo/SslErrorHandler$TaskDescription;->d:Lo/ValueCallback;

    return-void
.end method

.method synthetic constructor <init>(Lo/WebBackForwardList;Lo/SslErrorHandler$3;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lo/SslErrorHandler$TaskDescription;-><init>(Lo/WebBackForwardList;)V

    return-void
.end method


# virtual methods
.method public a()Lo/WebBackForwardList;
    .locals 2

    .line 71
    new-instance v0, Lo/TracingController;

    iget-object v1, p0, Lo/SslErrorHandler$TaskDescription;->d:Lo/ValueCallback;

    invoke-direct {v0, v1}, Lo/TracingController;-><init>(Lo/ValueCallback;)V

    return-object v0
.end method

.method public d(Lo/ValueCallback;)Lo/WebBackForwardList$StateListAnimator;
    .locals 0

    .line 66
    iput-object p1, p0, Lo/SslErrorHandler$TaskDescription;->d:Lo/ValueCallback;

    return-object p0
.end method
