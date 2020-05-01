.class Lo/BasicPermission$ActionBar;
.super Lo/Charset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BasicPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field c:Lo/BasicPermission;


# direct methods
.method constructor <init>(Lo/BasicPermission;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Lo/Charset;-><init>()V

    .line 424
    iput-object p1, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)V
    .locals 1

    .line 429
    iget-object p1, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    iget-boolean p1, p1, Lo/BasicPermission;->e:Z

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    invoke-virtual {p1}, Lo/BasicPermission;->start()V

    .line 431
    iget-object p1, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/BasicPermission;->e:Z

    :cond_0
    return-void
.end method

.method public d(Lo/CharsetDecoder;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    iget v1, v0, Lo/BasicPermission;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lo/BasicPermission;->a:I

    .line 438
    iget-object v0, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    iget v0, v0, Lo/BasicPermission;->a:I

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lo/BasicPermission$ActionBar;->c:Lo/BasicPermission;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/BasicPermission;->e:Z

    .line 441
    invoke-virtual {v0}, Lo/BasicPermission;->end()V

    .line 443
    :cond_0
    invoke-virtual {p1, p0}, Lo/CharsetDecoder;->removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    return-void
.end method
