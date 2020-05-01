.class Lo/wO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/wG;

.field private final c:Lorg/chromium/net/RequestFinishedInfo;


# direct methods
.method public constructor <init>(Lo/wG;Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/wO;->a:Lo/wG;

    iput-object p2, p0, Lo/wO;->c:Lorg/chromium/net/RequestFinishedInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/wO;->a:Lo/wG;

    iget-object v1, p0, Lo/wO;->c:Lorg/chromium/net/RequestFinishedInfo;

    invoke-static {v0, v1}, Lo/wG;->c(Lo/wG;Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method
