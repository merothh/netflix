.class public final Lo/LinkAddress;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lo/LinkProperties$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lo/LinkProperties$ActionBar;

    invoke-direct {v0}, Lo/LinkProperties$ActionBar;-><init>()V

    sput-object v0, Lo/LinkAddress;->c:Lo/LinkProperties$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(II)Lo/LinkProperties$Activity;
    .locals 1

    if-ltz p0, :cond_1

    if-lt p1, p0, :cond_0

    .line 55
    new-instance v0, Lo/LinkProperties$Activity;

    invoke-direct {v0, p0, p1}, Lo/LinkProperties$Activity;-><init>(II)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Window end can\'t be less than window start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Window start can\'t be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
