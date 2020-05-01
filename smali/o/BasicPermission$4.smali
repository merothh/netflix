.class Lo/BasicPermission$4;
.super Lo/Charset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BasicPermission;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/CharsetDecoder;

.field final synthetic c:Lo/BasicPermission;


# direct methods
.method constructor <init>(Lo/BasicPermission;Lo/CharsetDecoder;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lo/BasicPermission$4;->c:Lo/BasicPermission;

    iput-object p2, p0, Lo/BasicPermission$4;->b:Lo/CharsetDecoder;

    invoke-direct {p0}, Lo/Charset;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/CharsetDecoder;)V
    .locals 1

    .line 496
    iget-object v0, p0, Lo/BasicPermission$4;->b:Lo/CharsetDecoder;

    invoke-virtual {v0}, Lo/CharsetDecoder;->runAnimators()V

    .line 497
    invoke-virtual {p1, p0}, Lo/CharsetDecoder;->removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    return-void
.end method
