.class Lo/WebChromeClient$2;
.super Lo/afX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebChromeClient;->setEnterTransition(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WebChromeClient;


# direct methods
.method constructor <init>(Lo/WebChromeClient;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lo/WebChromeClient$2;->a:Lo/WebChromeClient;

    invoke-direct {p0}, Lo/afX;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lo/WebChromeClient$2;->a:Lo/WebChromeClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/WebChromeClient;->c(Lo/WebChromeClient;Z)Z

    return-void
.end method

.method public d(Lo/CharsetDecoder;)V
    .locals 1

    .line 381
    iget-object p1, p0, Lo/WebChromeClient$2;->a:Lo/WebChromeClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/WebChromeClient;->c(Lo/WebChromeClient;Z)Z

    .line 382
    iget-object p1, p0, Lo/WebChromeClient$2;->a:Lo/WebChromeClient;

    invoke-virtual {p1}, Lo/WebChromeClient;->s()V

    return-void
.end method
