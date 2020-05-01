.class public Lo/BigInteger;
.super Lo/BasicPermission;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/BasicPermission;-><init>()V

    .line 38
    invoke-direct {p0}, Lo/BigInteger;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lo/BasicPermission;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lo/BigInteger;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lo/BigInteger;->a(I)Lo/BasicPermission;

    .line 48
    new-instance v1, Lo/CharBuffer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lo/CharBuffer;-><init>(I)V

    invoke-virtual {p0, v1}, Lo/BigInteger;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    move-result-object v1

    new-instance v2, Lo/Channel;

    invoke-direct {v2}, Lo/Channel;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    move-result-object v1

    new-instance v2, Lo/CharBuffer;

    invoke-direct {v2, v0}, Lo/CharBuffer;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Lo/BasicPermission;->d(Lo/CharsetDecoder;)Lo/BasicPermission;

    return-void
.end method
